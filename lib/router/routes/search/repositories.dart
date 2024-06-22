import 'package:flutter/material.dart';
import 'package:github/ui/pages/search/repositories.dart';
import 'package:go_router/go_router.dart';

class SearchRepositoriesRoute extends GoRouteData {
  final String query;

  const SearchRepositoriesRoute({
    required this.query,
  });

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(child: SearchRepositoriesPage(query: query));
}
