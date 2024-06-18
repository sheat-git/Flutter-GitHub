import 'package:flutter/material.dart';
import 'package:github/ui/pages/repository.dart';
import 'package:go_router/go_router.dart';

class RepositoryRoute extends GoRouteData {
  final int? id;
  final String? owner;
  final String? name;

  const RepositoryRoute({
    this.id,
    this.owner,
    this.name,
  }) : assert(id != null || (owner != null && name != null));

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(child: RepositoryPage(id: id, owner: owner, name: name));
}
