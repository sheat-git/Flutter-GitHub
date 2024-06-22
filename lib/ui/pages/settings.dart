import 'dart:math';

import 'package:drift/drift.dart' show Value;
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/providers/settings.dart';
import 'package:github/services/database/database.dart';
import 'package:github/services/database/tables/settings.dart' hide Settings;
import 'package:github/ui/components/list_item.dart';
import 'package:material_symbols_icons/symbols.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: ListView(children: [
        // 言語
        ListTile(
          title: Text(AppLocalizations.of(context)!.language),
          trailing: MenuAnchor(
            menuChildren: LocaleSetting.values
                .map(
                  (locale) => MenuItemButton(
                    onPressed: () => ref
                        .read(settingsProvider.notifier)
                        .set(SettingsCompanion(locale: Value(locale))),
                    leadingIcon: Icon(
                      locale == settings.locale ? Symbols.check : null,
                      size: 16,
                    ),
                    child: Text(locale.localize(context)),
                  ),
                )
                .toList(),
            builder: (context, controller, _) => TextButton(
              onPressed: () =>
                  controller.isOpen ? controller.close() : controller.open(),
              child: Text(settings.locale.localize(context)),
            ),
          ),
        ),

        // テーマ
        ListTile(
          title: Text(AppLocalizations.of(context)!.theme),
          trailing: MenuAnchor(
            menuChildren: ThemeSetting.values
                .map(
                  (theme) => MenuItemButton(
                    onPressed: () => ref
                        .read(settingsProvider.notifier)
                        .set(SettingsCompanion(theme: Value(theme))),
                    leadingIcon: Icon(
                      theme == settings.theme ? Symbols.check : null,
                      size: 16,
                    ),
                    child: Text(theme.localize(context)),
                  ),
                )
                .toList(),
            builder: (context, controller, _) => TextButton(
              onPressed: () =>
                  controller.isOpen ? controller.close() : controller.open(),
              child: Text(settings.theme.localize(context)),
            ),
          ),
        ),

        // ダークモードで真っ黒を使用
        ListTile(
          title: Text(AppLocalizations.of(context)!.pureBlack),
          subtitle: Text(AppLocalizations.of(context)!.pureBlackDescription),
          trailing: Switch(
            value: settings.usePureBlackInDarkMode,
            onChanged: (value) => ref
                .read(settingsProvider.notifier)
                .set(SettingsCompanion(usePureBlackInDarkMode: Value(value))),
          ),
        ),

        // ダイナミックカラーを使用
        if (Settings.canUseDynamicColor())
          ListTile(
            title: Text(AppLocalizations.of(context)!.dynamicColor),
            trailing: Switch(
              value: settings.useDynamicColor,
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .set(SettingsCompanion(useDynamicColor: Value(value))),
            ),
          ),

        // カラースキーム
        SizedBox(
          height: Theme.of(context).listTileTheme.minVerticalPadding ?? 8,
        ),
        ListItem(
          child: Text(
            AppLocalizations.of(context)!.colorScheme,
            style: Theme.of(context).listTileTheme.titleTextStyle ??
                Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
        _buildColorSchemeChoices(context, ref, settings),
        SizedBox(
          height: Theme.of(context).listTileTheme.minVerticalPadding ?? 8,
        ),

        // リンクを外部ブラウザで開く
        ListTile(
          title: Text(AppLocalizations.of(context)!.openLinksInExternalBrowser),
          trailing: Switch(
            value: settings.openLinksInExternalBrowser,
            onChanged: (value) => ref.read(settingsProvider.notifier).set(
                SettingsCompanion(openLinksInExternalBrowser: Value(value))),
          ),
        ),

        // ライセンス
        ListTile(
          onTap: () => showLicensePage(context: context),
          title: Text(AppLocalizations.of(context)!.license),
          trailing: const Icon(Symbols.navigate_next),
        ),
      ]),
    );
  }

  Widget _buildColorSchemeChoices(
    BuildContext context,
    WidgetRef ref,
    SettingsData settings,
  ) =>
      SizedBox(
        height: 73,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            // 左右はListTileと同様のpadding
            left: max(16, MediaQuery.viewPaddingOf(context).left),
            right: max(16, MediaQuery.viewPaddingOf(context).right),
            top: 4,
            bottom: 4,
          ),
          itemCount: ColorSchemeSetting.values.length,
          // 間隔は8
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            final scheme = ColorSchemeSetting.values[index];
            final flexScheme = switch (Theme.of(context).brightness) {
              Brightness.light => scheme.data.light,
              Brightness.dark => scheme.data.dark,
            };
            final child = GestureDetector(
              onTap: () {
                ref.read(settingsProvider.notifier).set(SettingsCompanion(
                      useDynamicColor: const Value(false),
                      colorScheme: Value(scheme),
                    ));
              },
              child: Column(children: [
                Row(children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(8)),
                      color: flexScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 1),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.only(topRight: Radius.circular(8)),
                      color: flexScheme.primaryContainer,
                    ),
                  ),
                ]),
                const SizedBox(height: 1),
                Row(children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8)),
                      color: flexScheme.secondary,
                    ),
                  ),
                  const SizedBox(width: 1),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8)),
                      color: flexScheme.secondaryContainer,
                    ),
                  ),
                ]),
              ]),
            );
            // ダイナミックカラーを使用しているときは枠線を表示しない
            if (settings.useDynamicColor || scheme != settings.colorScheme) {
              return child;
            }
            return Stack(children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onBackground,
                    width: 2,
                  ),
                ),
                position: DecorationPosition.foreground,
                child: child,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Icon(
                  Icons.check,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ]);
          },
        ),
      );
}

extension _LocalizaLocaleSetting on LocaleSetting {
  String localize(BuildContext context) => switch (this) {
        LocaleSetting.system => AppLocalizations.of(context)!.system,
        LocaleSetting.en => 'English',
        LocaleSetting.ja => '日本語',
      };
}

extension _LocalizeThemeSetting on ThemeSetting {
  String localize(BuildContext context) => switch (this) {
        ThemeSetting.system => AppLocalizations.of(context)!.system,
        ThemeSetting.light => AppLocalizations.of(context)!.light,
        ThemeSetting.dark => AppLocalizations.of(context)!.dark,
      };
}
