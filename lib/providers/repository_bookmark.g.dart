// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_bookmark.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryBookmarkHash() =>
    r'b9312f71b643fd193b514a33a5a9fde89eb0f59a';

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

abstract class _$RepositoryBookmark
    extends BuildlessAutoDisposeAsyncNotifier<d.RepositoryBookmark?> {
  late final int id;

  FutureOr<d.RepositoryBookmark?> build(
    int id,
  );
}

/// See also [RepositoryBookmark].
@ProviderFor(RepositoryBookmark)
const repositoryBookmarkProvider = RepositoryBookmarkFamily();

/// See also [RepositoryBookmark].
class RepositoryBookmarkFamily
    extends Family<AsyncValue<d.RepositoryBookmark?>> {
  /// See also [RepositoryBookmark].
  const RepositoryBookmarkFamily();

  /// See also [RepositoryBookmark].
  RepositoryBookmarkProvider call(
    int id,
  ) {
    return RepositoryBookmarkProvider(
      id,
    );
  }

  @override
  RepositoryBookmarkProvider getProviderOverride(
    covariant RepositoryBookmarkProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'repositoryBookmarkProvider';
}

/// See also [RepositoryBookmark].
class RepositoryBookmarkProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RepositoryBookmark, d.RepositoryBookmark?> {
  /// See also [RepositoryBookmark].
  RepositoryBookmarkProvider(
    int id,
  ) : this._internal(
          () => RepositoryBookmark()..id = id,
          from: repositoryBookmarkProvider,
          name: r'repositoryBookmarkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositoryBookmarkHash,
          dependencies: RepositoryBookmarkFamily._dependencies,
          allTransitiveDependencies:
              RepositoryBookmarkFamily._allTransitiveDependencies,
          id: id,
        );

  RepositoryBookmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<d.RepositoryBookmark?> runNotifierBuild(
    covariant RepositoryBookmark notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(RepositoryBookmark Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepositoryBookmarkProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RepositoryBookmark,
      d.RepositoryBookmark?> createElement() {
    return _RepositoryBookmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoryBookmarkProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepositoryBookmarkRef
    on AutoDisposeAsyncNotifierProviderRef<d.RepositoryBookmark?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _RepositoryBookmarkProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RepositoryBookmark,
        d.RepositoryBookmark?> with RepositoryBookmarkRef {
  _RepositoryBookmarkProviderElement(super.provider);

  @override
  int get id => (origin as RepositoryBookmarkProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
