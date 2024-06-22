// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repositories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchRepositoriesHash() =>
    r'2331a4d0e08daf084a318f63f0ddd7ac19a6ec23';

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

abstract class _$SearchRepositories
    extends BuildlessAutoDisposeAsyncNotifier<List<RepositoryItem>> {
  late final String query;
  late final SearchRepositoriesSort sort;
  late final SearchOrder order;
  late final int perPage;
  late final int page;

  FutureOr<List<RepositoryItem>> build({
    required String query,
    SearchRepositoriesSort sort = SearchRepositoriesSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  });
}

/// See also [SearchRepositories].
@ProviderFor(SearchRepositories)
const searchRepositoriesProvider = SearchRepositoriesFamily();

/// See also [SearchRepositories].
class SearchRepositoriesFamily
    extends Family<AsyncValue<List<RepositoryItem>>> {
  /// See also [SearchRepositories].
  const SearchRepositoriesFamily();

  /// See also [SearchRepositories].
  SearchRepositoriesProvider call({
    required String query,
    SearchRepositoriesSort sort = SearchRepositoriesSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) {
    return SearchRepositoriesProvider(
      query: query,
      sort: sort,
      order: order,
      perPage: perPage,
      page: page,
    );
  }

  @override
  SearchRepositoriesProvider getProviderOverride(
    covariant SearchRepositoriesProvider provider,
  ) {
    return call(
      query: provider.query,
      sort: provider.sort,
      order: provider.order,
      perPage: provider.perPage,
      page: provider.page,
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
  String? get name => r'searchRepositoriesProvider';
}

/// See also [SearchRepositories].
class SearchRepositoriesProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SearchRepositories, List<RepositoryItem>> {
  /// See also [SearchRepositories].
  SearchRepositoriesProvider({
    required String query,
    SearchRepositoriesSort sort = SearchRepositoriesSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) : this._internal(
          () => SearchRepositories()
            ..query = query
            ..sort = sort
            ..order = order
            ..perPage = perPage
            ..page = page,
          from: searchRepositoriesProvider,
          name: r'searchRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchRepositoriesHash,
          dependencies: SearchRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              SearchRepositoriesFamily._allTransitiveDependencies,
          query: query,
          sort: sort,
          order: order,
          perPage: perPage,
          page: page,
        );

  SearchRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.sort,
    required this.order,
    required this.perPage,
    required this.page,
  }) : super.internal();

  final String query;
  final SearchRepositoriesSort sort;
  final SearchOrder order;
  final int perPage;
  final int page;

  @override
  FutureOr<List<RepositoryItem>> runNotifierBuild(
    covariant SearchRepositories notifier,
  ) {
    return notifier.build(
      query: query,
      sort: sort,
      order: order,
      perPage: perPage,
      page: page,
    );
  }

  @override
  Override overrideWith(SearchRepositories Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchRepositoriesProvider._internal(
        () => create()
          ..query = query
          ..sort = sort
          ..order = order
          ..perPage = perPage
          ..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        sort: sort,
        order: order,
        perPage: perPage,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SearchRepositories,
      List<RepositoryItem>> createElement() {
    return _SearchRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchRepositoriesProvider &&
        other.query == query &&
        other.sort == sort &&
        other.order == order &&
        other.perPage == perPage &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, sort.hashCode);
    hash = _SystemHash.combine(hash, order.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchRepositoriesRef
    on AutoDisposeAsyncNotifierProviderRef<List<RepositoryItem>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `sort` of this provider.
  SearchRepositoriesSort get sort;

  /// The parameter `order` of this provider.
  SearchOrder get order;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `page` of this provider.
  int get page;
}

class _SearchRepositoriesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SearchRepositories,
        List<RepositoryItem>> with SearchRepositoriesRef {
  _SearchRepositoriesProviderElement(super.provider);

  @override
  String get query => (origin as SearchRepositoriesProvider).query;
  @override
  SearchRepositoriesSort get sort =>
      (origin as SearchRepositoriesProvider).sort;
  @override
  SearchOrder get order => (origin as SearchRepositoriesProvider).order;
  @override
  int get perPage => (origin as SearchRepositoriesProvider).perPage;
  @override
  int get page => (origin as SearchRepositoriesProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
