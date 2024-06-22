import 'package:flutter/material.dart';
import 'package:github/ui/pages/search/search.dart';
import 'package:go_router/go_router.dart';

class SearchRoute extends GoRouteData {
  final String query;

  const SearchRoute({
    required this.query,
  });

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(child: SearchPage(query: query));
}
