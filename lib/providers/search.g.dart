// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchHash() => r'e8c91ed1d59a98385b0c225c65dc166d620eb979';

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

abstract class _$Search
    extends BuildlessAutoDisposeAsyncNotifier<SearchResponses> {
  late final String query;

  FutureOr<SearchResponses> build(
    String query,
  );
}

/// See also [Search].
@ProviderFor(Search)
const searchProvider = SearchFamily();

/// See also [Search].
class SearchFamily extends Family<AsyncValue<SearchResponses>> {
  /// See also [Search].
  const SearchFamily();

  /// See also [Search].
  SearchProvider call(
    String query,
  ) {
    return SearchProvider(
      query,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'searchProvider';
}

/// See also [Search].
class SearchProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Search, SearchResponses> {
  /// See also [Search].
  SearchProvider(
    String query,
  ) : this._internal(
          () => Search()..query = query,
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
          query: query,
        );

  SearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  FutureOr<SearchResponses> runNotifierBuild(
    covariant Search notifier,
  ) {
    return notifier.build(
      query,
    );
  }

  @override
  Override overrideWith(Search Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchProvider._internal(
        () => create()..query = query,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Search, SearchResponses>
      createElement() {
    return _SearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchRef on AutoDisposeAsyncNotifierProviderRef<SearchResponses> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Search, SearchResponses>
    with SearchRef {
  _SearchProviderElement(super.provider);

  @override
  String get query => (origin as SearchProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
