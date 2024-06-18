// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryHash() => r'9d93923c91c9317ca850914957c68eadff854366';

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

abstract class _$Repository
    extends BuildlessAutoDisposeAsyncNotifier<RepositoryResponse> {
  late final int? id;
  late final String? owner;
  late final String? repository;

  FutureOr<RepositoryResponse> build({
    int? id,
    String? owner,
    String? repository,
  });
}

/// See also [Repository].
@ProviderFor(Repository)
const repositoryProvider = RepositoryFamily();

/// See also [Repository].
class RepositoryFamily extends Family<AsyncValue<RepositoryResponse>> {
  /// See also [Repository].
  const RepositoryFamily();

  /// See also [Repository].
  RepositoryProvider call({
    int? id,
    String? owner,
    String? repository,
  }) {
    return RepositoryProvider(
      id: id,
      owner: owner,
      repository: repository,
    );
  }

  @override
  RepositoryProvider getProviderOverride(
    covariant RepositoryProvider provider,
  ) {
    return call(
      id: provider.id,
      owner: provider.owner,
      repository: provider.repository,
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
  String? get name => r'repositoryProvider';
}

/// See also [Repository].
class RepositoryProvider extends AutoDisposeAsyncNotifierProviderImpl<
    Repository, RepositoryResponse> {
  /// See also [Repository].
  RepositoryProvider({
    int? id,
    String? owner,
    String? repository,
  }) : this._internal(
          () => Repository()
            ..id = id
            ..owner = owner
            ..repository = repository,
          from: repositoryProvider,
          name: r'repositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositoryHash,
          dependencies: RepositoryFamily._dependencies,
          allTransitiveDependencies:
              RepositoryFamily._allTransitiveDependencies,
          id: id,
          owner: owner,
          repository: repository,
        );

  RepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.owner,
    required this.repository,
  }) : super.internal();

  final int? id;
  final String? owner;
  final String? repository;

  @override
  FutureOr<RepositoryResponse> runNotifierBuild(
    covariant Repository notifier,
  ) {
    return notifier.build(
      id: id,
      owner: owner,
      repository: repository,
    );
  }

  @override
  Override overrideWith(Repository Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepositoryProvider._internal(
        () => create()
          ..id = id
          ..owner = owner
          ..repository = repository,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        owner: owner,
        repository: repository,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Repository, RepositoryResponse>
      createElement() {
    return _RepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoryProvider &&
        other.id == id &&
        other.owner == owner &&
        other.repository == repository;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repository.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepositoryRef on AutoDisposeAsyncNotifierProviderRef<RepositoryResponse> {
  /// The parameter `id` of this provider.
  int? get id;

  /// The parameter `owner` of this provider.
  String? get owner;

  /// The parameter `repository` of this provider.
  String? get repository;
}

class _RepositoryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Repository,
        RepositoryResponse> with RepositoryRef {
  _RepositoryProviderElement(super.provider);

  @override
  int? get id => (origin as RepositoryProvider).id;
  @override
  String? get owner => (origin as RepositoryProvider).owner;
  @override
  String? get repository => (origin as RepositoryProvider).repository;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
