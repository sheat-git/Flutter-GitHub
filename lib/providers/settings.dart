import 'dart:async';
import 'dart:io';

import 'package:github/extensions/value_or_null.dart';
import 'package:github/services/database/database.dart';
import 'package:github/services/database/tables/settings.dart' as d;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'settings.g.dart';

// アプリの設定のためkeepAliveで永続化
@Riverpod(keepAlive: true)
class Settings extends _$Settings {
  @override
  SettingsData build() {
    // loadはrunApp前に行っても良いが、起動速度を優先したいため、build後にload
    unawaited(_load());
    return d.Settings.initialRecord;
  }

  Future<void> _load() async {
    final db = ref.read(dbProvider);
    state = await db.settingsDao.get();
  }

  Future<void> set(SettingsCompanion companion) async {
    state = state.copyWith(
      locale: companion.locale.valueOrNull,
      theme: companion.theme.valueOrNull,
      usePureBlackInDarkMode: companion.usePureBlackInDarkMode.valueOrNull,
      useDynamicColor: companion.useDynamicColor.valueOrNull,
      colorScheme: companion.colorScheme.valueOrNull,
      openLinksInExternalBrowser:
          companion.openLinksInExternalBrowser.valueOrNull,
    );
    final db = ref.read(dbProvider);
    await db.settingsDao.set(companion);
  }

  static bool canUseDynamicColor() => Platform.isAndroid;

  Future<bool> open(Uri url) => launchUrl(
        url,
        mode: state.openLinksInExternalBrowser
            ? LaunchMode.externalApplication
            : LaunchMode.inAppBrowserView,
      );
}
