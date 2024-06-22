import 'package:flutter/material.dart';
import 'package:github/ui/pages/bookmarks.dart';
import 'package:go_router/go_router.dart';

class BookmarksRoute extends GoRouteData {
  const BookmarksRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: BookmarksPage());
}
