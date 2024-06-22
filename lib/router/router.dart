import 'package:github/router/routes/home.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef _) => GoRouter(
      initialLocation: const HomeRoute().location,
      routes: $appRoutes,
    );
