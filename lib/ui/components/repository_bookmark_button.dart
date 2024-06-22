import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/repository_bookmark.dart';
import 'package:material_symbols_icons/symbols.dart';

class RepositoryBookmarkButton extends ConsumerWidget {
  final int id;

  const RepositoryBookmarkButton({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = repositoryBookmarkProvider(id);
    final state = ref.watch(repositoryBookmarkProvider(id));

    return state.maybeWhen(
      data: (bookmark) => IconButton(
        onPressed: () => bookmark != null
            ? ref.read(provider.notifier).remove()
            : ref.read(provider.notifier).add(),
        color: Theme.of(context).colorScheme.primary,
        icon: Icon(
          bookmark != null ? Symbols.bookmark_remove : Symbols.bookmark_add,
          fill: bookmark != null ? 1 : 0,
          semanticLabel: bookmark != null ? 'Remove bookmark' : 'Add bookmark',
        ),
      ),
      orElse: () => const IconButton(
        onPressed: null,
        icon: Icon(Symbols.bookmark),
      ),
    );
  }
}
