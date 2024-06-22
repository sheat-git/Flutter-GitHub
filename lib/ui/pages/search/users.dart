import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github/providers/search_users.dart';
import 'package:github/services/github/github.dart';
import 'package:github/ui/components/chips_bar.dart';
import 'package:github/ui/components/scroll_pagination.dart';
import 'package:github/ui/components/user_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

class SearchUsersPage extends HookConsumerWidget {
  final String query;

  const SearchUsersPage({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sort = useState(_Sort.bestMatch);

    SearchUsersProvider provider(int index) => searchUsersProvider(
          query: query,
          sort: sort.value.sort,
          order: sort.value.order,
          page: index + 1,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.users),
        bottom: ChipsBar(children: [_buildSortChip(context, sort)]),
      ),
      body: ScrollPagination(
        provider: provider,
        future: (index) => provider(index).future,
        onRetry: (index) => ref.read(provider(index).notifier).reload(),
        itemBuilder: (context, item) => UserListTile(user: item),
      ),
    );
  }

  Widget _buildSortChip(
    BuildContext context,
    ValueNotifier<_Sort> sort,
  ) =>
      MenuAnchor(
        menuChildren: _Sort.values
            .map(
              (value) => MenuItemButton(
                onPressed: () => sort.value = value,
                leadingIcon: Icon(
                  value == sort.value ? Icons.check : null,
                  size: 16,
                ),
                child: Text(value.localize(context)),
              ),
            )
            .toList(),
        builder: (context, controller, _) => ActionChip(
          onPressed: () =>
              controller.isOpen ? controller.close() : controller.open(),
          avatar: const Icon(Symbols.sort),
          visualDensity: VisualDensity.compact,
          label: Text(sort.value.localize(context)),
        ),
      );
}

enum _Sort {
  bestMatch(SearchUsersSort.bestMatch, SearchOrder.desc),
  mostFollowers(SearchUsersSort.followers, SearchOrder.desc),
  fewestFollowers(SearchUsersSort.followers, SearchOrder.asc),
  mostRecentlyJoined(SearchUsersSort.joined, SearchOrder.desc),
  leastRecentlyJoined(SearchUsersSort.joined, SearchOrder.asc),
  mostRepositories(SearchUsersSort.repositories, SearchOrder.desc),
  fewestRepositories(SearchUsersSort.repositories, SearchOrder.asc);

  final SearchUsersSort sort;
  final SearchOrder order;

  const _Sort(this.sort, this.order);

  String localize(BuildContext context) => switch (this) {
        _Sort.bestMatch => AppLocalizations.of(context)!.bestMatch,
        _Sort.mostFollowers => AppLocalizations.of(context)!.mostFollowers,
        _Sort.fewestFollowers => AppLocalizations.of(context)!.fewestFollowers,
        _Sort.mostRecentlyJoined =>
          AppLocalizations.of(context)!.mostRecentlyJoined,
        _Sort.leastRecentlyJoined =>
          AppLocalizations.of(context)!.leastRecentlyJoined,
        _Sort.mostRepositories =>
          AppLocalizations.of(context)!.mostRepositories,
        _Sort.fewestRepositories =>
          AppLocalizations.of(context)!.fewestRepositories,
      };
}
