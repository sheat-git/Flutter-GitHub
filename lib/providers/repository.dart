import 'package:github/services/github/github.dart';
import 'package:github/services/github/responses/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@riverpod
class Repository extends _$Repository {
  @override
  Future<RepositoryResponse> build({
    int? id,
    String? owner,
    // nameは名前が衝突して使えない
    String? repository,
  }) async {
    assert(id != null || (owner != null && repository != null));
    final github = ref.read(githubProvider);
    if (id != null) {
      return await github.getRepositoryById(id);
    } else {
      return await github.getRepository(owner: owner!, name: repository!);
    }
  }

  void reload() {
    state = const AsyncLoading<RepositoryResponse>().copyWithPrevious(
      state,
      isRefresh: false,
    );
    ref.invalidateSelf();
  }
}
