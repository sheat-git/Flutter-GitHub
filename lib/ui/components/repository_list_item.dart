import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/language.dart';
import 'package:github/router/routes/home.dart';
import 'package:github/router/routes/repository.dart';
import 'package:github/ui/components/list_item.dart';
import 'package:github/ui/components/repository_bookmark_button.dart';
import 'package:material_symbols_icons/symbols.dart';

class RepositoryListItem extends ConsumerWidget {
  // ブックマークで使用
  final int? id;
  final String? owner;
  final String? ownerAvatarUrl;
  final String name;
  final String? description;
  // トレンドのページでは数値での表示ではないためString
  final String stars;
  final String? language;
  final String? languageColor;

  const RepositoryListItem({
    super.key,
    this.id,
    this.owner,
    this.ownerAvatarUrl,
    required this.name,
    this.description,
    required this.stars,
    this.language,
    this.languageColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => InkWell(
        onTap: id != null || owner != null
            ? () =>
                RepositoryRoute(id: id, owner: owner, name: name).push(context)
            // idもownerも不明な場合は遷移できない
            : null,
        child: ListItem(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // owner情報（アイコンと名前）
                        if (owner != null) ...[
                          Row(children: [
                            if (ownerAvatarUrl != null) ...[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  ownerAvatarUrl!,
                                  width: 24,
                                  height: 24,
                                  semanticLabel: '$owner\'s avatar',
                                ),
                              ),
                              const SizedBox(width: 8),
                            ],
                            Expanded(
                              child: Text(
                                owner!,
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ]),
                          const SizedBox(height: 4),
                        ],

                        // リポジトリ名
                        Text(
                          name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),

                  // ブックマークボタン
                  if (id != null) RepositoryBookmarkButton(id: id!),
                ]),

                // 説明文
                if (description != null && description!.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    description!,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                const SizedBox(height: 8),

                // スターと言語
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  children: [
                    // スター
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Symbols.star,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          stars,
                          style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),

                    // 言語
                    if (language != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: languageColor?.toColor ??
                                  ref
                                      .watch(languageProvider(language!))
                                      ?.color
                                      .toColor ??
                                  const Color(0xFFCCCCCC),
                              shape: BoxShape.circle,
                            ),
                            child: const SizedBox.square(dimension: 12),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            language!,
                            style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
