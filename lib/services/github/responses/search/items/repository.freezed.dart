// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoryItem _$RepositoryItemFromJson(Map<String, dynamic> json) {
  return _RepositoryItem.fromJson(json);
}

/// @nodoc
mixin _$RepositoryItem {
  int get id => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  SimpleUser? get owner => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  Uri get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get fork => throw _privateConstructorUsedError;
  Uri get url => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt =>
      throw _privateConstructorUsedError; // スキーマではpushed_atはstringだが、実際のレスポンスはnullの場合がある
  DateTime? get pushedAt => throw _privateConstructorUsedError;
  Uri? get homepage => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get stargazersCount => throw _privateConstructorUsedError;
  int get watchersCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int get forksCount => throw _privateConstructorUsedError;
  int get openIssuesCount => throw _privateConstructorUsedError;
  String? get masterBranch => throw _privateConstructorUsedError;
  String get defaultBranch => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  Uri get forksUrl => throw _privateConstructorUsedError;
  String get keysUrl => throw _privateConstructorUsedError;
  String get collaboratorsUrl => throw _privateConstructorUsedError;
  Uri get teamsUrl => throw _privateConstructorUsedError;
  Uri get hooksUrl => throw _privateConstructorUsedError;
  String get issueEventsUrl => throw _privateConstructorUsedError;
  Uri get eventsUrl => throw _privateConstructorUsedError;
  String get assigneesUrl => throw _privateConstructorUsedError;
  String get branchesUrl => throw _privateConstructorUsedError;
  Uri get tagsUrl => throw _privateConstructorUsedError;
  String get blobsUrl => throw _privateConstructorUsedError;
  String get gitTagsUrl => throw _privateConstructorUsedError;
  String get gitRefsUrl => throw _privateConstructorUsedError;
  String get treesUrl => throw _privateConstructorUsedError;
  String get statusesUrl => throw _privateConstructorUsedError;
  Uri get languagesUrl => throw _privateConstructorUsedError;
  Uri get stargazersUrl => throw _privateConstructorUsedError;
  Uri get contributorsUrl => throw _privateConstructorUsedError;
  Uri get subscribersUrl => throw _privateConstructorUsedError;
  Uri get subscriptionUrl => throw _privateConstructorUsedError;
  String get commitsUrl => throw _privateConstructorUsedError;
  String get gitCommitsUrl => throw _privateConstructorUsedError;
  String get commentsUrl => throw _privateConstructorUsedError;
  String get issueCommentUrl => throw _privateConstructorUsedError;
  String get contentsUrl => throw _privateConstructorUsedError;
  String get compareUrl => throw _privateConstructorUsedError;
  Uri get mergesUrl => throw _privateConstructorUsedError;
  String get archiveUrl => throw _privateConstructorUsedError;
  Uri get downloadsUrl => throw _privateConstructorUsedError;
  String get issuesUrl => throw _privateConstructorUsedError;
  String get pullsUrl => throw _privateConstructorUsedError;
  String get milestonesUrl => throw _privateConstructorUsedError;
  String get notificationsUrl => throw _privateConstructorUsedError;
  String get labelsUrl => throw _privateConstructorUsedError;
  String get releasesUrl => throw _privateConstructorUsedError;
  Uri get deploymentsUrl => throw _privateConstructorUsedError;
  String get gitUrl => throw _privateConstructorUsedError;
  String get sshUrl => throw _privateConstructorUsedError;
  String get cloneUrl => throw _privateConstructorUsedError;
  Uri get svnUrl => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  int get openIssues => throw _privateConstructorUsedError;
  int get watchers => throw _privateConstructorUsedError;
  List<String>? get topics => throw _privateConstructorUsedError;
  Uri? get mirrorUrl => throw _privateConstructorUsedError;
  bool get hasIssues => throw _privateConstructorUsedError;
  bool get hasProjects => throw _privateConstructorUsedError;
  bool get hasPages => throw _privateConstructorUsedError;
  bool get hasWiki => throw _privateConstructorUsedError;
  bool get hasDownloads => throw _privateConstructorUsedError;
  bool? get hasDiscussions => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  bool get disabled => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  SimpleLicense? get license => throw _privateConstructorUsedError;
  RepositoryPermissions? get permissions => throw _privateConstructorUsedError;
  List<TextMatch>? get textMatches => throw _privateConstructorUsedError;
  String? get tempCloneToken => throw _privateConstructorUsedError;
  bool? get allowMergeCommit => throw _privateConstructorUsedError;
  bool? get allowSquashMerge => throw _privateConstructorUsedError;
  bool? get allowRebaseMerge => throw _privateConstructorUsedError;
  bool? get allowAutoMerge => throw _privateConstructorUsedError;
  bool? get deleteBranchOnMerge => throw _privateConstructorUsedError;
  bool? get allowForking => throw _privateConstructorUsedError;
  bool? get isTemplate => throw _privateConstructorUsedError;
  bool? get webCommitSignoff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryItemCopyWith<RepositoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryItemCopyWith<$Res> {
  factory $RepositoryItemCopyWith(
          RepositoryItem value, $Res Function(RepositoryItem) then) =
      _$RepositoryItemCopyWithImpl<$Res, RepositoryItem>;
  @useResult
  $Res call(
      {int id,
      String nodeId,
      String name,
      String fullName,
      SimpleUser? owner,
      bool private,
      Uri htmlUrl,
      String? description,
      bool fork,
      Uri url,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? pushedAt,
      Uri? homepage,
      int size,
      int stargazersCount,
      int watchersCount,
      String? language,
      int forksCount,
      int openIssuesCount,
      String? masterBranch,
      String defaultBranch,
      double score,
      Uri forksUrl,
      String keysUrl,
      String collaboratorsUrl,
      Uri teamsUrl,
      Uri hooksUrl,
      String issueEventsUrl,
      Uri eventsUrl,
      String assigneesUrl,
      String branchesUrl,
      Uri tagsUrl,
      String blobsUrl,
      String gitTagsUrl,
      String gitRefsUrl,
      String treesUrl,
      String statusesUrl,
      Uri languagesUrl,
      Uri stargazersUrl,
      Uri contributorsUrl,
      Uri subscribersUrl,
      Uri subscriptionUrl,
      String commitsUrl,
      String gitCommitsUrl,
      String commentsUrl,
      String issueCommentUrl,
      String contentsUrl,
      String compareUrl,
      Uri mergesUrl,
      String archiveUrl,
      Uri downloadsUrl,
      String issuesUrl,
      String pullsUrl,
      String milestonesUrl,
      String notificationsUrl,
      String labelsUrl,
      String releasesUrl,
      Uri deploymentsUrl,
      String gitUrl,
      String sshUrl,
      String cloneUrl,
      Uri svnUrl,
      int forks,
      int openIssues,
      int watchers,
      List<String>? topics,
      Uri? mirrorUrl,
      bool hasIssues,
      bool hasProjects,
      bool hasPages,
      bool hasWiki,
      bool hasDownloads,
      bool? hasDiscussions,
      bool archived,
      bool disabled,
      String? visibility,
      SimpleLicense? license,
      RepositoryPermissions? permissions,
      List<TextMatch>? textMatches,
      String? tempCloneToken,
      bool? allowMergeCommit,
      bool? allowSquashMerge,
      bool? allowRebaseMerge,
      bool? allowAutoMerge,
      bool? deleteBranchOnMerge,
      bool? allowForking,
      bool? isTemplate,
      bool? webCommitSignoff});

  $SimpleUserCopyWith<$Res>? get owner;
  $SimpleLicenseCopyWith<$Res>? get license;
  $RepositoryPermissionsCopyWith<$Res>? get permissions;
}

/// @nodoc
class _$RepositoryItemCopyWithImpl<$Res, $Val extends RepositoryItem>
    implements $RepositoryItemCopyWith<$Res> {
  _$RepositoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nodeId = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = freezed,
    Object? private = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? fork = null,
    Object? url = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pushedAt = freezed,
    Object? homepage = freezed,
    Object? size = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = freezed,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? masterBranch = freezed,
    Object? defaultBranch = null,
    Object? score = null,
    Object? forksUrl = null,
    Object? keysUrl = null,
    Object? collaboratorsUrl = null,
    Object? teamsUrl = null,
    Object? hooksUrl = null,
    Object? issueEventsUrl = null,
    Object? eventsUrl = null,
    Object? assigneesUrl = null,
    Object? branchesUrl = null,
    Object? tagsUrl = null,
    Object? blobsUrl = null,
    Object? gitTagsUrl = null,
    Object? gitRefsUrl = null,
    Object? treesUrl = null,
    Object? statusesUrl = null,
    Object? languagesUrl = null,
    Object? stargazersUrl = null,
    Object? contributorsUrl = null,
    Object? subscribersUrl = null,
    Object? subscriptionUrl = null,
    Object? commitsUrl = null,
    Object? gitCommitsUrl = null,
    Object? commentsUrl = null,
    Object? issueCommentUrl = null,
    Object? contentsUrl = null,
    Object? compareUrl = null,
    Object? mergesUrl = null,
    Object? archiveUrl = null,
    Object? downloadsUrl = null,
    Object? issuesUrl = null,
    Object? pullsUrl = null,
    Object? milestonesUrl = null,
    Object? notificationsUrl = null,
    Object? labelsUrl = null,
    Object? releasesUrl = null,
    Object? deploymentsUrl = null,
    Object? gitUrl = null,
    Object? sshUrl = null,
    Object? cloneUrl = null,
    Object? svnUrl = null,
    Object? forks = null,
    Object? openIssues = null,
    Object? watchers = null,
    Object? topics = freezed,
    Object? mirrorUrl = freezed,
    Object? hasIssues = null,
    Object? hasProjects = null,
    Object? hasPages = null,
    Object? hasWiki = null,
    Object? hasDownloads = null,
    Object? hasDiscussions = freezed,
    Object? archived = null,
    Object? disabled = null,
    Object? visibility = freezed,
    Object? license = freezed,
    Object? permissions = freezed,
    Object? textMatches = freezed,
    Object? tempCloneToken = freezed,
    Object? allowMergeCommit = freezed,
    Object? allowSquashMerge = freezed,
    Object? allowRebaseMerge = freezed,
    Object? allowAutoMerge = freezed,
    Object? deleteBranchOnMerge = freezed,
    Object? allowForking = freezed,
    Object? isTemplate = freezed,
    Object? webCommitSignoff = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SimpleUser?,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: null == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushedAt: freezed == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      masterBranch: freezed == masterBranch
          ? _value.masterBranch
          : masterBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      forksUrl: null == forksUrl
          ? _value.forksUrl
          : forksUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      keysUrl: null == keysUrl
          ? _value.keysUrl
          : keysUrl // ignore: cast_nullable_to_non_nullable
              as String,
      collaboratorsUrl: null == collaboratorsUrl
          ? _value.collaboratorsUrl
          : collaboratorsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      teamsUrl: null == teamsUrl
          ? _value.teamsUrl
          : teamsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      hooksUrl: null == hooksUrl
          ? _value.hooksUrl
          : hooksUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      issueEventsUrl: null == issueEventsUrl
          ? _value.issueEventsUrl
          : issueEventsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      eventsUrl: null == eventsUrl
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      assigneesUrl: null == assigneesUrl
          ? _value.assigneesUrl
          : assigneesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      branchesUrl: null == branchesUrl
          ? _value.branchesUrl
          : branchesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tagsUrl: null == tagsUrl
          ? _value.tagsUrl
          : tagsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      blobsUrl: null == blobsUrl
          ? _value.blobsUrl
          : blobsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitTagsUrl: null == gitTagsUrl
          ? _value.gitTagsUrl
          : gitTagsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitRefsUrl: null == gitRefsUrl
          ? _value.gitRefsUrl
          : gitRefsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      treesUrl: null == treesUrl
          ? _value.treesUrl
          : treesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      statusesUrl: null == statusesUrl
          ? _value.statusesUrl
          : statusesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      languagesUrl: null == languagesUrl
          ? _value.languagesUrl
          : languagesUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      stargazersUrl: null == stargazersUrl
          ? _value.stargazersUrl
          : stargazersUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      contributorsUrl: null == contributorsUrl
          ? _value.contributorsUrl
          : contributorsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      subscribersUrl: null == subscribersUrl
          ? _value.subscribersUrl
          : subscribersUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      subscriptionUrl: null == subscriptionUrl
          ? _value.subscriptionUrl
          : subscriptionUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      commitsUrl: null == commitsUrl
          ? _value.commitsUrl
          : commitsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitCommitsUrl: null == gitCommitsUrl
          ? _value.gitCommitsUrl
          : gitCommitsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      commentsUrl: null == commentsUrl
          ? _value.commentsUrl
          : commentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      issueCommentUrl: null == issueCommentUrl
          ? _value.issueCommentUrl
          : issueCommentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contentsUrl: null == contentsUrl
          ? _value.contentsUrl
          : contentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      compareUrl: null == compareUrl
          ? _value.compareUrl
          : compareUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mergesUrl: null == mergesUrl
          ? _value.mergesUrl
          : mergesUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      archiveUrl: null == archiveUrl
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadsUrl: null == downloadsUrl
          ? _value.downloadsUrl
          : downloadsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      issuesUrl: null == issuesUrl
          ? _value.issuesUrl
          : issuesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      pullsUrl: null == pullsUrl
          ? _value.pullsUrl
          : pullsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      milestonesUrl: null == milestonesUrl
          ? _value.milestonesUrl
          : milestonesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsUrl: null == notificationsUrl
          ? _value.notificationsUrl
          : notificationsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      labelsUrl: null == labelsUrl
          ? _value.labelsUrl
          : labelsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      releasesUrl: null == releasesUrl
          ? _value.releasesUrl
          : releasesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deploymentsUrl: null == deploymentsUrl
          ? _value.deploymentsUrl
          : deploymentsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      gitUrl: null == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sshUrl: null == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cloneUrl: null == cloneUrl
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as String,
      svnUrl: null == svnUrl
          ? _value.svnUrl
          : svnUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mirrorUrl: freezed == mirrorUrl
          ? _value.mirrorUrl
          : mirrorUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      hasIssues: null == hasIssues
          ? _value.hasIssues
          : hasIssues // ignore: cast_nullable_to_non_nullable
              as bool,
      hasProjects: null == hasProjects
          ? _value.hasProjects
          : hasProjects // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPages: null == hasPages
          ? _value.hasPages
          : hasPages // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWiki: null == hasWiki
          ? _value.hasWiki
          : hasWiki // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDownloads: null == hasDownloads
          ? _value.hasDownloads
          : hasDownloads // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscussions: freezed == hasDiscussions
          ? _value.hasDiscussions
          : hasDiscussions // ignore: cast_nullable_to_non_nullable
              as bool?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as SimpleLicense?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as RepositoryPermissions?,
      textMatches: freezed == textMatches
          ? _value.textMatches
          : textMatches // ignore: cast_nullable_to_non_nullable
              as List<TextMatch>?,
      tempCloneToken: freezed == tempCloneToken
          ? _value.tempCloneToken
          : tempCloneToken // ignore: cast_nullable_to_non_nullable
              as String?,
      allowMergeCommit: freezed == allowMergeCommit
          ? _value.allowMergeCommit
          : allowMergeCommit // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSquashMerge: freezed == allowSquashMerge
          ? _value.allowSquashMerge
          : allowSquashMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowRebaseMerge: freezed == allowRebaseMerge
          ? _value.allowRebaseMerge
          : allowRebaseMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowAutoMerge: freezed == allowAutoMerge
          ? _value.allowAutoMerge
          : allowAutoMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleteBranchOnMerge: freezed == deleteBranchOnMerge
          ? _value.deleteBranchOnMerge
          : deleteBranchOnMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowForking: freezed == allowForking
          ? _value.allowForking
          : allowForking // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTemplate: freezed == isTemplate
          ? _value.isTemplate
          : isTemplate // ignore: cast_nullable_to_non_nullable
              as bool?,
      webCommitSignoff: freezed == webCommitSignoff
          ? _value.webCommitSignoff
          : webCommitSignoff // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleUserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $SimpleUserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleLicenseCopyWith<$Res>? get license {
    if (_value.license == null) {
      return null;
    }

    return $SimpleLicenseCopyWith<$Res>(_value.license!, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryPermissionsCopyWith<$Res>? get permissions {
    if (_value.permissions == null) {
      return null;
    }

    return $RepositoryPermissionsCopyWith<$Res>(_value.permissions!, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryItemImplCopyWith<$Res>
    implements $RepositoryItemCopyWith<$Res> {
  factory _$$RepositoryItemImplCopyWith(_$RepositoryItemImpl value,
          $Res Function(_$RepositoryItemImpl) then) =
      __$$RepositoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nodeId,
      String name,
      String fullName,
      SimpleUser? owner,
      bool private,
      Uri htmlUrl,
      String? description,
      bool fork,
      Uri url,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? pushedAt,
      Uri? homepage,
      int size,
      int stargazersCount,
      int watchersCount,
      String? language,
      int forksCount,
      int openIssuesCount,
      String? masterBranch,
      String defaultBranch,
      double score,
      Uri forksUrl,
      String keysUrl,
      String collaboratorsUrl,
      Uri teamsUrl,
      Uri hooksUrl,
      String issueEventsUrl,
      Uri eventsUrl,
      String assigneesUrl,
      String branchesUrl,
      Uri tagsUrl,
      String blobsUrl,
      String gitTagsUrl,
      String gitRefsUrl,
      String treesUrl,
      String statusesUrl,
      Uri languagesUrl,
      Uri stargazersUrl,
      Uri contributorsUrl,
      Uri subscribersUrl,
      Uri subscriptionUrl,
      String commitsUrl,
      String gitCommitsUrl,
      String commentsUrl,
      String issueCommentUrl,
      String contentsUrl,
      String compareUrl,
      Uri mergesUrl,
      String archiveUrl,
      Uri downloadsUrl,
      String issuesUrl,
      String pullsUrl,
      String milestonesUrl,
      String notificationsUrl,
      String labelsUrl,
      String releasesUrl,
      Uri deploymentsUrl,
      String gitUrl,
      String sshUrl,
      String cloneUrl,
      Uri svnUrl,
      int forks,
      int openIssues,
      int watchers,
      List<String>? topics,
      Uri? mirrorUrl,
      bool hasIssues,
      bool hasProjects,
      bool hasPages,
      bool hasWiki,
      bool hasDownloads,
      bool? hasDiscussions,
      bool archived,
      bool disabled,
      String? visibility,
      SimpleLicense? license,
      RepositoryPermissions? permissions,
      List<TextMatch>? textMatches,
      String? tempCloneToken,
      bool? allowMergeCommit,
      bool? allowSquashMerge,
      bool? allowRebaseMerge,
      bool? allowAutoMerge,
      bool? deleteBranchOnMerge,
      bool? allowForking,
      bool? isTemplate,
      bool? webCommitSignoff});

  @override
  $SimpleUserCopyWith<$Res>? get owner;
  @override
  $SimpleLicenseCopyWith<$Res>? get license;
  @override
  $RepositoryPermissionsCopyWith<$Res>? get permissions;
}

/// @nodoc
class __$$RepositoryItemImplCopyWithImpl<$Res>
    extends _$RepositoryItemCopyWithImpl<$Res, _$RepositoryItemImpl>
    implements _$$RepositoryItemImplCopyWith<$Res> {
  __$$RepositoryItemImplCopyWithImpl(
      _$RepositoryItemImpl _value, $Res Function(_$RepositoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nodeId = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = freezed,
    Object? private = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? fork = null,
    Object? url = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pushedAt = freezed,
    Object? homepage = freezed,
    Object? size = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = freezed,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? masterBranch = freezed,
    Object? defaultBranch = null,
    Object? score = null,
    Object? forksUrl = null,
    Object? keysUrl = null,
    Object? collaboratorsUrl = null,
    Object? teamsUrl = null,
    Object? hooksUrl = null,
    Object? issueEventsUrl = null,
    Object? eventsUrl = null,
    Object? assigneesUrl = null,
    Object? branchesUrl = null,
    Object? tagsUrl = null,
    Object? blobsUrl = null,
    Object? gitTagsUrl = null,
    Object? gitRefsUrl = null,
    Object? treesUrl = null,
    Object? statusesUrl = null,
    Object? languagesUrl = null,
    Object? stargazersUrl = null,
    Object? contributorsUrl = null,
    Object? subscribersUrl = null,
    Object? subscriptionUrl = null,
    Object? commitsUrl = null,
    Object? gitCommitsUrl = null,
    Object? commentsUrl = null,
    Object? issueCommentUrl = null,
    Object? contentsUrl = null,
    Object? compareUrl = null,
    Object? mergesUrl = null,
    Object? archiveUrl = null,
    Object? downloadsUrl = null,
    Object? issuesUrl = null,
    Object? pullsUrl = null,
    Object? milestonesUrl = null,
    Object? notificationsUrl = null,
    Object? labelsUrl = null,
    Object? releasesUrl = null,
    Object? deploymentsUrl = null,
    Object? gitUrl = null,
    Object? sshUrl = null,
    Object? cloneUrl = null,
    Object? svnUrl = null,
    Object? forks = null,
    Object? openIssues = null,
    Object? watchers = null,
    Object? topics = freezed,
    Object? mirrorUrl = freezed,
    Object? hasIssues = null,
    Object? hasProjects = null,
    Object? hasPages = null,
    Object? hasWiki = null,
    Object? hasDownloads = null,
    Object? hasDiscussions = freezed,
    Object? archived = null,
    Object? disabled = null,
    Object? visibility = freezed,
    Object? license = freezed,
    Object? permissions = freezed,
    Object? textMatches = freezed,
    Object? tempCloneToken = freezed,
    Object? allowMergeCommit = freezed,
    Object? allowSquashMerge = freezed,
    Object? allowRebaseMerge = freezed,
    Object? allowAutoMerge = freezed,
    Object? deleteBranchOnMerge = freezed,
    Object? allowForking = freezed,
    Object? isTemplate = freezed,
    Object? webCommitSignoff = freezed,
  }) {
    return _then(_$RepositoryItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SimpleUser?,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: null == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushedAt: freezed == pushedAt
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      masterBranch: freezed == masterBranch
          ? _value.masterBranch
          : masterBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultBranch: null == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      forksUrl: null == forksUrl
          ? _value.forksUrl
          : forksUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      keysUrl: null == keysUrl
          ? _value.keysUrl
          : keysUrl // ignore: cast_nullable_to_non_nullable
              as String,
      collaboratorsUrl: null == collaboratorsUrl
          ? _value.collaboratorsUrl
          : collaboratorsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      teamsUrl: null == teamsUrl
          ? _value.teamsUrl
          : teamsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      hooksUrl: null == hooksUrl
          ? _value.hooksUrl
          : hooksUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      issueEventsUrl: null == issueEventsUrl
          ? _value.issueEventsUrl
          : issueEventsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      eventsUrl: null == eventsUrl
          ? _value.eventsUrl
          : eventsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      assigneesUrl: null == assigneesUrl
          ? _value.assigneesUrl
          : assigneesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      branchesUrl: null == branchesUrl
          ? _value.branchesUrl
          : branchesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tagsUrl: null == tagsUrl
          ? _value.tagsUrl
          : tagsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      blobsUrl: null == blobsUrl
          ? _value.blobsUrl
          : blobsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitTagsUrl: null == gitTagsUrl
          ? _value.gitTagsUrl
          : gitTagsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitRefsUrl: null == gitRefsUrl
          ? _value.gitRefsUrl
          : gitRefsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      treesUrl: null == treesUrl
          ? _value.treesUrl
          : treesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      statusesUrl: null == statusesUrl
          ? _value.statusesUrl
          : statusesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      languagesUrl: null == languagesUrl
          ? _value.languagesUrl
          : languagesUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      stargazersUrl: null == stargazersUrl
          ? _value.stargazersUrl
          : stargazersUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      contributorsUrl: null == contributorsUrl
          ? _value.contributorsUrl
          : contributorsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      subscribersUrl: null == subscribersUrl
          ? _value.subscribersUrl
          : subscribersUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      subscriptionUrl: null == subscriptionUrl
          ? _value.subscriptionUrl
          : subscriptionUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      commitsUrl: null == commitsUrl
          ? _value.commitsUrl
          : commitsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gitCommitsUrl: null == gitCommitsUrl
          ? _value.gitCommitsUrl
          : gitCommitsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      commentsUrl: null == commentsUrl
          ? _value.commentsUrl
          : commentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      issueCommentUrl: null == issueCommentUrl
          ? _value.issueCommentUrl
          : issueCommentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      contentsUrl: null == contentsUrl
          ? _value.contentsUrl
          : contentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      compareUrl: null == compareUrl
          ? _value.compareUrl
          : compareUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mergesUrl: null == mergesUrl
          ? _value.mergesUrl
          : mergesUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      archiveUrl: null == archiveUrl
          ? _value.archiveUrl
          : archiveUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadsUrl: null == downloadsUrl
          ? _value.downloadsUrl
          : downloadsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      issuesUrl: null == issuesUrl
          ? _value.issuesUrl
          : issuesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      pullsUrl: null == pullsUrl
          ? _value.pullsUrl
          : pullsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      milestonesUrl: null == milestonesUrl
          ? _value.milestonesUrl
          : milestonesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsUrl: null == notificationsUrl
          ? _value.notificationsUrl
          : notificationsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      labelsUrl: null == labelsUrl
          ? _value.labelsUrl
          : labelsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      releasesUrl: null == releasesUrl
          ? _value.releasesUrl
          : releasesUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deploymentsUrl: null == deploymentsUrl
          ? _value.deploymentsUrl
          : deploymentsUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      gitUrl: null == gitUrl
          ? _value.gitUrl
          : gitUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sshUrl: null == sshUrl
          ? _value.sshUrl
          : sshUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cloneUrl: null == cloneUrl
          ? _value.cloneUrl
          : cloneUrl // ignore: cast_nullable_to_non_nullable
              as String,
      svnUrl: null == svnUrl
          ? _value.svnUrl
          : svnUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      openIssues: null == openIssues
          ? _value.openIssues
          : openIssues // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: null == watchers
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mirrorUrl: freezed == mirrorUrl
          ? _value.mirrorUrl
          : mirrorUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      hasIssues: null == hasIssues
          ? _value.hasIssues
          : hasIssues // ignore: cast_nullable_to_non_nullable
              as bool,
      hasProjects: null == hasProjects
          ? _value.hasProjects
          : hasProjects // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPages: null == hasPages
          ? _value.hasPages
          : hasPages // ignore: cast_nullable_to_non_nullable
              as bool,
      hasWiki: null == hasWiki
          ? _value.hasWiki
          : hasWiki // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDownloads: null == hasDownloads
          ? _value.hasDownloads
          : hasDownloads // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscussions: freezed == hasDiscussions
          ? _value.hasDiscussions
          : hasDiscussions // ignore: cast_nullable_to_non_nullable
              as bool?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as SimpleLicense?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as RepositoryPermissions?,
      textMatches: freezed == textMatches
          ? _value._textMatches
          : textMatches // ignore: cast_nullable_to_non_nullable
              as List<TextMatch>?,
      tempCloneToken: freezed == tempCloneToken
          ? _value.tempCloneToken
          : tempCloneToken // ignore: cast_nullable_to_non_nullable
              as String?,
      allowMergeCommit: freezed == allowMergeCommit
          ? _value.allowMergeCommit
          : allowMergeCommit // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowSquashMerge: freezed == allowSquashMerge
          ? _value.allowSquashMerge
          : allowSquashMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowRebaseMerge: freezed == allowRebaseMerge
          ? _value.allowRebaseMerge
          : allowRebaseMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowAutoMerge: freezed == allowAutoMerge
          ? _value.allowAutoMerge
          : allowAutoMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleteBranchOnMerge: freezed == deleteBranchOnMerge
          ? _value.deleteBranchOnMerge
          : deleteBranchOnMerge // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowForking: freezed == allowForking
          ? _value.allowForking
          : allowForking // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTemplate: freezed == isTemplate
          ? _value.isTemplate
          : isTemplate // ignore: cast_nullable_to_non_nullable
              as bool?,
      webCommitSignoff: freezed == webCommitSignoff
          ? _value.webCommitSignoff
          : webCommitSignoff // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RepositoryItemImpl implements _RepositoryItem {
  const _$RepositoryItemImpl(
      {required this.id,
      required this.nodeId,
      required this.name,
      required this.fullName,
      required this.owner,
      required this.private,
      required this.htmlUrl,
      required this.description,
      required this.fork,
      required this.url,
      required this.createdAt,
      required this.updatedAt,
      this.pushedAt,
      required this.homepage,
      required this.size,
      required this.stargazersCount,
      required this.watchersCount,
      required this.language,
      required this.forksCount,
      required this.openIssuesCount,
      this.masterBranch,
      required this.defaultBranch,
      required this.score,
      required this.forksUrl,
      required this.keysUrl,
      required this.collaboratorsUrl,
      required this.teamsUrl,
      required this.hooksUrl,
      required this.issueEventsUrl,
      required this.eventsUrl,
      required this.assigneesUrl,
      required this.branchesUrl,
      required this.tagsUrl,
      required this.blobsUrl,
      required this.gitTagsUrl,
      required this.gitRefsUrl,
      required this.treesUrl,
      required this.statusesUrl,
      required this.languagesUrl,
      required this.stargazersUrl,
      required this.contributorsUrl,
      required this.subscribersUrl,
      required this.subscriptionUrl,
      required this.commitsUrl,
      required this.gitCommitsUrl,
      required this.commentsUrl,
      required this.issueCommentUrl,
      required this.contentsUrl,
      required this.compareUrl,
      required this.mergesUrl,
      required this.archiveUrl,
      required this.downloadsUrl,
      required this.issuesUrl,
      required this.pullsUrl,
      required this.milestonesUrl,
      required this.notificationsUrl,
      required this.labelsUrl,
      required this.releasesUrl,
      required this.deploymentsUrl,
      required this.gitUrl,
      required this.sshUrl,
      required this.cloneUrl,
      required this.svnUrl,
      required this.forks,
      required this.openIssues,
      required this.watchers,
      final List<String>? topics,
      required this.mirrorUrl,
      required this.hasIssues,
      required this.hasProjects,
      required this.hasPages,
      required this.hasWiki,
      required this.hasDownloads,
      this.hasDiscussions,
      required this.archived,
      required this.disabled,
      this.visibility,
      required this.license,
      this.permissions,
      final List<TextMatch>? textMatches,
      this.tempCloneToken,
      this.allowMergeCommit,
      this.allowSquashMerge,
      this.allowRebaseMerge,
      this.allowAutoMerge,
      this.deleteBranchOnMerge,
      this.allowForking,
      this.isTemplate,
      this.webCommitSignoff})
      : _topics = topics,
        _textMatches = textMatches;

  factory _$RepositoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryItemImplFromJson(json);

  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final SimpleUser? owner;
  @override
  final bool private;
  @override
  final Uri htmlUrl;
  @override
  final String? description;
  @override
  final bool fork;
  @override
  final Uri url;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
// スキーマではpushed_atはstringだが、実際のレスポンスはnullの場合がある
  @override
  final DateTime? pushedAt;
  @override
  final Uri? homepage;
  @override
  final int size;
  @override
  final int stargazersCount;
  @override
  final int watchersCount;
  @override
  final String? language;
  @override
  final int forksCount;
  @override
  final int openIssuesCount;
  @override
  final String? masterBranch;
  @override
  final String defaultBranch;
  @override
  final double score;
  @override
  final Uri forksUrl;
  @override
  final String keysUrl;
  @override
  final String collaboratorsUrl;
  @override
  final Uri teamsUrl;
  @override
  final Uri hooksUrl;
  @override
  final String issueEventsUrl;
  @override
  final Uri eventsUrl;
  @override
  final String assigneesUrl;
  @override
  final String branchesUrl;
  @override
  final Uri tagsUrl;
  @override
  final String blobsUrl;
  @override
  final String gitTagsUrl;
  @override
  final String gitRefsUrl;
  @override
  final String treesUrl;
  @override
  final String statusesUrl;
  @override
  final Uri languagesUrl;
  @override
  final Uri stargazersUrl;
  @override
  final Uri contributorsUrl;
  @override
  final Uri subscribersUrl;
  @override
  final Uri subscriptionUrl;
  @override
  final String commitsUrl;
  @override
  final String gitCommitsUrl;
  @override
  final String commentsUrl;
  @override
  final String issueCommentUrl;
  @override
  final String contentsUrl;
  @override
  final String compareUrl;
  @override
  final Uri mergesUrl;
  @override
  final String archiveUrl;
  @override
  final Uri downloadsUrl;
  @override
  final String issuesUrl;
  @override
  final String pullsUrl;
  @override
  final String milestonesUrl;
  @override
  final String notificationsUrl;
  @override
  final String labelsUrl;
  @override
  final String releasesUrl;
  @override
  final Uri deploymentsUrl;
  @override
  final String gitUrl;
  @override
  final String sshUrl;
  @override
  final String cloneUrl;
  @override
  final Uri svnUrl;
  @override
  final int forks;
  @override
  final int openIssues;
  @override
  final int watchers;
  final List<String>? _topics;
  @override
  List<String>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Uri? mirrorUrl;
  @override
  final bool hasIssues;
  @override
  final bool hasProjects;
  @override
  final bool hasPages;
  @override
  final bool hasWiki;
  @override
  final bool hasDownloads;
  @override
  final bool? hasDiscussions;
  @override
  final bool archived;
  @override
  final bool disabled;
  @override
  final String? visibility;
  @override
  final SimpleLicense? license;
  @override
  final RepositoryPermissions? permissions;
  final List<TextMatch>? _textMatches;
  @override
  List<TextMatch>? get textMatches {
    final value = _textMatches;
    if (value == null) return null;
    if (_textMatches is EqualUnmodifiableListView) return _textMatches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? tempCloneToken;
  @override
  final bool? allowMergeCommit;
  @override
  final bool? allowSquashMerge;
  @override
  final bool? allowRebaseMerge;
  @override
  final bool? allowAutoMerge;
  @override
  final bool? deleteBranchOnMerge;
  @override
  final bool? allowForking;
  @override
  final bool? isTemplate;
  @override
  final bool? webCommitSignoff;

  @override
  String toString() {
    return 'RepositoryItem(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, owner: $owner, private: $private, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, homepage: $homepage, size: $size, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, forksCount: $forksCount, openIssuesCount: $openIssuesCount, masterBranch: $masterBranch, defaultBranch: $defaultBranch, score: $score, forksUrl: $forksUrl, keysUrl: $keysUrl, collaboratorsUrl: $collaboratorsUrl, teamsUrl: $teamsUrl, hooksUrl: $hooksUrl, issueEventsUrl: $issueEventsUrl, eventsUrl: $eventsUrl, assigneesUrl: $assigneesUrl, branchesUrl: $branchesUrl, tagsUrl: $tagsUrl, blobsUrl: $blobsUrl, gitTagsUrl: $gitTagsUrl, gitRefsUrl: $gitRefsUrl, treesUrl: $treesUrl, statusesUrl: $statusesUrl, languagesUrl: $languagesUrl, stargazersUrl: $stargazersUrl, contributorsUrl: $contributorsUrl, subscribersUrl: $subscribersUrl, subscriptionUrl: $subscriptionUrl, commitsUrl: $commitsUrl, gitCommitsUrl: $gitCommitsUrl, commentsUrl: $commentsUrl, issueCommentUrl: $issueCommentUrl, contentsUrl: $contentsUrl, compareUrl: $compareUrl, mergesUrl: $mergesUrl, archiveUrl: $archiveUrl, downloadsUrl: $downloadsUrl, issuesUrl: $issuesUrl, pullsUrl: $pullsUrl, milestonesUrl: $milestonesUrl, notificationsUrl: $notificationsUrl, labelsUrl: $labelsUrl, releasesUrl: $releasesUrl, deploymentsUrl: $deploymentsUrl, gitUrl: $gitUrl, sshUrl: $sshUrl, cloneUrl: $cloneUrl, svnUrl: $svnUrl, forks: $forks, openIssues: $openIssues, watchers: $watchers, topics: $topics, mirrorUrl: $mirrorUrl, hasIssues: $hasIssues, hasProjects: $hasProjects, hasPages: $hasPages, hasWiki: $hasWiki, hasDownloads: $hasDownloads, hasDiscussions: $hasDiscussions, archived: $archived, disabled: $disabled, visibility: $visibility, license: $license, permissions: $permissions, textMatches: $textMatches, tempCloneToken: $tempCloneToken, allowMergeCommit: $allowMergeCommit, allowSquashMerge: $allowSquashMerge, allowRebaseMerge: $allowRebaseMerge, allowAutoMerge: $allowAutoMerge, deleteBranchOnMerge: $deleteBranchOnMerge, allowForking: $allowForking, isTemplate: $isTemplate, webCommitSignoff: $webCommitSignoff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fork, fork) || other.fork == fork) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pushedAt, pushedAt) ||
                other.pushedAt == pushedAt) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.masterBranch, masterBranch) ||
                other.masterBranch == masterBranch) &&
            (identical(other.defaultBranch, defaultBranch) ||
                other.defaultBranch == defaultBranch) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.forksUrl, forksUrl) ||
                other.forksUrl == forksUrl) &&
            (identical(other.keysUrl, keysUrl) || other.keysUrl == keysUrl) &&
            (identical(other.collaboratorsUrl, collaboratorsUrl) ||
                other.collaboratorsUrl == collaboratorsUrl) &&
            (identical(other.teamsUrl, teamsUrl) ||
                other.teamsUrl == teamsUrl) &&
            (identical(other.hooksUrl, hooksUrl) ||
                other.hooksUrl == hooksUrl) &&
            (identical(other.issueEventsUrl, issueEventsUrl) ||
                other.issueEventsUrl == issueEventsUrl) &&
            (identical(other.eventsUrl, eventsUrl) ||
                other.eventsUrl == eventsUrl) &&
            (identical(other.assigneesUrl, assigneesUrl) ||
                other.assigneesUrl == assigneesUrl) &&
            (identical(other.branchesUrl, branchesUrl) ||
                other.branchesUrl == branchesUrl) &&
            (identical(other.tagsUrl, tagsUrl) || other.tagsUrl == tagsUrl) &&
            (identical(other.blobsUrl, blobsUrl) ||
                other.blobsUrl == blobsUrl) &&
            (identical(other.gitTagsUrl, gitTagsUrl) ||
                other.gitTagsUrl == gitTagsUrl) &&
            (identical(other.gitRefsUrl, gitRefsUrl) ||
                other.gitRefsUrl == gitRefsUrl) &&
            (identical(other.treesUrl, treesUrl) ||
                other.treesUrl == treesUrl) &&
            (identical(other.statusesUrl, statusesUrl) ||
                other.statusesUrl == statusesUrl) &&
            (identical(other.languagesUrl, languagesUrl) ||
                other.languagesUrl == languagesUrl) &&
            (identical(other.stargazersUrl, stargazersUrl) ||
                other.stargazersUrl == stargazersUrl) &&
            (identical(other.contributorsUrl, contributorsUrl) ||
                other.contributorsUrl == contributorsUrl) &&
            (identical(other.subscribersUrl, subscribersUrl) ||
                other.subscribersUrl == subscribersUrl) &&
            (identical(other.subscriptionUrl, subscriptionUrl) ||
                other.subscriptionUrl == subscriptionUrl) &&
            (identical(other.commitsUrl, commitsUrl) ||
                other.commitsUrl == commitsUrl) &&
            (identical(other.gitCommitsUrl, gitCommitsUrl) ||
                other.gitCommitsUrl == gitCommitsUrl) &&
            (identical(other.commentsUrl, commentsUrl) ||
                other.commentsUrl == commentsUrl) &&
            (identical(other.issueCommentUrl, issueCommentUrl) ||
                other.issueCommentUrl == issueCommentUrl) &&
            (identical(other.contentsUrl, contentsUrl) ||
                other.contentsUrl == contentsUrl) &&
            (identical(other.compareUrl, compareUrl) ||
                other.compareUrl == compareUrl) &&
            (identical(other.mergesUrl, mergesUrl) ||
                other.mergesUrl == mergesUrl) &&
            (identical(other.archiveUrl, archiveUrl) ||
                other.archiveUrl == archiveUrl) &&
            (identical(other.downloadsUrl, downloadsUrl) ||
                other.downloadsUrl == downloadsUrl) &&
            (identical(other.issuesUrl, issuesUrl) ||
                other.issuesUrl == issuesUrl) &&
            (identical(other.pullsUrl, pullsUrl) ||
                other.pullsUrl == pullsUrl) &&
            (identical(other.milestonesUrl, milestonesUrl) ||
                other.milestonesUrl == milestonesUrl) &&
            (identical(other.notificationsUrl, notificationsUrl) || other.notificationsUrl == notificationsUrl) &&
            (identical(other.labelsUrl, labelsUrl) || other.labelsUrl == labelsUrl) &&
            (identical(other.releasesUrl, releasesUrl) || other.releasesUrl == releasesUrl) &&
            (identical(other.deploymentsUrl, deploymentsUrl) || other.deploymentsUrl == deploymentsUrl) &&
            (identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl) &&
            (identical(other.sshUrl, sshUrl) || other.sshUrl == sshUrl) &&
            (identical(other.cloneUrl, cloneUrl) || other.cloneUrl == cloneUrl) &&
            (identical(other.svnUrl, svnUrl) || other.svnUrl == svnUrl) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.openIssues, openIssues) || other.openIssues == openIssues) &&
            (identical(other.watchers, watchers) || other.watchers == watchers) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.mirrorUrl, mirrorUrl) || other.mirrorUrl == mirrorUrl) &&
            (identical(other.hasIssues, hasIssues) || other.hasIssues == hasIssues) &&
            (identical(other.hasProjects, hasProjects) || other.hasProjects == hasProjects) &&
            (identical(other.hasPages, hasPages) || other.hasPages == hasPages) &&
            (identical(other.hasWiki, hasWiki) || other.hasWiki == hasWiki) &&
            (identical(other.hasDownloads, hasDownloads) || other.hasDownloads == hasDownloads) &&
            (identical(other.hasDiscussions, hasDiscussions) || other.hasDiscussions == hasDiscussions) &&
            (identical(other.archived, archived) || other.archived == archived) &&
            (identical(other.disabled, disabled) || other.disabled == disabled) &&
            (identical(other.visibility, visibility) || other.visibility == visibility) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.permissions, permissions) || other.permissions == permissions) &&
            const DeepCollectionEquality().equals(other._textMatches, _textMatches) &&
            (identical(other.tempCloneToken, tempCloneToken) || other.tempCloneToken == tempCloneToken) &&
            (identical(other.allowMergeCommit, allowMergeCommit) || other.allowMergeCommit == allowMergeCommit) &&
            (identical(other.allowSquashMerge, allowSquashMerge) || other.allowSquashMerge == allowSquashMerge) &&
            (identical(other.allowRebaseMerge, allowRebaseMerge) || other.allowRebaseMerge == allowRebaseMerge) &&
            (identical(other.allowAutoMerge, allowAutoMerge) || other.allowAutoMerge == allowAutoMerge) &&
            (identical(other.deleteBranchOnMerge, deleteBranchOnMerge) || other.deleteBranchOnMerge == deleteBranchOnMerge) &&
            (identical(other.allowForking, allowForking) || other.allowForking == allowForking) &&
            (identical(other.isTemplate, isTemplate) || other.isTemplate == isTemplate) &&
            (identical(other.webCommitSignoff, webCommitSignoff) || other.webCommitSignoff == webCommitSignoff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        nodeId,
        name,
        fullName,
        owner,
        private,
        htmlUrl,
        description,
        fork,
        url,
        createdAt,
        updatedAt,
        pushedAt,
        homepage,
        size,
        stargazersCount,
        watchersCount,
        language,
        forksCount,
        openIssuesCount,
        masterBranch,
        defaultBranch,
        score,
        forksUrl,
        keysUrl,
        collaboratorsUrl,
        teamsUrl,
        hooksUrl,
        issueEventsUrl,
        eventsUrl,
        assigneesUrl,
        branchesUrl,
        tagsUrl,
        blobsUrl,
        gitTagsUrl,
        gitRefsUrl,
        treesUrl,
        statusesUrl,
        languagesUrl,
        stargazersUrl,
        contributorsUrl,
        subscribersUrl,
        subscriptionUrl,
        commitsUrl,
        gitCommitsUrl,
        commentsUrl,
        issueCommentUrl,
        contentsUrl,
        compareUrl,
        mergesUrl,
        archiveUrl,
        downloadsUrl,
        issuesUrl,
        pullsUrl,
        milestonesUrl,
        notificationsUrl,
        labelsUrl,
        releasesUrl,
        deploymentsUrl,
        gitUrl,
        sshUrl,
        cloneUrl,
        svnUrl,
        forks,
        openIssues,
        watchers,
        const DeepCollectionEquality().hash(_topics),
        mirrorUrl,
        hasIssues,
        hasProjects,
        hasPages,
        hasWiki,
        hasDownloads,
        hasDiscussions,
        archived,
        disabled,
        visibility,
        license,
        permissions,
        const DeepCollectionEquality().hash(_textMatches),
        tempCloneToken,
        allowMergeCommit,
        allowSquashMerge,
        allowRebaseMerge,
        allowAutoMerge,
        deleteBranchOnMerge,
        allowForking,
        isTemplate,
        webCommitSignoff
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryItemImplCopyWith<_$RepositoryItemImpl> get copyWith =>
      __$$RepositoryItemImplCopyWithImpl<_$RepositoryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryItemImplToJson(
      this,
    );
  }
}

