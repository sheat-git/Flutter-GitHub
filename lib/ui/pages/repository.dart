import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/language.dart';
import 'package:github/providers/repository.dart';
import 'package:github/providers/settings.dart';
import 'package:github/ui/components/error_body.dart';
import 'package:github/ui/components/list_item.dart';
import 'package:github/ui/components/loading_body.dart';
import 'package:github/ui/components/repository_bookmark_button.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

class RepositoryPage extends ConsumerWidget {
  final int? id;
  final String? owner;
  final String? name;

  const RepositoryPage({
    super.key,
    this.id,
    this.owner,
    this.name,
  }) : assert(id != null || (owner != null && name != null));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = repositoryProvider(id: id, owner: owner, repository: name);
    final repository = ref.watch(provider);

    return repository.when(
      data: (repository) => Scaffold(
        appBar: AppBar(
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(repository.name),
          ),
          actions: [RepositoryBookmarkButton(id: repository.id)],
        ),
        body: RefreshIndicator(
          onRefresh: () => ref.refresh(provider.future),
          child: ListView(children: [
            // owner情報（アイコンと名前）
            ListItem(
              child: GestureDetector(
                onTap: () => ref
                    .read(settingsProvider.notifier)
                    .open(repository.owner.htmlUrl),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      repository.owner.avatarUrl.toString(),
                      width: 24,
                      height: 24,
                      semanticLabel: '${repository.owner.login}\'s avatar',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    repository.owner.login,
                    overflow: TextOverflow.ellipsis,
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 12),

            // リポジトリ名
            ListItem(
              child: GestureDetector(
                onTap: () => ref
                    .read(settingsProvider.notifier)
                    .open(repository.htmlUrl),
                child: Text(
                  repository.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // 説明
            if (repository.description != null) ...[
              ListItem(child: Text(repository.description!)),
              const SizedBox(height: 12),
            ],

            // スター・フォーク・言語
            ListItem(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 16,
                children: [
                  // スター
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => ref.read(settingsProvider.notifier).open(
                          repository.htmlUrl.replace(pathSegments: [
                            ...repository.htmlUrl.pathSegments,
                            'stargazers',
                          ]),
                        ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Symbols.star, size: 16),
                        const SizedBox(width: 4),
                        Text(NumberFormat.compact()
                            .format(repository.stargazersCount)),
                      ],
                    ),
                  ),
                  // フォーク
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () => ref.read(settingsProvider.notifier).open(
                          repository.htmlUrl.replace(pathSegments: [
                            ...repository.htmlUrl.pathSegments,
                            'forks',
                          ]),
                        ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.fork_right, size: 16),
                        const SizedBox(width: 4),
                        Text(NumberFormat.compact()
                            .format(repository.forksCount)),
                      ],
                    ),
                  ),
                  // 言語
                  if (repository.language != null)
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: ref
                                    .watch(
                                        languageProvider(repository.language!))
                                    ?.color
                                    .toColor ??
                                const Color(0xFFCCCCCC),
                            shape: BoxShape.circle,
                          ),
                          child: const SizedBox.square(dimension: 12),
                        ),
                        const SizedBox(width: 4),
                        Text(repository.language!),
                      ],
                    ),
                ],
              ),
            ),

            // issue
            ListTile(
              onTap: () => ref
                  .read(settingsProvider.notifier)
                  .open(repository.htmlUrl.replace(pathSegments: [
                    ...repository.htmlUrl.pathSegments,
                    'issues',
                  ])),
              title: Text(AppLocalizations.of(context)!.issues),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(NumberFormat.decimalPattern()
                      .format(repository.openIssuesCount)),
                  const SizedBox(width: 8),
                  const Icon(Symbols.open_in_new, size: 16),
                ],
              ),
            ),

            // watchers
            ListTile(
              onTap: () => ref
                  .read(settingsProvider.notifier)
                  .open(repository.htmlUrl.replace(pathSegments: [
                    ...repository.htmlUrl.pathSegments,
                    'watchers',
                  ])),
              title: Text(AppLocalizations.of(context)!.watchers),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(NumberFormat.decimalPattern()
                      .format(repository.subscribersCount)),
                  const SizedBox(width: 8),
                  const Icon(Symbols.open_in_new, size: 16),
                ],
              ),
            ),
          ]),
        ),
      ),
      error: (error, _) => Scaffold(
        appBar: AppBar(forceMaterialTransparency: true),
        body: ErrorBody(
          error: error,
          onRetry: () => ref.read(provider.notifier).reload(),
        ),
      ),
      loading: () => Scaffold(
        appBar: AppBar(forceMaterialTransparency: true),
        body: const LoadingBody(),
      ),
    );
  }
}
