// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $RepositoryBookmarksTable extends RepositoryBookmarks
    with TableInfo<$RepositoryBookmarksTable, RepositoryBookmark> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RepositoryBookmarksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _addedAtMeta =
      const VerificationMeta('addedAt');
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
      'added_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, addedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'repository_bookmarks';
  @override
  VerificationContext validateIntegrity(Insertable<RepositoryBookmark> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('added_at')) {
      context.handle(_addedAtMeta,
          addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RepositoryBookmark map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RepositoryBookmark(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      addedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}added_at'])!,
    );
  }

  @override
  $RepositoryBookmarksTable createAlias(String alias) {
    return $RepositoryBookmarksTable(attachedDatabase, alias);
  }
}

class RepositoryBookmark extends DataClass
    implements Insertable<RepositoryBookmark> {
  final int id;
  final DateTime addedAt;
  const RepositoryBookmark({required this.id, required this.addedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  RepositoryBookmarksCompanion toCompanion(bool nullToAbsent) {
    return RepositoryBookmarksCompanion(
      id: Value(id),
      addedAt: Value(addedAt),
    );
  }

  factory RepositoryBookmark.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RepositoryBookmark(
      id: serializer.fromJson<int>(json['id']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  RepositoryBookmark copyWith({int? id, DateTime? addedAt}) =>
      RepositoryBookmark(
        id: id ?? this.id,
        addedAt: addedAt ?? this.addedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RepositoryBookmark(')
          ..write('id: $id, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RepositoryBookmark &&
          other.id == this.id &&
          other.addedAt == this.addedAt);
}

class RepositoryBookmarksCompanion extends UpdateCompanion<RepositoryBookmark> {
  final Value<int> id;
  final Value<DateTime> addedAt;
  const RepositoryBookmarksCompanion({
    this.id = const Value.absent(),
    this.addedAt = const Value.absent(),
  });
  RepositoryBookmarksCompanion.insert({
    this.id = const Value.absent(),
    required DateTime addedAt,
  }) : addedAt = Value(addedAt);
  static Insertable<RepositoryBookmark> custom({
    Expression<int>? id,
    Expression<DateTime>? addedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (addedAt != null) 'added_at': addedAt,
    });
  }

  RepositoryBookmarksCompanion copyWith(
      {Value<int>? id, Value<DateTime>? addedAt}) {
    return RepositoryBookmarksCompanion(
      id: id ?? this.id,
      addedAt: addedAt ?? this.addedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RepositoryBookmarksCompanion(')
          ..write('id: $id, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }
}

class $SearchHistoriesTable extends SearchHistories
    with TableInfo<$SearchHistoriesTable, SearchHistory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SearchHistoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _queryMeta = const VerificationMeta('query');
  @override
  late final GeneratedColumn<String> query = GeneratedColumn<String>(
      'query', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, query];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'search_histories';
  @override
  VerificationContext validateIntegrity(Insertable<SearchHistory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('query')) {
      context.handle(
          _queryMeta, query.isAcceptableOrUnknown(data['query']!, _queryMeta));
    } else if (isInserting) {
      context.missing(_queryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SearchHistory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchHistory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      query: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}query'])!,
    );
  }

  @override
  $SearchHistoriesTable createAlias(String alias) {
    return $SearchHistoriesTable(attachedDatabase, alias);
  }
}

class SearchHistory extends DataClass implements Insertable<SearchHistory> {
  final int id;
  final String query;
  const SearchHistory({required this.id, required this.query});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['query'] = Variable<String>(query);
    return map;
  }

  SearchHistoriesCompanion toCompanion(bool nullToAbsent) {
    return SearchHistoriesCompanion(
      id: Value(id),
      query: Value(query),
    );
  }

  factory SearchHistory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchHistory(
      id: serializer.fromJson<int>(json['id']),
      query: serializer.fromJson<String>(json['query']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'query': serializer.toJson<String>(query),
    };
  }

  SearchHistory copyWith({int? id, String? query}) => SearchHistory(
        id: id ?? this.id,
        query: query ?? this.query,
      );
  @override
  String toString() {
    return (StringBuffer('SearchHistory(')
          ..write('id: $id, ')
          ..write('query: $query')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, query);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchHistory &&
          other.id == this.id &&
          other.query == this.query);
}

class SearchHistoriesCompanion extends UpdateCompanion<SearchHistory> {
  final Value<int> id;
  final Value<String> query;
  const SearchHistoriesCompanion({
    this.id = const Value.absent(),
    this.query = const Value.absent(),
  });
  SearchHistoriesCompanion.insert({
    this.id = const Value.absent(),
    required String query,
  }) : query = Value(query);
  static Insertable<SearchHistory> custom({
    Expression<int>? id,
    Expression<String>? query,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (query != null) 'query': query,
    });
  }

  SearchHistoriesCompanion copyWith({Value<int>? id, Value<String>? query}) {
    return SearchHistoriesCompanion(
      id: id ?? this.id,
      query: query ?? this.query,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (query.present) {
      map['query'] = Variable<String>(query.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchHistoriesCompanion(')
          ..write('id: $id, ')
          ..write('query: $query')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with TableInfo<$SettingsTable, SettingsData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localeMeta = const VerificationMeta('locale');
  @override
  late final GeneratedColumnWithTypeConverter<LocaleSetting, String> locale =
      GeneratedColumn<String>('locale', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<LocaleSetting>($SettingsTable.$converterlocale);
  static const VerificationMeta _themeMeta = const VerificationMeta('theme');
  @override
  late final GeneratedColumnWithTypeConverter<ThemeSetting, String> theme =
      GeneratedColumn<String>('theme', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ThemeSetting>($SettingsTable.$convertertheme);
  static const VerificationMeta _usePureBlackInDarkModeMeta =
      const VerificationMeta('usePureBlackInDarkMode');
  @override
  late final GeneratedColumn<bool> usePureBlackInDarkMode =
      GeneratedColumn<bool>('use_pure_black_in_dark_mode', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("use_pure_black_in_dark_mode" IN (0, 1))'));
  static const VerificationMeta _useDynamicColorMeta =
      const VerificationMeta('useDynamicColor');
  @override
  late final GeneratedColumn<bool> useDynamicColor = GeneratedColumn<bool>(
      'use_dynamic_color', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("use_dynamic_color" IN (0, 1))'));
  static const VerificationMeta _colorSchemeMeta =
      const VerificationMeta('colorScheme');
  @override
  late final GeneratedColumnWithTypeConverter<ColorSchemeSetting, String>
      colorScheme = GeneratedColumn<String>('color_scheme', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ColorSchemeSetting>(
              $SettingsTable.$convertercolorScheme);
  static const VerificationMeta _openLinksInExternalBrowserMeta =
      const VerificationMeta('openLinksInExternalBrowser');
  @override
  late final GeneratedColumn<bool> openLinksInExternalBrowser =
      GeneratedColumn<bool>(
          'open_links_in_external_browser', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("open_links_in_external_browser" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        locale,
        theme,
        usePureBlackInDarkMode,
        useDynamicColor,
        colorScheme,
        openLinksInExternalBrowser
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(Insertable<SettingsData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_localeMeta, const VerificationResult.success());
    context.handle(_themeMeta, const VerificationResult.success());
    if (data.containsKey('use_pure_black_in_dark_mode')) {
      context.handle(
          _usePureBlackInDarkModeMeta,
          usePureBlackInDarkMode.isAcceptableOrUnknown(
              data['use_pure_black_in_dark_mode']!,
              _usePureBlackInDarkModeMeta));
    } else if (isInserting) {
      context.missing(_usePureBlackInDarkModeMeta);
    }
    if (data.containsKey('use_dynamic_color')) {
      context.handle(
          _useDynamicColorMeta,
          useDynamicColor.isAcceptableOrUnknown(
              data['use_dynamic_color']!, _useDynamicColorMeta));
    } else if (isInserting) {
      context.missing(_useDynamicColorMeta);
    }
    context.handle(_colorSchemeMeta, const VerificationResult.success());
    if (data.containsKey('open_links_in_external_browser')) {
      context.handle(
          _openLinksInExternalBrowserMeta,
          openLinksInExternalBrowser.isAcceptableOrUnknown(
              data['open_links_in_external_browser']!,
              _openLinksInExternalBrowserMeta));
    } else if (isInserting) {
      context.missing(_openLinksInExternalBrowserMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SettingsData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsData(
      locale: $SettingsTable.$converterlocale.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}locale'])!),
      theme: $SettingsTable.$convertertheme.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}theme'])!),
      usePureBlackInDarkMode: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}use_pure_black_in_dark_mode'])!,
      useDynamicColor: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}use_dynamic_color'])!,
      colorScheme: $SettingsTable.$convertercolorScheme.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color_scheme'])!),
      openLinksInExternalBrowser: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}open_links_in_external_browser'])!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<LocaleSetting, String, String> $converterlocale =
      const EnumNameConverter<LocaleSetting>(LocaleSetting.values);
  static JsonTypeConverter2<ThemeSetting, String, String> $convertertheme =
      const EnumNameConverter<ThemeSetting>(ThemeSetting.values);
  static JsonTypeConverter2<ColorSchemeSetting, String, String>
      $convertercolorScheme =
      const EnumNameConverter<ColorSchemeSetting>(ColorSchemeSetting.values);
}

class SettingsData extends DataClass implements Insertable<SettingsData> {
  final LocaleSetting locale;
  final ThemeSetting theme;
  final bool usePureBlackInDarkMode;
  final bool useDynamicColor;
  final ColorSchemeSetting colorScheme;
  final bool openLinksInExternalBrowser;
  const SettingsData(
      {required this.locale,
      required this.theme,
      required this.usePureBlackInDarkMode,
      required this.useDynamicColor,
      required this.colorScheme,
      required this.openLinksInExternalBrowser});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      map['locale'] =
          Variable<String>($SettingsTable.$converterlocale.toSql(locale));
    }
    {
      map['theme'] =
          Variable<String>($SettingsTable.$convertertheme.toSql(theme));
    }
    map['use_pure_black_in_dark_mode'] = Variable<bool>(usePureBlackInDarkMode);
    map['use_dynamic_color'] = Variable<bool>(useDynamicColor);
    {
      map['color_scheme'] = Variable<String>(
          $SettingsTable.$convertercolorScheme.toSql(colorScheme));
    }
    map['open_links_in_external_browser'] =
        Variable<bool>(openLinksInExternalBrowser);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      locale: Value(locale),
      theme: Value(theme),
      usePureBlackInDarkMode: Value(usePureBlackInDarkMode),
      useDynamicColor: Value(useDynamicColor),
      colorScheme: Value(colorScheme),
      openLinksInExternalBrowser: Value(openLinksInExternalBrowser),
    );
  }

  factory SettingsData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsData(
      locale: $SettingsTable.$converterlocale
          .fromJson(serializer.fromJson<String>(json['locale'])),
      theme: $SettingsTable.$convertertheme
          .fromJson(serializer.fromJson<String>(json['theme'])),
      usePureBlackInDarkMode:
          serializer.fromJson<bool>(json['usePureBlackInDarkMode']),
      useDynamicColor: serializer.fromJson<bool>(json['useDynamicColor']),
      colorScheme: $SettingsTable.$convertercolorScheme
          .fromJson(serializer.fromJson<String>(json['colorScheme'])),
      openLinksInExternalBrowser:
          serializer.fromJson<bool>(json['openLinksInExternalBrowser']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'locale': serializer
          .toJson<String>($SettingsTable.$converterlocale.toJson(locale)),
      'theme': serializer
          .toJson<String>($SettingsTable.$convertertheme.toJson(theme)),
      'usePureBlackInDarkMode': serializer.toJson<bool>(usePureBlackInDarkMode),
      'useDynamicColor': serializer.toJson<bool>(useDynamicColor),
      'colorScheme': serializer.toJson<String>(
          $SettingsTable.$convertercolorScheme.toJson(colorScheme)),
      'openLinksInExternalBrowser':
          serializer.toJson<bool>(openLinksInExternalBrowser),
    };
  }

  SettingsData copyWith(
          {LocaleSetting? locale,
          ThemeSetting? theme,
          bool? usePureBlackInDarkMode,
          bool? useDynamicColor,
          ColorSchemeSetting? colorScheme,
          bool? openLinksInExternalBrowser}) =>
      SettingsData(
        locale: locale ?? this.locale,
        theme: theme ?? this.theme,
        usePureBlackInDarkMode:
            usePureBlackInDarkMode ?? this.usePureBlackInDarkMode,
        useDynamicColor: useDynamicColor ?? this.useDynamicColor,
        colorScheme: colorScheme ?? this.colorScheme,
        openLinksInExternalBrowser:
            openLinksInExternalBrowser ?? this.openLinksInExternalBrowser,
      );
  @override
  String toString() {
    return (StringBuffer('SettingsData(')
          ..write('locale: $locale, ')
          ..write('theme: $theme, ')
          ..write('usePureBlackInDarkMode: $usePureBlackInDarkMode, ')
          ..write('useDynamicColor: $useDynamicColor, ')
          ..write('colorScheme: $colorScheme, ')
          ..write('openLinksInExternalBrowser: $openLinksInExternalBrowser')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(locale, theme, usePureBlackInDarkMode,
      useDynamicColor, colorScheme, openLinksInExternalBrowser);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsData &&
          other.locale == this.locale &&
          other.theme == this.theme &&
          other.usePureBlackInDarkMode == this.usePureBlackInDarkMode &&
          other.useDynamicColor == this.useDynamicColor &&
          other.colorScheme == this.colorScheme &&
          other.openLinksInExternalBrowser == this.openLinksInExternalBrowser);
}

class SettingsCompanion extends UpdateCompanion<SettingsData> {
  final Value<LocaleSetting> locale;
  final Value<ThemeSetting> theme;
  final Value<bool> usePureBlackInDarkMode;
  final Value<bool> useDynamicColor;
  final Value<ColorSchemeSetting> colorScheme;
  final Value<bool> openLinksInExternalBrowser;
  final Value<int> rowid;
  const SettingsCompanion({
    this.locale = const Value.absent(),
    this.theme = const Value.absent(),
    this.usePureBlackInDarkMode = const Value.absent(),
    this.useDynamicColor = const Value.absent(),
    this.colorScheme = const Value.absent(),
    this.openLinksInExternalBrowser = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsCompanion.insert({
    required LocaleSetting locale,
    required ThemeSetting theme,
    required bool usePureBlackInDarkMode,
    required bool useDynamicColor,
    required ColorSchemeSetting colorScheme,
    required bool openLinksInExternalBrowser,
    this.rowid = const Value.absent(),
  })  : locale = Value(locale),
        theme = Value(theme),
        usePureBlackInDarkMode = Value(usePureBlackInDarkMode),
        useDynamicColor = Value(useDynamicColor),
        colorScheme = Value(colorScheme),
        openLinksInExternalBrowser = Value(openLinksInExternalBrowser);
  static Insertable<SettingsData> custom({
    Expression<String>? locale,
    Expression<String>? theme,
    Expression<bool>? usePureBlackInDarkMode,
    Expression<bool>? useDynamicColor,
    Expression<String>? colorScheme,
    Expression<bool>? openLinksInExternalBrowser,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (locale != null) 'locale': locale,
      if (theme != null) 'theme': theme,
      if (usePureBlackInDarkMode != null)
        'use_pure_black_in_dark_mode': usePureBlackInDarkMode,
      if (useDynamicColor != null) 'use_dynamic_color': useDynamicColor,
      if (colorScheme != null) 'color_scheme': colorScheme,
      if (openLinksInExternalBrowser != null)
        'open_links_in_external_browser': openLinksInExternalBrowser,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith(
      {Value<LocaleSetting>? locale,
      Value<ThemeSetting>? theme,
      Value<bool>? usePureBlackInDarkMode,
      Value<bool>? useDynamicColor,
      Value<ColorSchemeSetting>? colorScheme,
      Value<bool>? openLinksInExternalBrowser,
      Value<int>? rowid}) {
    return SettingsCompanion(
      locale: locale ?? this.locale,
      theme: theme ?? this.theme,
      usePureBlackInDarkMode:
          usePureBlackInDarkMode ?? this.usePureBlackInDarkMode,
      useDynamicColor: useDynamicColor ?? this.useDynamicColor,
      colorScheme: colorScheme ?? this.colorScheme,
      openLinksInExternalBrowser:
          openLinksInExternalBrowser ?? this.openLinksInExternalBrowser,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (locale.present) {
      map['locale'] =
          Variable<String>($SettingsTable.$converterlocale.toSql(locale.value));
    }
    if (theme.present) {
      map['theme'] =
          Variable<String>($SettingsTable.$convertertheme.toSql(theme.value));
    }
    if (usePureBlackInDarkMode.present) {
      map['use_pure_black_in_dark_mode'] =
          Variable<bool>(usePureBlackInDarkMode.value);
    }
    if (useDynamicColor.present) {
      map['use_dynamic_color'] = Variable<bool>(useDynamicColor.value);
    }
    if (colorScheme.present) {
      map['color_scheme'] = Variable<String>(
          $SettingsTable.$convertercolorScheme.toSql(colorScheme.value));
    }
    if (openLinksInExternalBrowser.present) {
      map['open_links_in_external_browser'] =
          Variable<bool>(openLinksInExternalBrowser.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('locale: $locale, ')
          ..write('theme: $theme, ')
          ..write('usePureBlackInDarkMode: $usePureBlackInDarkMode, ')
          ..write('useDynamicColor: $useDynamicColor, ')
          ..write('colorScheme: $colorScheme, ')
          ..write('openLinksInExternalBrowser: $openLinksInExternalBrowser, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  _$DatabaseManager get managers => _$DatabaseManager(this);
  late final $RepositoryBookmarksTable repositoryBookmarks =
      $RepositoryBookmarksTable(this);
  late final $SearchHistoriesTable searchHistories =
      $SearchHistoriesTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  late final Index repositoryBookmarkAddedAt = Index(
      'repository_bookmark_added_at',
      'CREATE INDEX repository_bookmark_added_at ON repository_bookmarks (added_at)');
  late final RepositoryBookmarksDao repositoryBookmarksDao =
      RepositoryBookmarksDao(this as Database);
  late final SearchHistoriesDao searchHistoriesDao =
      SearchHistoriesDao(this as Database);
  late final SettingsDao settingsDao = SettingsDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        repositoryBookmarks,
        searchHistories,
        settings,
        repositoryBookmarkAddedAt
      ];
}

typedef $$RepositoryBookmarksTableInsertCompanionBuilder
    = RepositoryBookmarksCompanion Function({
  Value<int> id,
  required DateTime addedAt,
});
typedef $$RepositoryBookmarksTableUpdateCompanionBuilder
    = RepositoryBookmarksCompanion Function({
  Value<int> id,
  Value<DateTime> addedAt,
});

class $$RepositoryBookmarksTableTableManager extends RootTableManager<
    _$Database,
    $RepositoryBookmarksTable,
    RepositoryBookmark,
    $$RepositoryBookmarksTableFilterComposer,
    $$RepositoryBookmarksTableOrderingComposer,
    $$RepositoryBookmarksTableProcessedTableManager,
    $$RepositoryBookmarksTableInsertCompanionBuilder,
    $$RepositoryBookmarksTableUpdateCompanionBuilder> {
  $$RepositoryBookmarksTableTableManager(
      _$Database db, $RepositoryBookmarksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$RepositoryBookmarksTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$RepositoryBookmarksTableOrderingComposer(
              ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$RepositoryBookmarksTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<DateTime> addedAt = const Value.absent(),
          }) =>
              RepositoryBookmarksCompanion(
            id: id,
            addedAt: addedAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required DateTime addedAt,
          }) =>
              RepositoryBookmarksCompanion.insert(
            id: id,
            addedAt: addedAt,
          ),
        ));
}

class $$RepositoryBookmarksTableProcessedTableManager
    extends ProcessedTableManager<
        _$Database,
        $RepositoryBookmarksTable,
        RepositoryBookmark,
        $$RepositoryBookmarksTableFilterComposer,
        $$RepositoryBookmarksTableOrderingComposer,
        $$RepositoryBookmarksTableProcessedTableManager,
        $$RepositoryBookmarksTableInsertCompanionBuilder,
        $$RepositoryBookmarksTableUpdateCompanionBuilder> {
  $$RepositoryBookmarksTableProcessedTableManager(super.$state);
}

class $$RepositoryBookmarksTableFilterComposer
    extends FilterComposer<_$Database, $RepositoryBookmarksTable> {
  $$RepositoryBookmarksTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get addedAt => $state.composableBuilder(
      column: $state.table.addedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RepositoryBookmarksTableOrderingComposer
    extends OrderingComposer<_$Database, $RepositoryBookmarksTable> {
  $$RepositoryBookmarksTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get addedAt => $state.composableBuilder(
      column: $state.table.addedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SearchHistoriesTableInsertCompanionBuilder = SearchHistoriesCompanion
    Function({
  Value<int> id,
  required String query,
});
typedef $$SearchHistoriesTableUpdateCompanionBuilder = SearchHistoriesCompanion
    Function({
  Value<int> id,
  Value<String> query,
});

class $$SearchHistoriesTableTableManager extends RootTableManager<
    _$Database,
    $SearchHistoriesTable,
    SearchHistory,
    $$SearchHistoriesTableFilterComposer,
    $$SearchHistoriesTableOrderingComposer,
    $$SearchHistoriesTableProcessedTableManager,
    $$SearchHistoriesTableInsertCompanionBuilder,
    $$SearchHistoriesTableUpdateCompanionBuilder> {
  $$SearchHistoriesTableTableManager(_$Database db, $SearchHistoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SearchHistoriesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SearchHistoriesTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SearchHistoriesTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> query = const Value.absent(),
          }) =>
              SearchHistoriesCompanion(
            id: id,
            query: query,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String query,
          }) =>
              SearchHistoriesCompanion.insert(
            id: id,
            query: query,
          ),
        ));
}

class $$SearchHistoriesTableProcessedTableManager extends ProcessedTableManager<
    _$Database,
    $SearchHistoriesTable,
    SearchHistory,
    $$SearchHistoriesTableFilterComposer,
    $$SearchHistoriesTableOrderingComposer,
    $$SearchHistoriesTableProcessedTableManager,
    $$SearchHistoriesTableInsertCompanionBuilder,
    $$SearchHistoriesTableUpdateCompanionBuilder> {
  $$SearchHistoriesTableProcessedTableManager(super.$state);
}

class $$SearchHistoriesTableFilterComposer
    extends FilterComposer<_$Database, $SearchHistoriesTable> {
  $$SearchHistoriesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get query => $state.composableBuilder(
      column: $state.table.query,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SearchHistoriesTableOrderingComposer
    extends OrderingComposer<_$Database, $SearchHistoriesTable> {
  $$SearchHistoriesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get query => $state.composableBuilder(
      column: $state.table.query,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SettingsTableInsertCompanionBuilder = SettingsCompanion Function({
  required LocaleSetting locale,
  required ThemeSetting theme,
  required bool usePureBlackInDarkMode,
  required bool useDynamicColor,
  required ColorSchemeSetting colorScheme,
  required bool openLinksInExternalBrowser,
  Value<int> rowid,
});
typedef $$SettingsTableUpdateCompanionBuilder = SettingsCompanion Function({
  Value<LocaleSetting> locale,
  Value<ThemeSetting> theme,
  Value<bool> usePureBlackInDarkMode,
  Value<bool> useDynamicColor,
  Value<ColorSchemeSetting> colorScheme,
  Value<bool> openLinksInExternalBrowser,
  Value<int> rowid,
});

class $$SettingsTableTableManager extends RootTableManager<
    _$Database,
    $SettingsTable,
    SettingsData,
    $$SettingsTableFilterComposer,
    $$SettingsTableOrderingComposer,
    $$SettingsTableProcessedTableManager,
    $$SettingsTableInsertCompanionBuilder,
    $$SettingsTableUpdateCompanionBuilder> {
  $$SettingsTableTableManager(_$Database db, $SettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SettingsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SettingsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SettingsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<LocaleSetting> locale = const Value.absent(),
            Value<ThemeSetting> theme = const Value.absent(),
            Value<bool> usePureBlackInDarkMode = const Value.absent(),
            Value<bool> useDynamicColor = const Value.absent(),
            Value<ColorSchemeSetting> colorScheme = const Value.absent(),
            Value<bool> openLinksInExternalBrowser = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingsCompanion(
            locale: locale,
            theme: theme,
            usePureBlackInDarkMode: usePureBlackInDarkMode,
            useDynamicColor: useDynamicColor,
            colorScheme: colorScheme,
            openLinksInExternalBrowser: openLinksInExternalBrowser,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required LocaleSetting locale,
            required ThemeSetting theme,
            required bool usePureBlackInDarkMode,
            required bool useDynamicColor,
            required ColorSchemeSetting colorScheme,
            required bool openLinksInExternalBrowser,
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingsCompanion.insert(
            locale: locale,
            theme: theme,
            usePureBlackInDarkMode: usePureBlackInDarkMode,
            useDynamicColor: useDynamicColor,
            colorScheme: colorScheme,
            openLinksInExternalBrowser: openLinksInExternalBrowser,
            rowid: rowid,
          ),
        ));
}

class $$SettingsTableProcessedTableManager extends ProcessedTableManager<
    _$Database,
    $SettingsTable,
    SettingsData,
    $$SettingsTableFilterComposer,
    $$SettingsTableOrderingComposer,
    $$SettingsTableProcessedTableManager,
    $$SettingsTableInsertCompanionBuilder,
    $$SettingsTableUpdateCompanionBuilder> {
  $$SettingsTableProcessedTableManager(super.$state);
}

class $$SettingsTableFilterComposer
    extends FilterComposer<_$Database, $SettingsTable> {
  $$SettingsTableFilterComposer(super.$state);
  ColumnWithTypeConverterFilters<LocaleSetting, LocaleSetting, String>
      get locale => $state.composableBuilder(
          column: $state.table.locale,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<ThemeSetting, ThemeSetting, String>
      get theme => $state.composableBuilder(
          column: $state.table.theme,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<bool> get usePureBlackInDarkMode => $state.composableBuilder(
      column: $state.table.usePureBlackInDarkMode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get useDynamicColor => $state.composableBuilder(
      column: $state.table.useDynamicColor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<ColorSchemeSetting, ColorSchemeSetting, String>
      get colorScheme => $state.composableBuilder(
          column: $state.table.colorScheme,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<bool> get openLinksInExternalBrowser =>
      $state.composableBuilder(
          column: $state.table.openLinksInExternalBrowser,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SettingsTableOrderingComposer
    extends OrderingComposer<_$Database, $SettingsTable> {
  $$SettingsTableOrderingComposer(super.$state);
  ColumnOrderings<String> get locale => $state.composableBuilder(
      column: $state.table.locale,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get theme => $state.composableBuilder(
      column: $state.table.theme,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get usePureBlackInDarkMode => $state.composableBuilder(
      column: $state.table.usePureBlackInDarkMode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get useDynamicColor => $state.composableBuilder(
      column: $state.table.useDynamicColor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get colorScheme => $state.composableBuilder(
      column: $state.table.colorScheme,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get openLinksInExternalBrowser =>
      $state.composableBuilder(
          column: $state.table.openLinksInExternalBrowser,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$DatabaseManager {
  final _$Database _db;
  _$DatabaseManager(this._db);
  $$RepositoryBookmarksTableTableManager get repositoryBookmarks =>
      $$RepositoryBookmarksTableTableManager(_db, _db.repositoryBookmarks);
  $$SearchHistoriesTableTableManager get searchHistories =>
      $$SearchHistoriesTableTableManager(_db, _db.searchHistories);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dbHash() => r'd8b5a4c5d1a71573ca656d2050db682832e1cc88';

/// See also [db].
@ProviderFor(db)
final dbProvider = Provider<Database>.internal(
  db,
  name: r'dbProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dbHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DbRef = ProviderRef<Database>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
