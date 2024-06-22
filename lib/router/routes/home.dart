import 'package:flutter/material.dart';
import 'package:github/router/routes/bookmarks.dart';
import 'package:github/router/routes/repository.dart';
import 'package:github/router/routes/search/repositories.dart';
import 'package:github/router/routes/search/search.dart';
import 'package:github/router/routes/search/users.dart';
import 'package:github/router/routes/settings.dart';
import 'package:github/ui/pages/home.dart';
import 'package:go_router/go_router.dart';

part 'home.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<SearchRoute>(
      path: 'search',
      routes: [
        TypedGoRoute<SearchRepositoriesRoute>(path: 'repositories'),
        TypedGoRoute<SearchUsersRoute>(path: 'users'),
      ],
    ),
    TypedGoRoute<BookmarksRoute>(path: 'bookmarks'),
    TypedGoRoute<RepositoryRoute>(path: 'repository'),
    TypedGoRoute<SettingsRoute>(path: 'settings'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: HomePage());
}
