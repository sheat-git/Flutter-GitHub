import 'package:freezed_annotation/freezed_annotation.dart';

part 'repositories.freezed.dart';
part 'repositories.g.dart';

typedef RepositoriesResponse = List<Repository>;

@freezed
class Repository with _$Repository {
  const factory Repository({
    required String author,
    required String name,
    required Uri avatar,
    required Uri url,
    required String description,
    String? language,
    String? languageColor,
    required int stars,
    required int forks,
    required int currentPeriodStars,
    required List<BuildBy> builtBy,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class BuildBy with _$BuildBy {
  const factory BuildBy({
    String? username,
    required Uri href,
    required String avatar,
  }) = _BuildBy;

  factory BuildBy.fromJson(Map<String, dynamic> json) =>
      _$BuildByFromJson(json);
}
