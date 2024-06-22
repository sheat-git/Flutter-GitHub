import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/services/github/responses/common/repository_permissions.dart';
import 'package:github/services/github/responses/common/simple_license.dart';
import 'package:github/services/github/responses/common/simple_user.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

// 参照: https://docs.github.com/ja/rest/repos/repos?apiVersion=2022-11-28#get-a-repository

@freezed
class RepositoryResponse with _$RepositoryResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RepositoryResponse({
    required int id,
    required String nodeId,
    required String name,
    required String fullName,
    required SimpleUser owner,
    required bool private,
    required Uri htmlUrl,
    required String? description,
    required bool fork,
    required Uri url,
    required String archiveUrl,
    required String assigneesUrl,
    required String blobsUrl,
    required String branchesUrl,
    required String collaboratorsUrl,
    required String commentsUrl,
    required String commitsUrl,
    required String compareUrl,
    required String contentsUrl,
    required Uri contributorsUrl,
    required Uri deploymentsUrl,
    required Uri downloadsUrl,
    required Uri eventsUrl,
    required Uri forksUrl,
    required String gitCommitsUrl,
    required String gitRefsUrl,
    required String gitTagsUrl,
    required String gitUrl,
    required String issueCommentUrl,
    required String issueEventsUrl,
    required String issuesUrl,
    required String keysUrl,
    required String labelsUrl,
    required Uri languagesUrl,
    required Uri mergesUrl,
    required String milestonesUrl,
    required String notificationsUrl,
    required String pullsUrl,
    required String releasesUrl,
    required String sshUrl,
    required Uri stargazersUrl,
    required String statusesUrl,
    required Uri subscribersUrl,
    required Uri subscriptionUrl,
    required Uri tagsUrl,
    required Uri teamsUrl,
    required String treesUrl,
    required String cloneUrl,
    required Uri? mirrorUrl,
    required Uri hooksUrl,
    required Uri svnUrl,
    required Uri? homepage,
    required String? language,
    required int forksCount,
    required int stargazersCount,
    required int watchersCount,
    required int size,
    required String defaultBranch,
    required int openIssuesCount,
    bool? isTemplate,
    List<String>? topics,
    required bool hasIssues,
    required bool hasProjects,
    required bool hasWiki,
    required bool hasPages,
    bool? hasDownloads,
    required bool hasDiscussions,
    required bool archived,
    required bool disabled,
    String? visibility,
    required DateTime pushedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    RepositoryPermissions? permissions,
    bool? allowRebaseMerge,
    Repository? templateRepository,
    String? tempCloneToken,
    bool? allowSquashMerge,
    bool? allowAutoMerge,
    bool? deleteBranchOnMerge,
    bool? allowMergeCommit,
    bool? allowUpdateMerge,
    bool? useSquashPrTitleAsDefault,
    SquashMergeCommitTitle? squashMergeCommitTitle,
    SquashMergeCommitMessage? squashMergeCommitMessage,
    MergeCommitTItle? mergeCommitTitle,
    MergeCommitMessage? mergeCommitMessage,
    bool? allowForking,
    bool? webCommitSignoffRequired,
    required int subscribersCount,
    required int networkCount,
    required SimpleLicense? license,
    SimpleUser? organization,
    Repository? parent,
    Repository? source,
    required int forks,
    String? masterBranch,
    required int openIssues,
    required int watchers,
    @Default(true) bool anonymousAccessEnabled,
    SimpleCodeOfConduct? codeOfConduct,
    SecurityAndAnalysis? securityAndAnalysis,
    Map<String, dynamic>? customProperties,
  }) = _RepositoryResponse;

  factory RepositoryResponse.fromJson(Map<String, dynamic> json) =>
      _$RepositoryResponseFromJson(json);
}

enum SquashMergeCommitTitle {
  @JsonValue('PR_TITLE')
  prTitle,
  @JsonValue('COMMIT_OR_PR_TITLE')
  commitOrPrTitle,
}

enum SquashMergeCommitMessage {
  @JsonValue('PR_BODY')
  prBody,
  @JsonValue('COMMIT_MESSAGES')
  commitMessages,
  @JsonValue('BLANK')
  blank,
}

enum MergeCommitTItle {
  @JsonValue('PR_TITLE')
  prTitle,
  @JsonValue('MERGE_MESSAGE')
  mergeMessage,
}