abstract class _RepositoryItem implements RepositoryItem {
  const factory _RepositoryItem(
      {required final int id,
      required final String nodeId,
      required final String name,
      required final String fullName,
      required final SimpleUser? owner,
      required final bool private,
      required final Uri htmlUrl,
      required final String? description,
      required final bool fork,
      required final Uri url,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? pushedAt,
      required final Uri? homepage,
      required final int size,
      required final int stargazersCount,
      required final int watchersCount,
      required final String? language,
      required final int forksCount,
      required final int openIssuesCount,
      final String? masterBranch,
      required final String defaultBranch,
      required final double score,
      required final Uri forksUrl,
      required final String keysUrl,
      required final String collaboratorsUrl,
      required final Uri teamsUrl,
      required final Uri hooksUrl,
      required final String issueEventsUrl,
      required final Uri eventsUrl,
      required final String assigneesUrl,
      required final String branchesUrl,
      required final Uri tagsUrl,
      required final String blobsUrl,
      required final String gitTagsUrl,
      required final String gitRefsUrl,
      required final String treesUrl,
      required final String statusesUrl,
      required final Uri languagesUrl,
      required final Uri stargazersUrl,
      required final Uri contributorsUrl,
      required final Uri subscribersUrl,
      required final Uri subscriptionUrl,
      required final String commitsUrl,
      required final String gitCommitsUrl,
      required final String commentsUrl,
      required final String issueCommentUrl,
      required final String contentsUrl,
      required final String compareUrl,
      required final Uri mergesUrl,
      required final String archiveUrl,
      required final Uri downloadsUrl,
      required final String issuesUrl,
      required final String pullsUrl,
      required final String milestonesUrl,
      required final String notificationsUrl,
      required final String labelsUrl,
      required final String releasesUrl,
      required final Uri deploymentsUrl,
      required final String gitUrl,
      required final String sshUrl,
      required final String cloneUrl,
      required final Uri svnUrl,
      required final int forks,
      required final int openIssues,
      required final int watchers,
      final List<String>? topics,
      required final Uri? mirrorUrl,
      required final bool hasIssues,
      required final bool hasProjects,
      required final bool hasPages,
      required final bool hasWiki,
      required final bool hasDownloads,
      final bool? hasDiscussions,
      required final bool archived,
      required final bool disabled,
      final String? visibility,
      required final SimpleLicense? license,
      final RepositoryPermissions? permissions,
      final List<TextMatch>? textMatches,
      final String? tempCloneToken,
      final bool? allowMergeCommit,
      final bool? allowSquashMerge,
      final bool? allowRebaseMerge,
      final bool? allowAutoMerge,
      final bool? deleteBranchOnMerge,
      final bool? allowForking,
      final bool? isTemplate,
      final bool? webCommitSignoff}) = _$RepositoryItemImpl;

