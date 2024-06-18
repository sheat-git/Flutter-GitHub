import 'package:flutter/material.dart';
import 'package:github/ui/pages/settings.dart';
import 'package:go_router/go_router.dart';

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(child: SettingsPage());
}