enum MergeCommitMessage {
  @JsonValue('PR_BODY')
  prBody,
  @JsonValue('PR_TITLE')
  prTitle,
  @JsonValue('BLANK')
  blank,
}

@freezed
class Repository with _$Repository {
  const factory Repository({
    required int id,
    required String nodeId,
    required String name,
    required String fullName,
    required SimpleLicense? license,
    required int forks,
    RepositoryPermissions? permissions,
    required SimpleUser owner,
    required bool private,
    required Uri htmlUrl,
    required String? description,
    required bool fork,
    required Uri url,
    required String archiveUrl,
    required String assigneesUrl,
    required String blobsUrl,
    required String branchesUrl,
    required String collaboratorsUrl,
    required String commentsUrl,
    required String commitsUrl,
    required String compareUrl,
    required String contentsUrl,
    required Uri contributorsUrl,
    required Uri deploymentsUrl,
    required Uri downloadsUrl,
    required Uri eventsUrl,
    required Uri forksUrl,
    required String gitCommitsUrl,
    required String gitRefsUrl,
    required String gitTagsUrl,
    required String gitUrl,
    required String issueCommentUrl,
    required String issueEventsUrl,
    required String issuesUrl,
    required String keysUrl,
    required String labelsUrl,
    required Uri languagesUrl,
    required Uri mergesUrl,
    required String milestonesUrl,
    required String notificationsUrl,
    required String pullsUrl,
    required String releasesUrl,
    required String sshUrl,
    required Uri stargazersUrl,
    required String statusesUrl,
    required Uri subscribersUrl,
    required Uri subscriptionUrl,
    required Uri tagsUrl,
    required Uri teamsUrl,
    required String treesUrl,
    required String cloneUrl,
    required Uri? mirrorUrl,
    required Uri hooksUrl,
    required Uri svnUrl,
    required Uri? homepage,
    required String? language,
    required int forksCount,
    required int stargazersCount,
    required int watchersCount,
    required int size,
    required String defaultBranch,
    required int openIssuesCount,
    @Default(false) bool isTemplate,
    List<String>? topics,
    required bool hasIssues,
    required bool hasProjects,
    required bool hasWiki,
    required bool hasPages,
    required bool hasDownloads,
    @Default(false) bool hasDiscussions,
    required bool archived,
    required bool disabled,
    @Default('public') String visibility,
    required DateTime? pushedAt,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    @Default(true) bool allowRebaseMerge,
    @Default(false) bool allowAutoMerge,
    @Default(false) bool deleteBranchOnMerge,
    @Default(false) bool allowUpdateBranch,
    @Default(false) bool useSquashPrTitleAsDefault,
    SquashMergeCommitTitle? squashMergeCommitTitle,
    SquashMergeCommitMessage? squashMergeCommitMessage,
    MergeCommitTItle? mergeCommitTitle,
    MergeCommitMessage? mergeCommitMessage,
    @Default(true) bool allowMergeCommit,
    bool? allowForking,
    @Default(false) bool webCommitSignoffRequired,
    required int openIssues,
    required int watchers,
    String? masterBranch,
    String? starredAt,
    bool? anonymousAccessEnabled,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class SimpleCodeOfConduct with _$SimpleCodeOfConduct {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SimpleCodeOfConduct({
    required Uri url,
    required String key,
    required String name,
    required Uri htmlUrl,
  }) = _SimpleCodeOfConduct;

  factory SimpleCodeOfConduct.fromJson(Map<String, dynamic> json) =>
      _$SimpleCodeOfConductFromJson(json);
}

@freezed
class SecurityAndAnalysis with _$SecurityAndAnalysis {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SecurityAndAnalysis({
    Security? advancedSecurity,
    Security? dependabotSecurityUpdates,
    Security? secretScanning,
    Security? secretScanningPushProtection,
  }) = _SecurityAndAnalysis;

  factory SecurityAndAnalysis.fromJson(Map<String, dynamic> json) =>
      _$SecurityAndAnalysisFromJson(json);
}

@freezed
class Security with _$Security {
  const factory Security({
    SecurityStatus? status,
  }) = _Security;

  factory Security.fromJson(Map<String, dynamic> json) =>
      _$SecurityFromJson(json);
}

enum SecurityStatus {
  enabled,
  disabled,
}
