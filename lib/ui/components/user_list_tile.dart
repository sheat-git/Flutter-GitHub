import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/settings.dart';
import 'package:github/services/github/responses/search/items/user.dart';
import 'package:material_symbols_icons/symbols.dart';

class UserListTile extends ConsumerWidget {
  final UserItem user;

  const UserListTile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => ListTile(
        onTap: () => ref.read(settingsProvider.notifier).open(user.htmlUrl),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(user.avatarUrl.toString()),
        ),
        trailing: Icon(
          Symbols.open_in_new,
          size: 16,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        title: Text(user.login),
        subtitle: user.bio != null ? Text(user.bio!) : null,
      );
}
