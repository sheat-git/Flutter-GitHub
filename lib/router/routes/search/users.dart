import 'package:flutter/material.dart';
import 'package:github/ui/pages/search/users.dart';
import 'package:go_router/go_router.dart';

class SearchUsersRoute extends GoRouteData {
  final String query;

  const SearchUsersRoute({
    required this.query,
  });

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(child: SearchUsersPage(query: query));
}
