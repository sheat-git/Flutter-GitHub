// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_users.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchUsersHash() => r'460b1e9484c72797db93783389087f6fc808bdb0';

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

abstract class _$SearchUsers
    extends BuildlessAutoDisposeAsyncNotifier<List<UserItem>> {
  late final String query;
  late final SearchUsersSort sort;
  late final SearchOrder order;
  late final int perPage;
  late final int page;

  FutureOr<List<UserItem>> build({
    required String query,
    SearchUsersSort sort = SearchUsersSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  });
}

/// See also [SearchUsers].
@ProviderFor(SearchUsers)
const searchUsersProvider = SearchUsersFamily();

/// See also [SearchUsers].
class SearchUsersFamily extends Family<AsyncValue<List<UserItem>>> {
  /// See also [SearchUsers].
  const SearchUsersFamily();

  /// See also [SearchUsers].
  SearchUsersProvider call({
    required String query,
    SearchUsersSort sort = SearchUsersSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) {
    return SearchUsersProvider(
      query: query,
      sort: sort,
      order: order,
      perPage: perPage,
      page: page,
    );
  }

  @override
  SearchUsersProvider getProviderOverride(
    covariant SearchUsersProvider provider,
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
  String? get name => r'searchUsersProvider';
}

/// See also [SearchUsers].
class SearchUsersProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SearchUsers, List<UserItem>> {
  /// See also [SearchUsers].
  SearchUsersProvider({
    required String query,
    SearchUsersSort sort = SearchUsersSort.bestMatch,
    SearchOrder order = SearchOrder.desc,
    int perPage = 30,
    int page = 1,
  }) : this._internal(
          () => SearchUsers()
            ..query = query
            ..sort = sort
            ..order = order
            ..perPage = perPage
            ..page = page,
          from: searchUsersProvider,
          name: r'searchUsersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchUsersHash,
          dependencies: SearchUsersFamily._dependencies,
          allTransitiveDependencies:
              SearchUsersFamily._allTransitiveDependencies,
          query: query,
          sort: sort,
          order: order,
          perPage: perPage,
          page: page,
        );

  SearchUsersProvider._internal(
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
  final SearchUsersSort sort;
  final SearchOrder order;
  final int perPage;
  final int page;

  @override
  FutureOr<List<UserItem>> runNotifierBuild(
    covariant SearchUsers notifier,
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
  Override overrideWith(SearchUsers Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchUsersProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<SearchUsers, List<UserItem>>
      createElement() {
    return _SearchUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchUsersProvider &&
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

mixin SearchUsersRef on AutoDisposeAsyncNotifierProviderRef<List<UserItem>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `sort` of this provider.
  SearchUsersSort get sort;

  /// The parameter `order` of this provider.
  SearchOrder get order;

  /// The parameter `perPage` of this provider.
  int get perPage;

  /// The parameter `page` of this provider.
  int get page;
}

class _SearchUsersProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SearchUsers, List<UserItem>>
    with SearchUsersRef {
  _SearchUsersProviderElement(super.provider);

  @override
  String get query => (origin as SearchUsersProvider).query;
  @override
  SearchUsersSort get sort => (origin as SearchUsersProvider).sort;
  @override
  SearchOrder get order => (origin as SearchUsersProvider).order;
  @override
  int get perPage => (origin as SearchUsersProvider).perPage;
  @override
  int get page => (origin as SearchUsersProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
