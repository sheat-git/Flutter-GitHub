// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'search',
          factory: $SearchRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'repositories',
              factory: $SearchRepositoriesRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'users',
              factory: $SearchUsersRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'bookmarks',
          factory: $BookmarksRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'repository',
          factory: $RepositoryRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'settings',
          factory: $SettingsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => SearchRoute(
        query: state.uri.queryParameters['query']!,
      );

  String get location => GoRouteData.$location(
        '/search',
        queryParams: {
          'query': query,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRepositoriesRouteExtension on SearchRepositoriesRoute {
  static SearchRepositoriesRoute _fromState(GoRouterState state) =>
      SearchRepositoriesRoute(
        query: state.uri.queryParameters['query']!,
      );

  String get location => GoRouteData.$location(
        '/search/repositories',
        queryParams: {
          'query': query,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchUsersRouteExtension on SearchUsersRoute {
  static SearchUsersRoute _fromState(GoRouterState state) => SearchUsersRoute(
        query: state.uri.queryParameters['query']!,
      );

  String get location => GoRouteData.$location(
        '/search/users',
        queryParams: {
          'query': query,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BookmarksRouteExtension on BookmarksRoute {
  static BookmarksRoute _fromState(GoRouterState state) =>
      const BookmarksRoute();

  String get location => GoRouteData.$location(
        '/bookmarks',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RepositoryRouteExtension on RepositoryRoute {
  static RepositoryRoute _fromState(GoRouterState state) => RepositoryRoute(
        id: _$convertMapValue('id', state.uri.queryParameters, int.parse),
        owner: state.uri.queryParameters['owner'],
        name: state.uri.queryParameters['name'],
      );

  String get location => GoRouteData.$location(
        '/repository',
        queryParams: {
          if (id != null) 'id': id!.toString(),
          if (owner != null) 'owner': owner,
          if (name != null) 'name': name,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
