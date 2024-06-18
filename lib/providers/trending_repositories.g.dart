// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_repositories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trendingRepositoriesHash() =>
    r'bcbc52870668ddefc0b93c8fdf4fbe7c08bf386e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TrendingRepositories
    extends BuildlessAutoDisposeAsyncNotifier<List<Repository>> {
  late final TrendingSince since;
  late final Language? language;
  late final SpokenLanguage? spokenLanguage;

  FutureOr<List<Repository>> build({
    TrendingSince since = TrendingSince.daily,
    Language? language,
    SpokenLanguage? spokenLanguage,
  });
}

/// See also [TrendingRepositories].
@ProviderFor(TrendingRepositories)
const trendingRepositoriesProvider = TrendingRepositoriesFamily();

/// See also [TrendingRepositories].
class TrendingRepositoriesFamily extends Family<AsyncValue<List<Repository>>> {
  /// See also [TrendingRepositories].
  const TrendingRepositoriesFamily();

  /// See also [TrendingRepositories].
  TrendingRepositoriesProvider call({
    TrendingSince since = TrendingSince.daily,
    Language? language,
    SpokenLanguage? spokenLanguage,
  }) {
    return TrendingRepositoriesProvider(
      since: since,
      language: language,
      spokenLanguage: spokenLanguage,
    );
  }

  @override
  TrendingRepositoriesProvider getProviderOverride(
    covariant TrendingRepositoriesProvider provider,
  ) {
    return call(
      since: provider.since,
      language: provider.language,
      spokenLanguage: provider.spokenLanguage,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trendingRepositoriesProvider';
}

/// See also [TrendingRepositories].
class TrendingRepositoriesProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TrendingRepositories, List<Repository>> {
  /// See also [TrendingRepositories].
  TrendingRepositoriesProvider({
    TrendingSince since = TrendingSince.daily,
    Language? language,
    SpokenLanguage? spokenLanguage,
  }) : this._internal(
          () => TrendingRepositories()
            ..since = since
            ..language = language
            ..spokenLanguage = spokenLanguage,
          from: trendingRepositoriesProvider,
          name: r'trendingRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trendingRepositoriesHash,
          dependencies: TrendingRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              TrendingRepositoriesFamily._allTransitiveDependencies,
          since: since,
          language: language,
          spokenLanguage: spokenLanguage,
        );

  TrendingRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.since,
    required this.language,
    required this.spokenLanguage,
  }) : super.internal();

  final TrendingSince since;
  final Language? language;
  final SpokenLanguage? spokenLanguage;

  @override
  FutureOr<List<Repository>> runNotifierBuild(
    covariant TrendingRepositories notifier,
  ) {
    return notifier.build(
      since: since,
      language: language,
      spokenLanguage: spokenLanguage,
    );
  }

  @override
  Override overrideWith(TrendingRepositories Function() create) {
    return ProviderOverride(
      origin: this,
      override: TrendingRepositoriesProvider._internal(
        () => create()
          ..since = since
          ..language = language
          ..spokenLanguage = spokenLanguage,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        since: since,
        language: language,
        spokenLanguage: spokenLanguage,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TrendingRepositories,
      List<Repository>> createElement() {
    return _TrendingRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TrendingRepositoriesProvider &&
        other.since == since &&
        other.language == language &&
        other.spokenLanguage == spokenLanguage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, since.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);
    hash = _SystemHash.combine(hash, spokenLanguage.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TrendingRepositoriesRef
    on AutoDisposeAsyncNotifierProviderRef<List<Repository>> {
  /// The parameter `since` of this provider.
  TrendingSince get since;

  /// The parameter `language` of this provider.
  Language? get language;

  /// The parameter `spokenLanguage` of this provider.
  SpokenLanguage? get spokenLanguage;
}

class _TrendingRepositoriesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TrendingRepositories,
        List<Repository>> with TrendingRepositoriesRef {
  _TrendingRepositoriesProviderElement(super.provider);

  @override
  TrendingSince get since => (origin as TrendingRepositoriesProvider).since;
  @override
  Language? get language => (origin as TrendingRepositoriesProvider).language;
  @override
  SpokenLanguage? get spokenLanguage =>
      (origin as TrendingRepositoriesProvider).spokenLanguage;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
