// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$languagesHash() => r'b2e7fbafbf27ecf461a3a40a0608346d6cf9e189';

/// See also [_languages].
@ProviderFor(_languages)
final _languagesProvider =
    AutoDisposeFutureProvider<Map<String, Language>>.internal(
  _languages,
  name: r'_languagesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$languagesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _LanguagesRef = AutoDisposeFutureProviderRef<Map<String, Language>>;
String _$languageHash() => r'e8ba272fda9d1b5bd4d8aac29ab97d7a5b0f8289';

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

/// See also [language].
@ProviderFor(language)
const languageProvider = LanguageFamily();

/// See also [language].
class LanguageFamily extends Family<Language?> {
  /// See also [language].
  const LanguageFamily();

  /// See also [language].
  LanguageProvider call(
    String title,
  ) {
    return LanguageProvider(
      title,
    );
  }

  @override
  LanguageProvider getProviderOverride(
    covariant LanguageProvider provider,
  ) {
    return call(
      provider.title,
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
  String? get name => r'languageProvider';
}

/// See also [language].
class LanguageProvider extends AutoDisposeProvider<Language?> {
  /// See also [language].
  LanguageProvider(
    String title,
  ) : this._internal(
          (ref) => language(
            ref as LanguageRef,
            title,
          ),
          from: languageProvider,
          name: r'languageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$languageHash,
          dependencies: LanguageFamily._dependencies,
          allTransitiveDependencies: LanguageFamily._allTransitiveDependencies,
          title: title,
        );

  LanguageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
  }) : super.internal();

  final String title;

  @override
  Override overrideWith(
    Language? Function(LanguageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LanguageProvider._internal(
        (ref) => create(ref as LanguageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Language?> createElement() {
    return _LanguageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LanguageProvider && other.title == title;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LanguageRef on AutoDisposeProviderRef<Language?> {
  /// The parameter `title` of this provider.
  String get title;
}

class _LanguageProviderElement extends AutoDisposeProviderElement<Language?>
    with LanguageRef {
  _LanguageProviderElement(super.provider);

  @override
  String get title => (origin as LanguageProvider).title;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
