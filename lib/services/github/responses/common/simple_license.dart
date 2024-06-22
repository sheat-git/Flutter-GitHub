import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_license.freezed.dart';
part 'simple_license.g.dart';

@freezed
class SimpleLicense with _$SimpleLicense {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SimpleLicense({
    required String key,
    required String name,
    required Uri? url,
    required String? spdxId,
    required String nodeId,
    Uri? htmlUrl,
  }) = _SimpleLicense;

  factory SimpleLicense.fromJson(Map<String, dynamic> json) =>
      _$SimpleLicenseFromJson(json);
}
