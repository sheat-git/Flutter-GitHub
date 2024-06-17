import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:github/services/database/database.dart';

@DataClassName('SettingsData')
class Settings extends Table {
  TextColumn get locale => textEnum<LocaleSetting>()();
  TextColumn get theme => textEnum<ThemeSetting>()();
  BoolColumn get usePureBlackInDarkMode => boolean()();
  BoolColumn get useDynamicColor => boolean()();
  TextColumn get colorScheme => textEnum<ColorSchemeSetting>()();
  BoolColumn get openLinksInExternalBrowser => boolean()();

  static final initialRecord = SettingsData(
    locale: LocaleSetting.system,
    theme: ThemeSetting.system,
    usePureBlackInDarkMode: false,
    useDynamicColor: Platform.isAndroid,
    colorScheme: ColorSchemeSetting.material,
    openLinksInExternalBrowser: false,
  );
}

enum LocaleSetting {
  system,
  en,
  ja,
}

enum ThemeSetting {
  system,
  light,
  dark,
}

// FlexSchemeとFlexColor.shemesでできることと同じ
// dbで保存するため、ライブラリのアップデートで値が変わらないよう再定義
enum ColorSchemeSetting {
  material,
  materialHc,
  blue,
  indigo,
  hippieBlue,
  aquaBlue,
  brandBlue,
  deepBlue,
  sakura,
  mandyRed,
  red,
  redWine,
  purpleBrown,
  green,
  money,
  jungle,
  greyLaw,
  wasabi,
  gold,
  mango,
  amber,
  vesuviusBurn,
  deepPurple,
  ebonyClay,
  barossa,
  shark,
  bigStone,
  damask,
  bahamaBlue,
  mallardGreen,
  espresso,
  outerSpace,
  blueWhale,
  sanJuanBlue,
  rosewood,
  blumineBlue,
  flutterDash,
  materialBaseline,
  verdunHemlock,
  dellGenoa,
  redM3,
  pinkM3,
  purpleM3,
  indigoM3,
  blueM3,
  cyanM3,
  tealM3,
  greenM3,
  limeM3,
  yellowM3,
  orangeM3,
  deepOrangeM3;

  FlexSchemeData get data => switch (this) {
        ColorSchemeSetting.material => FlexColor.material,
        ColorSchemeSetting.materialHc => FlexColor.materialHc,
        ColorSchemeSetting.blue => FlexColor.blue,
        ColorSchemeSetting.indigo => FlexColor.indigo,
        ColorSchemeSetting.hippieBlue => FlexColor.hippieBlue,
        ColorSchemeSetting.aquaBlue => FlexColor.aquaBlue,
        ColorSchemeSetting.brandBlue => FlexColor.brandBlue,
        ColorSchemeSetting.deepBlue => FlexColor.deepBlue,
        ColorSchemeSetting.sakura => FlexColor.sakura,
        ColorSchemeSetting.mandyRed => FlexColor.mandyRed,
        ColorSchemeSetting.red => FlexColor.red,
        ColorSchemeSetting.redWine => FlexColor.redWine,
        ColorSchemeSetting.purpleBrown => FlexColor.purpleBrown,
        ColorSchemeSetting.green => FlexColor.green,
        ColorSchemeSetting.money => FlexColor.money,
        ColorSchemeSetting.jungle => FlexColor.jungle,
        ColorSchemeSetting.greyLaw => FlexColor.greyLaw,
        ColorSchemeSetting.wasabi => FlexColor.wasabi,
        ColorSchemeSetting.gold => FlexColor.gold,
        ColorSchemeSetting.mango => FlexColor.mango,
        ColorSchemeSetting.amber => FlexColor.amber,
        ColorSchemeSetting.vesuviusBurn => FlexColor.vesuviusBurn,
        ColorSchemeSetting.deepPurple => FlexColor.deepPurple,
        ColorSchemeSetting.ebonyClay => FlexColor.ebonyClay,
        ColorSchemeSetting.barossa => FlexColor.barossa,
        ColorSchemeSetting.shark => FlexColor.shark,
        ColorSchemeSetting.bigStone => FlexColor.bigStone,
        ColorSchemeSetting.damask => FlexColor.damask,
        ColorSchemeSetting.bahamaBlue => FlexColor.bahamaBlue,
        ColorSchemeSetting.mallardGreen => FlexColor.mallardGreen,
        ColorSchemeSetting.espresso => FlexColor.espresso,
        ColorSchemeSetting.outerSpace => FlexColor.outerSpace,
        ColorSchemeSetting.blueWhale => FlexColor.blueWhale,
        ColorSchemeSetting.sanJuanBlue => FlexColor.sanJuanBlue,
        ColorSchemeSetting.rosewood => FlexColor.rosewood,
        ColorSchemeSetting.blumineBlue => FlexColor.blumineBlue,
        ColorSchemeSetting.flutterDash => FlexColor.flutterDash,
        ColorSchemeSetting.materialBaseline => FlexColor.materialBaseline,
        ColorSchemeSetting.verdunHemlock => FlexColor.verdunHemlock,
        ColorSchemeSetting.dellGenoa => FlexColor.dellGenoa,
        ColorSchemeSetting.redM3 => FlexColor.redM3,
        ColorSchemeSetting.pinkM3 => FlexColor.pinkM3,
        ColorSchemeSetting.purpleM3 => FlexColor.purpleM3,
        ColorSchemeSetting.indigoM3 => FlexColor.indigoM3,
        ColorSchemeSetting.blueM3 => FlexColor.blueM3,
        ColorSchemeSetting.cyanM3 => FlexColor.cyanM3,
        ColorSchemeSetting.tealM3 => FlexColor.tealM3,
        ColorSchemeSetting.greenM3 => FlexColor.greenM3,
        ColorSchemeSetting.limeM3 => FlexColor.limeM3,
        ColorSchemeSetting.yellowM3 => FlexColor.yellowM3,
        ColorSchemeSetting.orangeM3 => FlexColor.orangeM3,
        ColorSchemeSetting.deepOrangeM3 => FlexColor.deepOrangeM3,
      };
}
