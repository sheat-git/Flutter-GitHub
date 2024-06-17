import 'package:drift/drift.dart';
import 'package:github/services/database/database.dart';
import 'package:github/services/database/tables/settings.dart';

part 'settings.g.dart';

@DriftAccessor(tables: [Settings])
class SettingsDao extends DatabaseAccessor<Database> with _$SettingsDaoMixin {
  SettingsDao(super.db);

  Future<SettingsData> get() => select(settings).getSingle();

  Future<void> set(SettingsCompanion settingsCompanion) =>
      update(settings).write(settingsCompanion);
}
