// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryResponseImpl _$$RepositoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryResponseImpl(
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: SimpleUser.fromJson(json['owner'] as Map<String, dynamic>),
      private: json['private'] as bool,
      htmlUrl: Uri.parse(json['html_url'] as String),
      description: json['description'] as String?,
      fork: json['fork'] as bool,
      url: Uri.parse(json['url'] as String),
      archiveUrl: json['archive_url'] as String,
      assigneesUrl: json['assignees_url'] as String,
      blobsUrl: json['blobs_url'] as String,
      branchesUrl: json['branches_url'] as String,
      collaboratorsUrl: json['collaborators_url'] as String,
      commentsUrl: json['comments_url'] as String,
      commitsUrl: json['commits_url'] as String,
      compareUrl: json['compare_url'] as String,
      contentsUrl: json['contents_url'] as String,
      contributorsUrl: Uri.parse(json['contributors_url'] as String),
      deploymentsUrl: Uri.parse(json['deployments_url'] as String),
      downloadsUrl: Uri.parse(json['downloads_url'] as String),
      eventsUrl: Uri.parse(json['events_url'] as String),
      forksUrl: Uri.parse(json['forks_url'] as String),
      gitCommitsUrl: json['git_commits_url'] as String,
      gitRefsUrl: json['git_refs_url'] as String,
      gitTagsUrl: json['git_tags_url'] as String,
      gitUrl: json['git_url'] as String,
      issueCommentUrl: json['issue_comment_url'] as String,
      issueEventsUrl: json['issue_events_url'] as String,
      issuesUrl: json['issues_url'] as String,
      keysUrl: json['keys_url'] as String,
      labelsUrl: json['labels_url'] as String,
      languagesUrl: Uri.parse(json['languages_url'] as String),
      mergesUrl: Uri.parse(json['merges_url'] as String),
      milestonesUrl: json['milestones_url'] as String,
      notificationsUrl: json['notifications_url'] as String,
      pullsUrl: json['pulls_url'] as String,
      releasesUrl: json['releases_url'] as String,
      sshUrl: json['ssh_url'] as String,
      stargazersUrl: Uri.parse(json['stargazers_url'] as String),
      statusesUrl: json['statuses_url'] as String,
      subscribersUrl: Uri.parse(json['subscribers_url'] as String),
      subscriptionUrl: Uri.parse(json['subscription_url'] as String),
      tagsUrl: Uri.parse(json['tags_url'] as String),
      teamsUrl: Uri.parse(json['teams_url'] as String),
      treesUrl: json['trees_url'] as String,
      cloneUrl: json['clone_url'] as String,
      mirrorUrl: json['mirror_url'] == null
          ? null
          : Uri.parse(json['mirror_url'] as String),
      hooksUrl: Uri.parse(json['hooks_url'] as String),
      svnUrl: Uri.parse(json['svn_url'] as String),
      homepage: json['homepage'] == null
          ? null
          : Uri.parse(json['homepage'] as String),
      language: json['language'] as String?,
      forksCount: (json['forks_count'] as num).toInt(),
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      watchersCount: (json['watchers_count'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      defaultBranch: json['default_branch'] as String,
      openIssuesCount: (json['open_issues_count'] as num).toInt(),
      isTemplate: json['is_template'] as bool?,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hasIssues: json['has_issues'] as bool,
      hasProjects: json['has_projects'] as bool,
      hasWiki: json['has_wiki'] as bool,
      hasPages: json['has_pages'] as bool,
      hasDownloads: json['has_downloads'] as bool?,
      hasDiscussions: json['has_discussions'] as bool,
      archived: json['archived'] as bool,
      disabled: json['disabled'] as bool,
      visibility: json['visibility'] as String?,
      pushedAt: DateTime.parse(json['pushed_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      permissions: json['permissions'] == null
          ? null
          : RepositoryPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      allowRebaseMerge: json['allow_rebase_merge'] as bool?,
      templateRepository: json['template_repository'] == null
          ? null
          : Repository.fromJson(
              json['template_repository'] as Map<String, dynamic>),
      tempCloneToken: json['temp_clone_token'] as String?,
      allowSquashMerge: json['allow_squash_merge'] as bool?,
      allowAutoMerge: json['allow_auto_merge'] as bool?,
      deleteBranchOnMerge: json['delete_branch_on_merge'] as bool?,
      allowMergeCommit: json['allow_merge_commit'] as bool?,
      allowUpdateMerge: json['allow_update_merge'] as bool?,
      useSquashPrTitleAsDefault:
          json['use_squash_pr_title_as_default'] as bool?,
      squashMergeCommitTitle: $enumDecodeNullable(
          _$SquashMergeCommitTitleEnumMap, json['squash_merge_commit_title']),
      squashMergeCommitMessage: $enumDecodeNullable(
          _$SquashMergeCommitMessageEnumMap,
          json['squash_merge_commit_message']),
      mergeCommitTitle: $enumDecodeNullable(
          _$MergeCommitTItleEnumMap, json['merge_commit_title']),
      mergeCommitMessage: $enumDecodeNullable(
          _$MergeCommitMessageEnumMap, json['merge_commit_message']),
      allowForking: json['allow_forking'] as bool?,
      webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
      subscribersCount: (json['subscribers_count'] as num).toInt(),
      networkCount: (json['network_count'] as num).toInt(),
      license: json['license'] == null
          ? null
          : SimpleLicense.fromJson(json['license'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : SimpleUser.fromJson(json['organization'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? null
          : Repository.fromJson(json['parent'] as Map<String, dynamic>),
      source: json['source'] == null
          ? null
          : Repository.fromJson(json['source'] as Map<String, dynamic>),
      forks: (json['forks'] as num).toInt(),
      masterBranch: json['master_branch'] as String?,
      openIssues: (json['open_issues'] as num).toInt(),
      watchers: (json['watchers'] as num).toInt(),
      anonymousAccessEnabled: json['anonymous_access_enabled'] as bool? ?? true,
      codeOfConduct: json['code_of_conduct'] == null
          ? null
          : SimpleCodeOfConduct.fromJson(
              json['code_of_conduct'] as Map<String, dynamic>),
      securityAndAnalysis: json['security_and_analysis'] == null
          ? null
          : SecurityAndAnalysis.fromJson(
              json['security_and_analysis'] as Map<String, dynamic>),
      customProperties: json['custom_properties'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RepositoryResponseImplToJson(
        _$RepositoryResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'private': instance.private,
      'html_url': instance.htmlUrl.toString(),
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url.toString(),
      'archive_url': instance.archiveUrl,
      'assignees_url': instance.assigneesUrl,
      'blobs_url': instance.blobsUrl,
      'branches_url': instance.branchesUrl,
      'collaborators_url': instance.collaboratorsUrl,
      'comments_url': instance.commentsUrl,
      'commits_url': instance.commitsUrl,
      'compare_url': instance.compareUrl,
      'contents_url': instance.contentsUrl,
      'contributors_url': instance.contributorsUrl.toString(),
      'deployments_url': instance.deploymentsUrl.toString(),
      'downloads_url': instance.downloadsUrl.toString(),
      'events_url': instance.eventsUrl.toString(),
      'forks_url': instance.forksUrl.toString(),
      'git_commits_url': instance.gitCommitsUrl,
      'git_refs_url': instance.gitRefsUrl,
      'git_tags_url': instance.gitTagsUrl,
      'git_url': instance.gitUrl,
      'issue_comment_url': instance.issueCommentUrl,
      'issue_events_url': instance.issueEventsUrl,
      'issues_url': instance.issuesUrl,
      'keys_url': instance.keysUrl,
      'labels_url': instance.labelsUrl,
      'languages_url': instance.languagesUrl.toString(),
      'merges_url': instance.mergesUrl.toString(),
      'milestones_url': instance.milestonesUrl,
      'notifications_url': instance.notificationsUrl,
      'pulls_url': instance.pullsUrl,
      'releases_url': instance.releasesUrl,
      'ssh_url': instance.sshUrl,
      'stargazers_url': instance.stargazersUrl.toString(),
      'statuses_url': instance.statusesUrl,
      'subscribers_url': instance.subscribersUrl.toString(),
      'subscription_url': instance.subscriptionUrl.toString(),
      'tags_url': instance.tagsUrl.toString(),
      'teams_url': instance.teamsUrl.toString(),
      'trees_url': instance.treesUrl,
      'clone_url': instance.cloneUrl,
      'mirror_url': instance.mirrorUrl?.toString(),
      'hooks_url': instance.hooksUrl.toString(),
      'svn_url': instance.svnUrl.toString(),
      'homepage': instance.homepage?.toString(),
      'language': instance.language,
      'forks_count': instance.forksCount,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'size': instance.size,
      'default_branch': instance.defaultBranch,
      'open_issues_count': instance.openIssuesCount,
      'is_template': instance.isTemplate,
      'topics': instance.topics,
      'has_issues': instance.hasIssues,
      'has_projects': instance.hasProjects,
      'has_wiki': instance.hasWiki,
      'has_pages': instance.hasPages,
      'has_downloads': instance.hasDownloads,
      'has_discussions': instance.hasDiscussions,
      'archived': instance.archived,
      'disabled': instance.disabled,
      'visibility': instance.visibility,
      'pushed_at': instance.pushedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'permissions': instance.permissions,
      'allow_rebase_merge': instance.allowRebaseMerge,
      'template_repository': instance.templateRepository,
      'temp_clone_token': instance.tempCloneToken,
      'allow_squash_merge': instance.allowSquashMerge,
      'allow_auto_merge': instance.allowAutoMerge,
      'delete_branch_on_merge': instance.deleteBranchOnMerge,
      'allow_merge_commit': instance.allowMergeCommit,
      'allow_update_merge': instance.allowUpdateMerge,
      'use_squash_pr_title_as_default': instance.useSquashPrTitleAsDefault,
      'squash_merge_commit_title':
          _$SquashMergeCommitTitleEnumMap[instance.squashMergeCommitTitle],
      'squash_merge_commit_message':
          _$SquashMergeCommitMessageEnumMap[instance.squashMergeCommitMessage],
      'merge_commit_title':
          _$MergeCommitTItleEnumMap[instance.mergeCommitTitle],
      'merge_commit_message':
          _$MergeCommitMessageEnumMap[instance.mergeCommitMessage],
      'allow_forking': instance.allowForking,
      'web_commit_signoff_required': instance.webCommitSignoffRequired,
      'subscribers_count': instance.subscribersCount,
      'network_count': instance.networkCount,
      'license': instance.license,
      'organization': instance.organization,
      'parent': instance.parent,
      'source': instance.source,
      'forks': instance.forks,
      'master_branch': instance.masterBranch,
      'open_issues': instance.openIssues,
      'watchers': instance.watchers,
      'anonymous_access_enabled': instance.anonymousAccessEnabled,
      'code_of_conduct': instance.codeOfConduct,
      'security_and_analysis': instance.securityAndAnalysis,
      'custom_properties': instance.customProperties,
    };

const _$SquashMergeCommitTitleEnumMap = {
  SquashMergeCommitTitle.prTitle: 'PR_TITLE',
  SquashMergeCommitTitle.commitOrPrTitle: 'COMMIT_OR_PR_TITLE',
};

const _$SquashMergeCommitMessageEnumMap = {
  SquashMergeCommitMessage.prBody: 'PR_BODY',
  SquashMergeCommitMessage.commitMessages: 'COMMIT_MESSAGES',
  SquashMergeCommitMessage.blank: 'BLANK',
};

const _$MergeCommitTItleEnumMap = {
  MergeCommitTItle.prTitle: 'PR_TITLE',
  MergeCommitTItle.mergeMessage: 'MERGE_MESSAGE',
};

const _$MergeCommitMessageEnumMap = {
  MergeCommitMessage.prBody: 'PR_BODY',
  MergeCommitMessage.prTitle: 'PR_TITLE',
  MergeCommitMessage.blank: 'BLANK',
};

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      id: (json['id'] as num).toInt(),
      nodeId: json['nodeId'] as String,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      license: json['license'] == null
          ? null
          : SimpleLicense.fromJson(json['license'] as Map<String, dynamic>),
      forks: (json['forks'] as num).toInt(),
      permissions: json['permissions'] == null
          ? null
          : RepositoryPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      owner: SimpleUser.fromJson(json['owner'] as Map<String, dynamic>),
      private: json['private'] as bool,
      htmlUrl: Uri.parse(json['htmlUrl'] as String),
      description: json['description'] as String?,
      fork: json['fork'] as bool,
      url: Uri.parse(json['url'] as String),
      archiveUrl: json['archiveUrl'] as String,
      assigneesUrl: json['assigneesUrl'] as String,
      blobsUrl: json['blobsUrl'] as String,
      branchesUrl: json['branchesUrl'] as String,
      collaboratorsUrl: json['collaboratorsUrl'] as String,
      commentsUrl: json['commentsUrl'] as String,
      commitsUrl: json['commitsUrl'] as String,
      compareUrl: json['compareUrl'] as String,
      contentsUrl: json['contentsUrl'] as String,
      contributorsUrl: Uri.parse(json['contributorsUrl'] as String),
      deploymentsUrl: Uri.parse(json['deploymentsUrl'] as String),
      downloadsUrl: Uri.parse(json['downloadsUrl'] as String),
      eventsUrl: Uri.parse(json['eventsUrl'] as String),
      forksUrl: Uri.parse(json['forksUrl'] as String),
      gitCommitsUrl: json['gitCommitsUrl'] as String,
      gitRefsUrl: json['gitRefsUrl'] as String,
      gitTagsUrl: json['gitTagsUrl'] as String,
      gitUrl: json['gitUrl'] as String,
      issueCommentUrl: json['issueCommentUrl'] as String,
      issueEventsUrl: json['issueEventsUrl'] as String,
      issuesUrl: json['issuesUrl'] as String,
      keysUrl: json['keysUrl'] as String,
      labelsUrl: json['labelsUrl'] as String,
      languagesUrl: Uri.parse(json['languagesUrl'] as String),
      mergesUrl: Uri.parse(json['mergesUrl'] as String),
      milestonesUrl: json['milestonesUrl'] as String,
      notificationsUrl: json['notificationsUrl'] as String,
      pullsUrl: json['pullsUrl'] as String,
      releasesUrl: json['releasesUrl'] as String,
      sshUrl: json['sshUrl'] as String,
      stargazersUrl: Uri.parse(json['stargazersUrl'] as String),
      statusesUrl: json['statusesUrl'] as String,
      subscribersUrl: Uri.parse(json['subscribersUrl'] as String),
      subscriptionUrl: Uri.parse(json['subscriptionUrl'] as String),
      tagsUrl: Uri.parse(json['tagsUrl'] as String),
      teamsUrl: Uri.parse(json['teamsUrl'] as String),
      treesUrl: json['treesUrl'] as String,
      cloneUrl: json['cloneUrl'] as String,
      mirrorUrl: json['mirrorUrl'] == null
          ? null
          : Uri.parse(json['mirrorUrl'] as String),
      hooksUrl: Uri.parse(json['hooksUrl'] as String),
      svnUrl: Uri.parse(json['svnUrl'] as String),
      homepage: json['homepage'] == null
          ? null
          : Uri.parse(json['homepage'] as String),
      language: json['language'] as String?,
      forksCount: (json['forksCount'] as num).toInt(),
      stargazersCount: (json['stargazersCount'] as num).toInt(),
      watchersCount: (json['watchersCount'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      defaultBranch: json['defaultBranch'] as String,
      openIssuesCount: (json['openIssuesCount'] as num).toInt(),
      isTemplate: json['isTemplate'] as bool? ?? false,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hasIssues: json['hasIssues'] as bool,
      hasProjects: json['hasProjects'] as bool,
      hasWiki: json['hasWiki'] as bool,
      hasPages: json['hasPages'] as bool,
      hasDownloads: json['hasDownloads'] as bool,
      hasDiscussions: json['hasDiscussions'] as bool? ?? false,
      archived: json['archived'] as bool,
      disabled: json['disabled'] as bool,
      visibility: json['visibility'] as String? ?? 'public',
      pushedAt: json['pushedAt'] == null
          ? null
          : DateTime.parse(json['pushedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      allowRebaseMerge: json['allowRebaseMerge'] as bool? ?? true,
      allowAutoMerge: json['allowAutoMerge'] as bool? ?? false,
      deleteBranchOnMerge: json['deleteBranchOnMerge'] as bool? ?? false,
      allowUpdateBranch: json['allowUpdateBranch'] as bool? ?? false,
      useSquashPrTitleAsDefault:
          json['useSquashPrTitleAsDefault'] as bool? ?? false,
      squashMergeCommitTitle: $enumDecodeNullable(
          _$SquashMergeCommitTitleEnumMap, json['squashMergeCommitTitle']),
      squashMergeCommitMessage: $enumDecodeNullable(
          _$SquashMergeCommitMessageEnumMap, json['squashMergeCommitMessage']),
      mergeCommitTitle: $enumDecodeNullable(
          _$MergeCommitTItleEnumMap, json['mergeCommitTitle']),
      mergeCommitMessage: $enumDecodeNullable(
          _$MergeCommitMessageEnumMap, json['mergeCommitMessage']),
      allowMergeCommit: json['allowMergeCommit'] as bool? ?? true,
      allowForking: json['allowForking'] as bool?,
      webCommitSignoffRequired:
          json['webCommitSignoffRequired'] as bool? ?? false,
      openIssues: (json['openIssues'] as num).toInt(),
      watchers: (json['watchers'] as num).toInt(),
      masterBranch: json['masterBranch'] as String?,
      starredAt: json['starredAt'] as String?,
      anonymousAccessEnabled: json['anonymousAccessEnabled'] as bool?,
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nodeId': instance.nodeId,
      'name': instance.name,
      'fullName': instance.fullName,
      'license': instance.license,
      'forks': instance.forks,
      'permissions': instance.permissions,
      'owner': instance.owner,
      'private': instance.private,
      'htmlUrl': instance.htmlUrl.toString(),
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url.toString(),
      'archiveUrl': instance.archiveUrl,
      'assigneesUrl': instance.assigneesUrl,
      'blobsUrl': instance.blobsUrl,
      'branchesUrl': instance.branchesUrl,
      'collaboratorsUrl': instance.collaboratorsUrl,
      'commentsUrl': instance.commentsUrl,
      'commitsUrl': instance.commitsUrl,
      'compareUrl': instance.compareUrl,
      'contentsUrl': instance.contentsUrl,
      'contributorsUrl': instance.contributorsUrl.toString(),
      'deploymentsUrl': instance.deploymentsUrl.toString(),
      'downloadsUrl': instance.downloadsUrl.toString(),
      'eventsUrl': instance.eventsUrl.toString(),
      'forksUrl': instance.forksUrl.toString(),
      'gitCommitsUrl': instance.gitCommitsUrl,
      'gitRefsUrl': instance.gitRefsUrl,
      'gitTagsUrl': instance.gitTagsUrl,
      'gitUrl': instance.gitUrl,
      'issueCommentUrl': instance.issueCommentUrl,
      'issueEventsUrl': instance.issueEventsUrl,
      'issuesUrl': instance.issuesUrl,
      'keysUrl': instance.keysUrl,
      'labelsUrl': instance.labelsUrl,
      'languagesUrl': instance.languagesUrl.toString(),
      'mergesUrl': instance.mergesUrl.toString(),
      'milestonesUrl': instance.milestonesUrl,
      'notificationsUrl': instance.notificationsUrl,
      'pullsUrl': instance.pullsUrl,
      'releasesUrl': instance.releasesUrl,
      'sshUrl': instance.sshUrl,
      'stargazersUrl': instance.stargazersUrl.toString(),
      'statusesUrl': instance.statusesUrl,
      'subscribersUrl': instance.subscribersUrl.toString(),
      'subscriptionUrl': instance.subscriptionUrl.toString(),
      'tagsUrl': instance.tagsUrl.toString(),
      'teamsUrl': instance.teamsUrl.toString(),
      'treesUrl': instance.treesUrl,
      'cloneUrl': instance.cloneUrl,
      'mirrorUrl': instance.mirrorUrl?.toString(),
      'hooksUrl': instance.hooksUrl.toString(),
      'svnUrl': instance.svnUrl.toString(),
      'homepage': instance.homepage?.toString(),
      'language': instance.language,
      'forksCount': instance.forksCount,
      'stargazersCount': instance.stargazersCount,
      'watchersCount': instance.watchersCount,
      'size': instance.size,
      'defaultBranch': instance.defaultBranch,
      'openIssuesCount': instance.openIssuesCount,
      'isTemplate': instance.isTemplate,
      'topics': instance.topics,
      'hasIssues': instance.hasIssues,
      'hasProjects': instance.hasProjects,
      'hasWiki': instance.hasWiki,
      'hasPages': instance.hasPages,
      'hasDownloads': instance.hasDownloads,
      'hasDiscussions': instance.hasDiscussions,
      'archived': instance.archived,
      'disabled': instance.disabled,
      'visibility': instance.visibility,
      'pushedAt': instance.pushedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'allowRebaseMerge': instance.allowRebaseMerge,
      'allowAutoMerge': instance.allowAutoMerge,
      'deleteBranchOnMerge': instance.deleteBranchOnMerge,
      'allowUpdateBranch': instance.allowUpdateBranch,
      'useSquashPrTitleAsDefault': instance.useSquashPrTitleAsDefault,
      'squashMergeCommitTitle':
          _$SquashMergeCommitTitleEnumMap[instance.squashMergeCommitTitle],
      'squashMergeCommitMessage':
          _$SquashMergeCommitMessageEnumMap[instance.squashMergeCommitMessage],
      'mergeCommitTitle': _$MergeCommitTItleEnumMap[instance.mergeCommitTitle],
      'mergeCommitMessage':
          _$MergeCommitMessageEnumMap[instance.mergeCommitMessage],
      'allowMergeCommit': instance.allowMergeCommit,
      'allowForking': instance.allowForking,
      'webCommitSignoffRequired': instance.webCommitSignoffRequired,
      'openIssues': instance.openIssues,
      'watchers': instance.watchers,
      'masterBranch': instance.masterBranch,
      'starredAt': instance.starredAt,
      'anonymousAccessEnabled': instance.anonymousAccessEnabled,
    };

_$SimpleCodeOfConductImpl _$$SimpleCodeOfConductImplFromJson(
        Map<String, dynamic> json) =>
    _$SimpleCodeOfConductImpl(
      url: Uri.parse(json['url'] as String),
      key: json['key'] as String,
      name: json['name'] as String,
      htmlUrl: Uri.parse(json['html_url'] as String),
    );

Map<String, dynamic> _$$SimpleCodeOfConductImplToJson(
        _$SimpleCodeOfConductImpl instance) =>
    <String, dynamic>{
      'url': instance.url.toString(),
      'key': instance.key,
      'name': instance.name,
      'html_url': instance.htmlUrl.toString(),
    };

_$SecurityAndAnalysisImpl _$$SecurityAndAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$SecurityAndAnalysisImpl(
      advancedSecurity: json['advanced_security'] == null
          ? null
          : Security.fromJson(
              json['advanced_security'] as Map<String, dynamic>),
      dependabotSecurityUpdates: json['dependabot_security_updates'] == null
          ? null
          : Security.fromJson(
              json['dependabot_security_updates'] as Map<String, dynamic>),
      secretScanning: json['secret_scanning'] == null
          ? null
          : Security.fromJson(json['secret_scanning'] as Map<String, dynamic>),
      secretScanningPushProtection: json['secret_scanning_push_protection'] ==
              null
          ? null
          : Security.fromJson(
              json['secret_scanning_push_protection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SecurityAndAnalysisImplToJson(
        _$SecurityAndAnalysisImpl instance) =>
    <String, dynamic>{
      'advanced_security': instance.advancedSecurity,
      'dependabot_security_updates': instance.dependabotSecurityUpdates,
      'secret_scanning': instance.secretScanning,
      'secret_scanning_push_protection': instance.secretScanningPushProtection,
    };

_$SecurityImpl _$$SecurityImplFromJson(Map<String, dynamic> json) =>
    _$SecurityImpl(
      status: $enumDecodeNullable(_$SecurityStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$SecurityImplToJson(_$SecurityImpl instance) =>
    <String, dynamic>{
      'status': _$SecurityStatusEnumMap[instance.status],
    };

const _$SecurityStatusEnumMap = {
  SecurityStatus.enabled: 'enabled',
  SecurityStatus.disabled: 'disabled',
};
