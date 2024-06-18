// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoriesHash() => r'c6c9759da4624ec2c58a8ab61987802b58ad36d5';

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

abstract class _$Repositories
    extends BuildlessAutoDisposeAsyncNotifier<List<RepositoryResponse>> {
  late final List<int> ids;

  FutureOr<List<RepositoryResponse>> build(
    List<int> ids,
  );
}

/// See also [Repositories].
@ProviderFor(Repositories)
const repositoriesProvider = RepositoriesFamily();

/// See also [Repositories].
class RepositoriesFamily extends Family<AsyncValue<List<RepositoryResponse>>> {
  /// See also [Repositories].
  const RepositoriesFamily();

  /// See also [Repositories].
  RepositoriesProvider call(
    List<int> ids,
  ) {
    return RepositoriesProvider(
      ids,
    );
  }

  @override
  RepositoriesProvider getProviderOverride(
    covariant RepositoriesProvider provider,
  ) {
    return call(
      provider.ids,
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
  String? get name => r'repositoriesProvider';
}

/// See also [Repositories].
class RepositoriesProvider extends AutoDisposeAsyncNotifierProviderImpl<
    Repositories, List<RepositoryResponse>> {
  /// See also [Repositories].
  RepositoriesProvider(
    List<int> ids,
  ) : this._internal(
          () => Repositories()..ids = ids,
          from: repositoriesProvider,
          name: r'repositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositoriesHash,
          dependencies: RepositoriesFamily._dependencies,
          allTransitiveDependencies:
              RepositoriesFamily._allTransitiveDependencies,
          ids: ids,
        );

  RepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ids,
  }) : super.internal();

  final List<int> ids;

  @override
  FutureOr<List<RepositoryResponse>> runNotifierBuild(
    covariant Repositories notifier,
  ) {
    return notifier.build(
      ids,
    );
  }

  @override
  Override overrideWith(Repositories Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepositoriesProvider._internal(
        () => create()..ids = ids,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ids: ids,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<Repositories,
      List<RepositoryResponse>> createElement() {
    return _RepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoriesProvider && other.ids == ids;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ids.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepositoriesRef
    on AutoDisposeAsyncNotifierProviderRef<List<RepositoryResponse>> {
  /// The parameter `ids` of this provider.
  List<int> get ids;
}

class _RepositoriesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Repositories,
        List<RepositoryResponse>> with RepositoriesRef {
  _RepositoriesProviderElement(super.provider);

  @override
  List<int> get ids => (origin as RepositoriesProvider).ids;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
