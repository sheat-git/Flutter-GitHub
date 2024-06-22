import 'package:github/providers/repository.dart';
import 'package:github/services/github/responses/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repositories.g.dart';

@riverpod
class Repositories extends _$Repositories {
  @override
  FutureOr<List<RepositoryResponse>> build(List<int> ids) {
    if (ids.isEmpty) return const [];

    return Future.wait(
      ids.map((id) => ref.watch(repositoryProvider(id: id).future)),
    );
  }

  void reloadError() {
    state = const AsyncLoading<List<RepositoryResponse>>().copyWithPrevious(
      state,
      isRefresh: false,
    );
    for (final id in ids) {
      final provider = repositoryProvider(id: id);
      // ignore: avoid_manual_providers_as_generated_provider_dependency
      if (ref.read(provider).hasError) {
        ref.invalidate(provider);
      }
    }
    ref.invalidateSelf();
  }
}