  factory _RepositoryItem.fromJson(Map<String, dynamic> json) =
      _$RepositoryItemImpl.fromJson;

  @override
  int get id;
  @override
  String get nodeId;
  @override
  String get name;
  @override
  String get fullName;
  @override
  SimpleUser? get owner;
  @override
  bool get private;
  @override
  Uri get htmlUrl;
  @override
  String? get description;
  @override
  bool get fork;
  @override
  Uri get url;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override // スキーマではpushed_atはstringだが、実際のレスポンスはnullの場合がある
  DateTime? get pushedAt;
  @override
  Uri? get homepage;
  @override
  int get size;
  @override
  int get stargazersCount;
  @override
  int get watchersCount;
  @override
  String? get language;
  @override
  int get forksCount;
  @override
  int get openIssuesCount;
  @override
  String? get masterBranch;
  @override
  String get defaultBranch;
  @override
  double get score;
  @override
  Uri get forksUrl;
  @override
  String get keysUrl;
  @override
  String get collaboratorsUrl;
  @override
  Uri get teamsUrl;
  @override
  Uri get hooksUrl;
  @override
  String get issueEventsUrl;
  @override
  Uri get eventsUrl;
  @override
  String get assigneesUrl;
  @override
  String get branchesUrl;
  @override
  Uri get tagsUrl;
  @override
  String get blobsUrl;
  @override
  String get gitTagsUrl;
  @override
  String get gitRefsUrl;
  @override
  String get treesUrl;
  @override
  String get statusesUrl;
  @override
  Uri get languagesUrl;
  @override
  Uri get stargazersUrl;
  @override
  Uri get contributorsUrl;
  @override
  Uri get subscribersUrl;
  @override
  Uri get subscriptionUrl;
  @override
  String get commitsUrl;
  @override
  String get gitCommitsUrl;
  @override
  String get commentsUrl;
  @override
  String get issueCommentUrl;
  @override
  String get contentsUrl;
  @override
  String get compareUrl;
  @override
  Uri get mergesUrl;
  @override
  String get archiveUrl;
  @override
  Uri get downloadsUrl;
  @override
  String get issuesUrl;
  @override
  String get pullsUrl;
  @override
  String get milestonesUrl;
  @override
  String get notificationsUrl;
  @override
  String get labelsUrl;
  @override
  String get releasesUrl;
  @override
  Uri get deploymentsUrl;
  @override
  String get gitUrl;
  @override
  String get sshUrl;
  @override
  String get cloneUrl;
  @override
  Uri get svnUrl;
  @override
  int get forks;
  @override
  int get openIssues;
  @override
  int get watchers;
  @override
  List<String>? get topics;
  @override
  Uri? get mirrorUrl;
  @override
  bool get hasIssues;
  @override
  bool get hasProjects;
  @override
  bool get hasPages;
  @override
  bool get hasWiki;
  @override
  bool get hasDownloads;
  @override
  bool? get hasDiscussions;
  @override
  bool get archived;
  @override
  bool get disabled;
  @override
  String? get visibility;
  @override
  SimpleLicense? get license;
  @override
  RepositoryPermissions? get permissions;
  @override
  List<TextMatch>? get textMatches;
  @override
  String? get tempCloneToken;
  @override
  bool? get allowMergeCommit;
  @override
  bool? get allowSquashMerge;
  @override
  bool? get allowRebaseMerge;
  @override
  bool? get allowAutoMerge;
  @override
  bool? get deleteBranchOnMerge;
  @override
  bool? get allowForking;
  @override
  bool? get isTemplate;
  @override
  bool? get webCommitSignoff;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryItemImplCopyWith<_$RepositoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
