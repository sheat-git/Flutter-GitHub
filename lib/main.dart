import 'package:dynamic_color/dynamic_color.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/settings.dart';
import 'package:github/router/router.dart';
import 'package:github/services/database/tables/settings.dart' hide Settings;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: GithubApp()));
}

class GithubApp extends StatelessWidget {
  const GithubApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget builder(ColorScheme? lightDynamic, ColorScheme? darkDynamic) =>
        Consumer(
          builder: (context, ref, _) {
            final usePureBlackInDarkMode = ref.watch(
                settingsProvider.select((s) => s.usePureBlackInDarkMode));
            final ThemeData lightTheme;
            final ThemeData darkTheme;
            if (ref.watch(settingsProvider.select((s) => s.useDynamicColor))) {
              lightTheme = FlexThemeData.light(
                useMaterial3: true,
                colorScheme: lightDynamic,
              );
              darkTheme = FlexThemeData.dark(
                useMaterial3: true,
                colorScheme: darkDynamic,
                darkIsTrueBlack: usePureBlackInDarkMode,
              );
            } else {
              final scheme =
                  ref.watch(settingsProvider.select((s) => s.colorScheme.data));
              lightTheme = FlexThemeData.light(
                useMaterial3: true,
                colors: scheme.light,
              );
              darkTheme = FlexThemeData.dark(
                useMaterial3: true,
                colors: scheme.dark,
                darkIsTrueBlack: usePureBlackInDarkMode,
              );
            }

            return MaterialApp.router(
              locale: switch (
                  ref.watch(settingsProvider.select((s) => s.locale))) {
                LocaleSetting.system => null,
                LocaleSetting.en => const Locale('en'),
                LocaleSetting.ja => const Locale('ja'),
              },
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              themeMode: switch (
                  ref.watch(settingsProvider.select((s) => s.theme))) {
                ThemeSetting.system => ThemeMode.system,
                ThemeSetting.light => ThemeMode.light,
                ThemeSetting.dark => ThemeMode.dark,
              },
              theme: lightTheme,
              darkTheme: darkTheme,
              routerConfig: ref.watch(goRouterProvider),
            );
          },
        );

    if (Settings.canUseDynamicColor()) {
      return DynamicColorBuilder(builder: builder);
    } else {
      return builder(null, null);
    }
  }
}
