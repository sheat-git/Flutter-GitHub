import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github/ui/components/error_body.dart';
import 'package:github/ui/components/error_view.dart';
import 'package:github/ui/components/list_item.dart';
import 'package:github/ui/components/loading_body.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScrollPagination<T> extends HookConsumerWidget {
  final ProviderBase<AsyncValue<List<T>>> Function(int index) provider;
  // providerをAsyncSelector型で受け取れたら必要ない
  final Refreshable<Future> Function(int index) future;
  final void Function(int index)? onRetry;
  final Future<void> Function(int maxIndex)? onRefresh;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final Widget Function(BuildContext context)? emptyBuilder;

  const ScrollPagination({
    super.key,
    required this.provider,
    required this.future,
    this.onRetry,
    this.onRefresh,
    required this.itemBuilder,
    this.emptyBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = useState(1);

    // ListViewのitemBuilderの外でwatchしておかないと、破棄される
    final values = List.generate(
      page.value,
      (index) => ref.watch(provider(index)),
      growable: false,
    );

    // 最初の値がないときは、ローディングやエラーを真ん中に表示
    if (!values.first.hasValue) {
      final widget = values.first.whenOrNull(
        error: (error, _) => ErrorBody(
          error: error,
          onRetry: onRetry != null ? () => onRetry!(0) : null,
        ),
        loading: () => const LoadingBody(),
      );
      if (widget != null) return widget;
    }

    // 値があっても、空のときはemptyBuilderを表示
    if (values.first.hasValue &&
        values.first.requireValue.isEmpty &&
        emptyBuilder != null) {
      return emptyBuilder!(context);
    }

    return RefreshIndicator(
      onRefresh: () {
        final oldPage = page.value;
        // pageを1に戻す
        page.value = 1;
        if (onRefresh != null) {
          return onRefresh!(oldPage - 1);
        } else {
          // i=0以外のproviderは削除
          for (int i = 1; i < oldPage; i++) {
            ref.invalidate(provider(i));
          }
          // i=0のproviderをリフレッシュ
          // こうすることで、必要最低限のFutureを返せる
          return ref.refresh(future(0));
        }
      },
      child: ListView.builder(
        itemCount: page.value,
        itemBuilder: (context, i) {
          final value = values[i];

          return value.when(
            data: (items) => ListView.builder(
              // ListViewのnest用
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, j) {
                // 最後のリストアイテムに到達したらpageを増やす
                if (i == page.value - 1 && j == items.length - 1) {
                  // Widgetの更新中に呼んでいるため、addPostFrameCallbackを使ってエラー回避
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    page.value++;
                  });
                }

                return itemBuilder(context, items[j]);
              },
            ),
            error: (error, _) => ListItem(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: ErrorView(
                  error: error,
                  onRetry: onRetry != null ? () => onRetry!(i) : null,
                ),
              ),
            ),
            loading: () => const ListItem(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          );
        },
      ),
    );
  }
}
