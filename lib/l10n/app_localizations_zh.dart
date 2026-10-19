// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get servicesTitle => 'Development services';

  @override
  String get servicesCopy => 'Copy command';

  @override
  String get servicesSubtitle => 'Project commands, logs, and preview links';

  @override
  String get servicesIntro =>
      'Keep your project\'s development commands and preview links together. Saving a service does not start it.';

  @override
  String get servicesAdd => 'Register service';

  @override
  String get servicesName => 'Service name';

  @override
  String get servicesCommand => 'Development command';

  @override
  String get servicesCommandHint =>
      'Use a foreground command, such as npm run dev. Background or detached commands cannot be tracked.';

  @override
  String get servicesUrl => 'Preview URL (optional)';

  @override
  String get servicesUrlHint =>
      'Use an address this phone can reach. localhost points to this phone. No ports are exposed or forwarded for you.';

  @override
  String get servicesSave => 'Save service';

  @override
  String get servicesUnavailable =>
      'This server cannot start and track development commands. You can save commands and review their preview links here.';

  @override
  String get servicesScopeChanged =>
      'The server or project changed. Reopen Development services from the intended project.';

  @override
  String get servicesNotStarted => 'Not started';

  @override
  String get servicesRunning => 'Running command';

  @override
  String get servicesStopped => 'Stopped';

  @override
  String get servicesUnknown => 'Status unknown';

  @override
  String get servicesStatusHint =>
      'Command status does not confirm that your app is ready or reachable.';

  @override
  String get servicesStart => 'Start';

  @override
  String get servicesStop => 'Stop';

  @override
  String get servicesRestart => 'Restart';

  @override
  String get servicesLogs => 'Logs';

  @override
  String get servicesVisit => 'Visit';

  @override
  String get servicesRemove => 'Remove configuration';

  @override
  String get servicesStopHint =>
      'Stop this service\'s tracked command? The server also removes its retained logs. Other commands are not affected.';

  @override
  String get servicesRestartHint =>
      'Stop this tracked command, remove its server log, then start the saved command again?';

  @override
  String get servicesForget => 'Forget last run';

  @override
  String get servicesForgetHint =>
      'Clear the local run record? This does not stop any server process. Starting again may create a duplicate if the previous command is still running.';

  @override
  String get servicesUnknownHint =>
      'The last run could not be confirmed. Refresh to reconcile it before starting again.';

  @override
  String get servicesLogEmpty => 'No captured output is available yet.';

  @override
  String get servicesWorking => 'Updating service…';

  @override
  String servicesExit(int code) {
    return 'Recorded exit code: $code';
  }

  @override
  String get servicesRefresh => 'Refresh status';

  @override
  String get isolatedTaskScopeChanged =>
      'The server or project changed while this was open. Close it and start again from the project you want.';

  @override
  String get appTitle => 'OpenCode Mobile';

  @override
  String get libraryModelsAgentsTitle => 'Models & agents';

  @override
  String get libraryProvidersTitle => 'Providers';

  @override
  String get libraryMcpTitle => 'MCP';

  @override
  String get libraryCommandsToolsTitle => 'Commands & tools';

  @override
  String get libraryTerminalTitle => '终端';

  @override
  String get librarySettingsTitle => '设置';

  @override
  String aboutBuildVersion(String version, String buildNumber) {
    return 'OpenCode Mobile $version+$buildNumber';
  }

  @override
  String get aboutSigningCertificate => 'Signing certificate SHA-256';

  @override
  String get modelSwitchSession => '为此对话切换模型';

  @override
  String get modelNextFavorite => '下一个收藏的模型';

  @override
  String get modelChooseTitle => '选择模型';

  @override
  String get modelTitleCompact => 'Models';

  @override
  String get modelSearchHint => '搜索模型';

  @override
  String get modelAll => '所有模型';

  @override
  String get modelFavorites => '收藏';

  @override
  String get modelRecent => '最近';

  @override
  String get modelOptions => 'Options';

  @override
  String get modelThinkingMode => 'Thinking mode';

  @override
  String get modelSessionScopeNote => '适用于此对话接下来的回复。';

  @override
  String get modelSelectionLoading => 'Loading conversation selection…';

  @override
  String get modelServerDefault => '服务器默认';

  @override
  String get modelSelectionSaving => '正在保存对话的选择…';

  @override
  String get modelUnavailableSelection => '此对话的模型在该目录中不可用。请刷新模型或选择其他模型。';

  @override
  String get modelScopeChanged => '服务器已更改。请重新打开模型选择器后继续。';

  @override
  String get commonClearSearch => 'Clear search';

  @override
  String get workTitle => 'Tasks';

  @override
  String get workRefresh => '刷新';

  @override
  String get workRetry => 'Try again';

  @override
  String get workCancel => 'Cancel';

  @override
  String get workRunning => 'Running';

  @override
  String get workFinished => 'Finished';

  @override
  String get workTimedOut => 'Timed out';

  @override
  String get workStopped => 'Stopped';

  @override
  String get workUnknown => 'Status unavailable';

  @override
  String get workOutput => 'Command output';

  @override
  String get workNoOutput => 'Waiting for output…';

  @override
  String get workNoFinalOutput => 'This command produced no output.';

  @override
  String get workCopied => 'Output copied';

  @override
  String get workMoreOutput => 'Load more output';

  @override
  String get workTrimmed =>
      'Showing the most recent output. Earlier text was trimmed.';

  @override
  String get workStop => 'Stop command';

  @override
  String get workStopTitle => 'Stop this command?';

  @override
  String get workStopDescription =>
      'This stops the command and removes its saved output from the server. Text already loaded here stays visible until you close it.';

  @override
  String get workTimeout => 'Change timeout';

  @override
  String get workTimeoutDescription => 'The new timeout starts now.';

  @override
  String get workTimeoutOneMinute => '1 minute';

  @override
  String get workTimeoutFiveMinutes => '5 minutes';

  @override
  String get workTimeoutFifteenMinutes => '15 minutes';

  @override
  String get workTimeoutOneHour => '1 hour';

  @override
  String get workTimeoutNone => 'No timeout';

  @override
  String get workUnavailable =>
      'This command is no longer available. It may have been removed or cancelled when the server restarted.';

  @override
  String get workRestarted =>
      'The server restarted and this command is no longer available. Its loaded output is shown below.';

  @override
  String get workDisconnected =>
      'Reconnecting. Output will refresh when the server is available.';

  @override
  String get workContextChanged => '服务器或项目已更改。请关闭此视图并重新打开“运行中的任务”。';

  @override
  String workCount(int count) {
    return '任务 · $count 个运行中';
  }

  @override
  String workExitCode(int code) {
    return '退出码 $code';
  }

  @override
  String workStatusElapsed(String status, String elapsed) {
    return '$status · $elapsed';
  }

  @override
  String get composerClearTextTitle => '清除草稿文字';

  @override
  String get composerClearTextSubtitle => '保留附件 · 可撤销';

  @override
  String get composerDraftCleared => '草稿文字已清除';

  @override
  String get composerReuseTitle => '重用提示词';

  @override
  String get queueSaveFailed => '无法将排队的草稿保存到本设备。你的文字仍在这里。请检查可用存储空间后重试。';

  @override
  String get fileSave => '保存';

  @override
  String get fileReload => '刷新';

  @override
  String get queueRemoveFailed => '无法从设备存储中移除这份草稿，它仍在排队。请检查可用存储空间后重试。';

  @override
  String get composerReuseSubtitle => '重用此对话和最近发送过的文字';

  @override
  String get composerReuseSearch => 'Search recent prompts';

  @override
  String get composerReuseEmpty => 'No matching prompts';

  @override
  String get backgroundWorkTitle => 'Move running work to background';

  @override
  String get backgroundWorkShortcut => '在使用对话的同时继续此任务 · Ctrl+B';

  @override
  String get backgroundWorkNoop => '没有可转入后台的前台子智能体。';

  @override
  String get backgroundWorkPromoted => '子智能体正在后台继续运行。';

  @override
  String get libraryNoModel => 'No model selected';

  @override
  String get chatAttachmentUnsupported =>
      '可附加图片、PDF、文本文件以及 Excel 或 Word 文件（.xlsx、.docx）。';

  @override
  String get termuxRestartTitle => '重启本地服务器？';

  @override
  String get termuxRestartMessage => 'OpenCode 会短暂不可用。应用会保留你当前的项目并自动重新连接。';

  @override
  String termuxRestartBusyMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '有 $count 个对话正在生成。重启会中断它们。',
      one: '有 1 个对话正在生成。重启会中断它。',
    );
    return '$_temp0';
  }

  @override
  String get termuxRestartConfirm => '重启';

  @override
  String get chatCopyCompleteReply => '复制完整回复';

  @override
  String get chatCopyReplySoFar => '复制目前的回复';

  @override
  String commandRunTitle(String command) {
    return 'Run /$command';
  }

  @override
  String get commandDestination => '对话';

  @override
  String get commandNewChat => 'New conversation';

  @override
  String get commandUntitledChat => 'Untitled conversation';

  @override
  String get commandArguments => 'Arguments (optional)';

  @override
  String get commandRun => 'Run';

  @override
  String get commandRunning => '正在启动…';

  @override
  String get commandLocationChanged =>
      'The server or project changed. Close this dialog and open the command again.';

  @override
  String get refreshFailed => '无法刷新';

  @override
  String get refreshRetry => '重试';

  @override
  String get filesProjectRoot => '项目根目录';

  @override
  String get globalSessionsLoadMore => 'Load more conversations';

  @override
  String get globalSessionsRefreshFailed => 'Could not refresh conversations.';

  @override
  String get workspaceSearchAllSessions => 'Search all conversations';

  @override
  String get workspaceProjectListUnavailable => 'Project list unavailable';

  @override
  String get workspaceRetryProjects => 'Try again';

  @override
  String get historyLoadOlder => '加载更早的消息';

  @override
  String get historyReload => '刷新最近的历史记录';

  @override
  String get historyCursorExpired => '较早的历史记录已变更或过期。请刷新最近的历史记录后继续。';

  @override
  String get historyRefreshed => '历史记录已刷新。更早的消息仍可在上方查看。';

  @override
  String get historyLoadedOnly => '仅包含已加载的消息。加载更早的历史记录可包含更多。';

  @override
  String get historyLoadedTotals => 'Usage and loaded history';

  @override
  String get historyCopyLoadedReply => '复制已加载的回复';

  @override
  String get historyLoadedMessages => 'Loaded messages';

  @override
  String get historyLoadedCost => 'Cost of loaded messages';

  @override
  String get historyServerTotalsNote =>
      'Rows marked reported by server cover the conversation. Message counts and other estimates cover loaded history.';

  @override
  String get sessionsDetailsUnavailable =>
      'Conversation details could not be loaded. Try again.';

  @override
  String get sessionsReload => 'Refresh recent conversations';

  @override
  String get revertReviewChanged =>
      'This conversation or its staged revert changed. Review the latest state before continuing.';

  @override
  String get revertReviewLatest => 'Review latest state';

  @override
  String get revertBusy =>
      'Wait for the current conversation action to finish.';

  @override
  String get revertClearAction => 'Clear staged revert';

  @override
  String get revertPreviewUnavailable =>
      'The server did not provide a file preview. This does not establish whether files changed.';

  @override
  String get revertStaged => '已暂存撤销';

  @override
  String get revertReview => '查看';

  @override
  String get revertFromHere => '从此处撤销';

  @override
  String get revertUndoDescription =>
      'Undo the last prompt and everything after it';

  @override
  String get revertClearShortDescription =>
      'Review and clear the staged revert';

  @override
  String get revertPromptUnavailable =>
      'The boundary prompt could not be loaded.';

  @override
  String get revertPromptLoading => 'Loading the boundary prompt…';

  @override
  String get revertAttachmentPrompt => 'Attachment-only prompt';

  @override
  String get revertResolveBeforeSending => '发送前请查看已暂存的撤销，并将其清除或设为永久。你的草稿会保留。';

  @override
  String get sessionNoteTitle => 'Note for the agent';

  @override
  String get sessionNoteDescription =>
      'Keep a short instruction for this conversation. Saving or deleting it takes effect at the next agent step and appears in the transcript then. It does not start a run.';

  @override
  String get sessionNoteHint =>
      'For example: Keep explanations brief and run the relevant checks before finishing.';

  @override
  String get sessionNoteSave => 'Save note';

  @override
  String get sessionNoteRemove => 'Delete saved note';

  @override
  String get sessionNoteSaved => '笔记已保存';

  @override
  String get sessionNoteRemoved => '备注已删除';

  @override
  String get sessionNotePending => '将在智能体的下一步生效。';

  @override
  String get sessionInstructionsUpdated => '指令已更新';

  @override
  String get sessionInstructionsApplied => '已为此步骤更新智能体的对话指令。';

  @override
  String get sessionNoteUnsupported =>
      'This server does not support conversation notes.';

  @override
  String get sessionNoteAuthorization =>
      'Check this server\'s password and permissions, then try again. Your draft is kept.';

  @override
  String get sessionNoteChanged =>
      'The conversation or its instructions changed. Refresh the saved note before saving again. Your draft is kept.';

  @override
  String get sessionNoteInvalid =>
      'The saved note has a format this editor cannot safely change.';

  @override
  String get sessionNoteTooLarge =>
      'Shorten the note to fit the server\'s size limit.';

  @override
  String get sessionNoteBusy =>
      'A note change is already being saved. Try again when it finishes.';

  @override
  String get sessionNoteRefresh => 'Refresh saved note';

  @override
  String get sessionNoteSavedVersion =>
      'Current saved note — review before replacing';

  @override
  String get sessionNoteNone => 'No saved note';

  @override
  String get sessionNoteDiscard => 'Discard your note changes?';

  @override
  String get sessionNoteKeepEditing => 'Keep editing';

  @override
  String get sessionNoteDiscardAction => 'Discard changes';

  @override
  String get sessionNoteDiscardDetail =>
      'The edits you made to this note will be lost. This can\'t be undone.';

  @override
  String sessionNoteBytes(int used, int limit) {
    return '$used / $limit bytes';
  }

  @override
  String get usageTitle => 'Usage and cost';

  @override
  String get usageDescription =>
      'Activity recorded by this OpenCode server across your conversations.';

  @override
  String get usageRefresh => 'Refresh usage';

  @override
  String get usageToday => 'Today';

  @override
  String get usageThirtyDays => '30 days';

  @override
  String get usageYear => 'This year';

  @override
  String get usageAllTime => 'All time';

  @override
  String get usageScope => 'Project scope';

  @override
  String get usageAllProjects => 'All projects';

  @override
  String get usageCurrentProject => 'Current project';

  @override
  String get usageLoading => 'Loading usage';

  @override
  String get usageUnsupported =>
      'This server does not support aggregate usage.';

  @override
  String get usageProjectUnavailable =>
      'No current project could be identified. Choose All projects or open a project first.';

  @override
  String get usageTimezoneUnavailable =>
      'Could not read this device\'s timezone. Retry to load correctly dated usage.';

  @override
  String get usageRefreshInterrupted =>
      'The server changed while loading usage. Refresh to try again.';

  @override
  String get usageInvalidResponse =>
      'The server returned incomplete usage data. Refresh to try again.';

  @override
  String get usageAuthorization =>
      'Check this server\'s password and permissions, then refresh.';

  @override
  String get usagePreviousResult =>
      'Showing the previous result for these filters.';

  @override
  String get usageLocationChanged =>
      'The active server or project changed. Reopen Usage from Settings.';

  @override
  String get usageTinyCost => 'Less than \$0.000001';

  @override
  String get usageSessions => 'Conversations';

  @override
  String get usageSubagents => 'Subagent conversations';

  @override
  String get usagePrompts => '提示词';

  @override
  String get usageSteps => 'Agent steps';

  @override
  String get usageActiveDays => 'Active days';

  @override
  String get usageStreak => 'Longest streak · days';

  @override
  String get usageEmpty =>
      'No activity in this range. Try a wider range or All projects.';

  @override
  String get usageTokens => 'Tokens';

  @override
  String get usageTotalTokens => 'Total';

  @override
  String get usageInput => 'Input';

  @override
  String get usageOutput => 'Output';

  @override
  String get usageReasoning => 'Reasoning';

  @override
  String get usageCacheRead => 'Cache read';

  @override
  String get usageCacheWrite => 'Cache write';

  @override
  String get usageModels => 'Model usage';

  @override
  String get usageNoModels => 'No model usage was recorded in this range.';

  @override
  String get usageToolReliability => 'Tool reliability';

  @override
  String get usageToolsUnavailable =>
      'This response does not include tool reliability.';

  @override
  String get usageNoTools => 'No tool calls were recorded in this range.';

  @override
  String get usageNoFinishedTools => 'No finished tool calls yet.';

  @override
  String get usageToolCalls => 'Calls';

  @override
  String get usageSucceeded => 'Succeeded';

  @override
  String get usageFailed => 'Failed';

  @override
  String get usageUnfinished => 'Unfinished';

  @override
  String get usageCostDisclosure =>
      'Costs are estimates reported by OpenCode, not a provider invoice. Unfinished tool calls are excluded from the success rate.';

  @override
  String usagePeriod(String from, String to) {
    return '$from – $to';
  }

  @override
  String usageTimezone(String timezone) {
    return 'Timezone: $timezone';
  }

  @override
  String usageModelSteps(String steps) {
    return '$steps steps';
  }

  @override
  String usageModelTokens(String tokens) {
    return '$tokens tokens';
  }

  @override
  String usageSuccessRate(String rate) {
    return '$rate of finished calls succeeded';
  }

  @override
  String usageUpdated(String time) {
    return 'Updated at $time';
  }

  @override
  String get mcpRuntimeTitle => 'Until server restart';

  @override
  String get mcpDefaultLocation => 'OpenCode server’s default directory';

  @override
  String mcpWorkspaceLocation(String workspace) {
    return 'Cloud environment: $workspace';
  }

  @override
  String get mcpLocationChanged =>
      'The server or project changed. Your draft is still here; reopen setup in the intended project before adding it.';

  @override
  String get mcpAdding => 'Adding MCP server';

  @override
  String get mcpAdd => 'Add MCP server';

  @override
  String get mcpRuntimeEmpty =>
      'Add tools for the current project until OpenCode restarts.';

  @override
  String get mcpRuntimeAdded => 'MCP server added for this project';

  @override
  String get mcpHeaderName => 'Header name';

  @override
  String get mcpHeaderValue => 'Header value';

  @override
  String get mcpAddHeader => 'Add another header';

  @override
  String get mcpRemoveHeader => 'Remove header';

  @override
  String get sessionUnread => 'Unread result';

  @override
  String get shareSessionViewsTitle => '同步已读状态';

  @override
  String get shareSessionViewsOn =>
      'Let your other OpenCode clients know which completed results you have viewed.';

  @override
  String get shareSessionViewsOff =>
      'Reading stays private to this device. Unread results use local read history.';

  @override
  String get shareSessionViewsSaveError =>
      'Could not save this preference. Read-state sharing is off on this device for now.';

  @override
  String get exportTitle => 'Export conversation';

  @override
  String get exportDescription =>
      'Choose a format to save this conversation on your device.';

  @override
  String get exportJson => 'Complete conversation · JSON';

  @override
  String get exportJsonDescription =>
      'Downloads the full conversation from the server, including older messages.';

  @override
  String get exportMarkdown => 'Readable transcript · Markdown';

  @override
  String get exportMarkdownDescription =>
      'Saves the messages currently loaded in this conversation. Load older messages first if you need them included.';

  @override
  String get exportRedact => 'Redact sensitive data';

  @override
  String get exportUnredacted =>
      'The unredacted file may contain secrets, local paths, and private tool output.';

  @override
  String get exportCancel => 'Cancel download';

  @override
  String get exportDownloading => 'Downloading complete conversation…';

  @override
  String get exportSaving => 'Saving file…';

  @override
  String get exportSaved => 'Conversation saved';

  @override
  String get exportChanged =>
      'The server or project changed. Reopen export from the intended conversation.';

  @override
  String get exportUnsupported =>
      'This server does not support JSON export. You can still save the loaded Markdown transcript.';

  @override
  String get exportAuthorization =>
      'The server denied access. Check your server credentials and try again.';

  @override
  String get exportMissing =>
      'This conversation no longer exists on the server. You can still save the loaded Markdown transcript.';

  @override
  String get exportFailed =>
      'Could not export the conversation. Check your connection and storage, then try again.';

  @override
  String get importTitle => 'Import conversation';

  @override
  String get importDescription =>
      'Restore a JSON export to this OpenCode server. Choose a file, then review where it will be imported.';

  @override
  String get importChoose => 'Choose JSON file';

  @override
  String get importChooseAnother => 'Choose another file';

  @override
  String get importAction => 'Import conversation';

  @override
  String get importUntitled => 'Untitled conversation';

  @override
  String get importRedacted =>
      'This file contains redacted placeholders. Import cannot recover the original text; use an unredacted export if you need it.';

  @override
  String get importParent =>
      'This conversation was started by another one, which must already exist on this server. Import that one first.';

  @override
  String get importArchived =>
      'This conversation is archived. Import will keep its archived status.';

  @override
  String get importDestination => 'Import into';

  @override
  String get importChooseDestination => 'Choose a project on this server';

  @override
  String get importNoDestinations =>
      'No projects are available. Open a project on this server, then try again.';

  @override
  String get importDestinationFailed =>
      'Could not load destination projects or cloud environments. Try again; your file is still selected.';

  @override
  String get importPreserves =>
      'Your source file stays unchanged. Existing conversations are never replaced, and importing does not start an agent run.';

  @override
  String get importReading => 'Preparing import…';

  @override
  String get importSending => 'Importing conversation…';

  @override
  String get importSucceeded => 'Conversation imported';

  @override
  String get importOpen => 'Open conversation';

  @override
  String get importOpenFailed =>
      'The conversation was imported, but could not be opened. Find it in All conversations on the destination server.';

  @override
  String get importChanged =>
      'The server or project changed. Your file is still here. Reopen import on the intended server before continuing.';

  @override
  String get importUnsupported => 'This server does not support JSON import.';

  @override
  String get importInvalidFile =>
      'Choose a valid OpenCode JSON export with conversation information and message records. Markdown transcripts cannot be imported.';

  @override
  String get importTooLarge =>
      'This file exceeds the mobile import limit of 128 MiB. It has not been uploaded or truncated. Use a desktop or server transfer for this file.';

  @override
  String get importConflict =>
      'A conversation with this ID already exists on this server. Nothing was replaced. Find it in All conversations, or import this file on another server.';

  @override
  String get importAuthorization =>
      'The server denied access. Check your server credentials. Your file is still selected.';

  @override
  String get importParentMissing =>
      'The parent conversation is missing from this server. Import the parent first, then retry this file.';

  @override
  String get importRejected =>
      'The server rejected this export format. Your file is still selected; check that it came from a compatible OpenCode server.';

  @override
  String get importUnconfirmed =>
      'Import could not be confirmed. Check All conversations before retrying: the server may have received it. Your source file is unchanged.';

  @override
  String get sessionPin => 'Pin on this device';

  @override
  String get sessionUnpin => 'Unpin';

  @override
  String get sessionPinFailed =>
      'Could not save this pin. Check device storage and that the conversation’s project has not changed, then try again.';

  @override
  String get sessionPinsLoadFailed =>
      'Some pinned conversations could not be loaded. Refresh to try again.';

  @override
  String get promptStashSaveFailed =>
      'Could not save this prompt. Your composer is unchanged. Check device storage and try again.';

  @override
  String get promptOriginalDraft => '恢复原始草稿';

  @override
  String get promptStashTitle => '已保存的提示词';

  @override
  String get promptStashSearch => 'Search saved prompts';

  @override
  String get promptStashDeleteFailed =>
      'Could not delete this saved prompt. Try again.';

  @override
  String get promptStashDelete => 'Delete';

  @override
  String get promptStashFull =>
      'Your stash has 50 prompts. Delete a saved prompt to make room; your current prompt is unchanged.';

  @override
  String promptStashAttachments(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attachments',
      one: '1 attachment',
    );
    return '$_temp0';
  }

  @override
  String promptStashReferences(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count references',
      one: '1 reference',
    );
    return '$_temp0';
  }

  @override
  String get promptHistorySaveFailed =>
      'Prompt sent, but its history could not be saved on this device.';

  @override
  String get promptStashMigrationPending =>
      'Some saved attachments could not be moved to local attachment storage yet. Your saved content has been kept. Free device storage and retry.';

  @override
  String get commonRetry => '重试';

  @override
  String get shareWaitingForServer =>
      'Connect to a server and the shared text opens in a new conversation.';

  @override
  String get webSourcesDisclosure =>
      'This server can\'t search the web. Paste a public link, and an excerpt if you like. The page is not opened, and nothing is sent until you send your message.';

  @override
  String get webSourcesScopeChanged =>
      'Server changed. Close and reopen Add web source.';

  @override
  String get webSourcesUrl => 'Public URL';

  @override
  String get webSourcesLabel => 'Title (optional)';

  @override
  String get webSourcesExcerpt => 'Pasted excerpt (optional)';

  @override
  String get webSourcesExcerptHint =>
      'User-provided text, not verified page content.';

  @override
  String get digestStatusUnverified =>
      'Server reported idle. Success or failure is not verified.';

  @override
  String get digestChangedFilesUnknown => 'Changed files: unknown.';

  @override
  String digestChangedFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count changed files in the conversation total; this run is unknown.',
      one: '1 changed file in the conversation total; this run is unknown.',
      zero: 'No changed files in the conversation total; this run is unknown.',
    );
    return '$_temp0';
  }

  @override
  String get digestPendingDecisionsUnknown => 'Pending decisions: unknown.';

  @override
  String digestPendingDecisions(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pending decisions in the current cache.',
      one: '1 pending decision in the current cache.',
      zero: 'No pending decisions in the current cache.',
    );
    return '$_temp0';
  }

  @override
  String get digestOutcomesUnknown =>
      'Tool outcomes and remaining tasks: unknown.';

  @override
  String get digestProvenance =>
      'Cached server metadata only. No AI summary or model call. Open the conversation to verify results and review changes or tasks.';

  @override
  String get digestOpenConversation => '打开对话';

  @override
  String get digestReview => 'Review next actions';

  @override
  String get digestCopy => 'Copy digest';

  @override
  String get digestCopySucceeded => 'Digest copied';

  @override
  String get digestCopyFailed => 'Could not copy digest';

  @override
  String get digestDismiss => 'Dismiss';

  @override
  String get digestRunResults => 'Run results';

  @override
  String get runResultsScopeChanged =>
      'The server or project changed. Close this view and reopen Run results from the intended project.';

  @override
  String get runResultsTitle => 'Run results';

  @override
  String get runResultsEmpty =>
      'The latest turn has no assistant step yet, so there is nothing to show.';

  @override
  String runResultsStarted(String time) {
    return 'Started $time';
  }

  @override
  String get runResultsStartedUnknown => 'Start time not recorded';

  @override
  String runResultsFinished(String time) {
    return 'Finished $time';
  }

  @override
  String get runResultsFinishedUnknown => 'Finish time not recorded';

  @override
  String get runResultsPartialHistory =>
      'The message that started this run was not found in the loaded history. Counts here are lower bounds and the run id is only the oldest loaded step.';

  @override
  String get runResultsOutcomeCompleted => 'Completed';

  @override
  String get runResultsOutcomeCutOff => 'Cut off by the provider';

  @override
  String get runResultsOutcomeFailed => 'Failed';

  @override
  String get runResultsOutcomeAborted => 'Aborted';

  @override
  String get runResultsOutcomeRunning => 'Still running';

  @override
  String get runResultsOutcomeNotReported => 'Outcome not reported';

  @override
  String runResultsFinishReason(String finish) {
    return 'Provider finish reason: $finish';
  }

  @override
  String get runResultsFinishReasonMissing =>
      'The provider gave no finish reason.';

  @override
  String runResultsEarlierErrors(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count earlier steps reported errors; the newest step decides the outcome.',
      one:
          'An earlier step reported an error; the newest step decides the outcome.',
    );
    return '$_temp0';
  }

  @override
  String get runResultsObservedLive =>
      'This phone received the completion of the newest step live.';

  @override
  String get runResultsFromHistory =>
      'Recovered from server history. This phone did not observe the newest step complete.';

  @override
  String get runResultsNoToolEvidence =>
      'This run recorded no tool calls, so there is no file or command evidence. That is not the same as no changes.';

  @override
  String get runResultsChangedFilesTitle => 'Changed files';

  @override
  String get runResultsChangedFilesSource =>
      'From completed edit, write and patch tools in this run. Not a verified diff of the working tree.';

  @override
  String get runResultsNoChangedFiles =>
      'No completed file-changing tool in this run.';

  @override
  String get runResultsChangeEdited => 'Edited';

  @override
  String get runResultsChangeWritten => 'Written';

  @override
  String get runResultsChangePatched => 'Patched';

  @override
  String get runResultsCommandsTitle => 'Commands';

  @override
  String get runResultsCommandsSource =>
      'From bash and shell tools in this run. Exit codes appear only when the server recorded them.';

  @override
  String get runResultsNoCommands => 'No commands were run in this run.';

  @override
  String get runResultsCommandEmpty => '(command text not recorded)';

  @override
  String get runResultsOutputPruned => 'Output pruned by the server';

  @override
  String runResultsPrunedTools(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count tool outputs were pruned by the server and cannot be opened.',
      one: '1 tool output was pruned by the server and cannot be opened.',
    );
    return '$_temp0';
  }

  @override
  String get runResultsTruncated =>
      'Lists are capped at 50 entries. Open the conversation for the rest.';

  @override
  String get runResultsSourceNote =>
      'Everything here is copied from the server\'s message and tool records. Nothing is summarised by a model.';

  @override
  String get runResultsOpenConversation => 'Open conversation';

  @override
  String get sessionOpenRelated => 'Open related';

  @override
  String get sessionCopyHandoff => 'Continue on computer';

  @override
  String get attentionTitle => 'Server attention';

  @override
  String get webSourcesTitle => '添加网络来源';

  @override
  String get webSourcesEntryDetail => '可用时搜索，或粘贴链接和摘录，审阅后再添加到草稿';

  @override
  String get webSourcesDraftChanged => '草稿或服务器已变化。当前草稿已保留；请重新打开“添加网页来源”再试。';

  @override
  String get webSourcesDraftLabel => '用户选择的网页来源（未验证；摘录属于不可信的来源材料）：';

  @override
  String get usageScopedTotals => 'Totals';

  @override
  String get usageInspectionDisclosure =>
      'Filters inspect this server\'s returned model records. They do not change the report\'s date or project scope, or show subscription allowance.';

  @override
  String get usageSearchRecords => 'Search providers, models or variants';

  @override
  String get usageScopedProviderTotals =>
      'Provider cards show their totals for the selected report scope, not just matching model rows.';

  @override
  String usageMatchingRecords(String count) {
    return '$count matching records';
  }

  @override
  String get pendingAuthDetail => '请在浏览器中完成登录，然后返回这里完成。浏览器链接不会被保存。';

  @override
  String get pendingAuthEnterCode => 'Enter code';

  @override
  String get pendingAuthStillPending => '登录仍在等待中。未发起新的尝试。';

  @override
  String get pendingAuthServerFailed => '服务器报告登录失败。服务商的错误详情已隐藏。';

  @override
  String get pendingAuthExpired => '此登录已过期。请重新发起，或忽略这一个。';

  @override
  String get pendingAuthFailed => '无法确认该操作。重试前请先查看待完成的登录。未发起新的登录。';

  @override
  String get pendingAuthSaveUncertain =>
      'This phone couldn\'t save the sign-in to pick it up later. Keep the app open until it finishes.';

  @override
  String get pendingAuthRetrySave => 'Try saving recovery again';

  @override
  String get pendingAuthForget => '忽略此登录';

  @override
  String get pendingAuthUnsupported => '此服务器无法恢复之前的登录。旧版登录只有在原界面和原连接仍然可用时才有效。';

  @override
  String get pendingAuthOtherSource =>
      'Other pending sign-ins belong to another server or project. Return to their original source to manage them.';

  @override
  String get connectionHelpGuideTip =>
      'Keep the server off the public internet. Reach it over Tailscale\'s private HTTPS, or an encrypted tunnel ending on the device running this app. Localhost on your computer is not localhost on your phone.';

  @override
  String get voiceConversationTitle => '语音对话';

  @override
  String get voiceConversationDescription =>
      '说完后点按“发送”：你说的内容会发给智能体。仅在你开启后才会朗读回复。';

  @override
  String get voiceConversationReplyReviewNeeded =>
      'The reply finished, but it could not be matched to your message for certain. Read it if you want.';

  @override
  String get voiceConversationReplyInterrupted =>
      'The reply needed a decision on screen, so it was not read automatically.';

  @override
  String get voiceConversationReplyNoProse =>
      'The reply has no prose to read. Code and tool details are not spoken.';

  @override
  String get voiceConversationReplyFailed =>
      'The reply could not be read aloud.';

  @override
  String get voiceConversationPausedDetail =>
      'Voice conversation is paused. Reconnect, wait for the reply, or review pending decisions on screen.';

  @override
  String get voiceConversationDraftFirst =>
      'Send, save, or clear your current draft before starting voice conversation.';

  @override
  String get voiceConversationCommandsOnly => '斜杠命令请使用文字输入框。';

  @override
  String get voiceInputUnavailable => '语音输入不可用。请检查本地模型和麦克风设置。';

  @override
  String get desktopDropFailedTitle => 'Could not attach dropped files';

  @override
  String get desktopDropFailedRecovery =>
      'Check the attachments already added before trying again. You can also use the keyboard to open Add, then Attach file.';

  @override
  String get commandAuthMethodHint =>
      'Runs the provider\'s sign-in method on your selected server, not on this phone. You may need to finish interactive steps on the server.';

  @override
  String get commandAuthStart => 'Start server sign-in';

  @override
  String get commandAuthPending => '正在服务器上登录…请在那里完成它要求的步骤。关闭此处不会中止登录。';

  @override
  String get commandAuthCancel => 'Cancel sign-in';

  @override
  String get commandAuthFailed => 'Sign-in didn\'t finish.';

  @override
  String get commandAuthComplete => 'Signed in.';

  @override
  String get commandAuthExpired => 'Sign-in timed out before it finished.';

  @override
  String get commandAuthScopeChanged =>
      'You switched to another server or project. Go back to it to see this sign-in.';

  @override
  String get commandAuthUncertainStart =>
      'The server may have started signing in. Check on the server before you try again.';

  @override
  String get readAloudAction => '朗读回复正文';

  @override
  String get readAloudStop => '停止朗读';

  @override
  String get readAloudOtherVoice => '用其他声音朗读';

  @override
  String get readAloudChooseVoice => 'Choose a reading voice';

  @override
  String get readAloudConsentTitle => 'Read replies aloud?';

  @override
  String get readAloudConsentDetail =>
      'Your phone\'s speech engine reads the reply aloud. Code and tool details are skipped. This phone remembers your answer.';

  @override
  String get readAloudContinue => 'Read aloud';

  @override
  String get readAloudUnsupported =>
      'Read-aloud is not available on this platform.';

  @override
  String get readAloudNoVoice =>
      'No installed voice marked offline is available. Configure an offline voice in your system speech settings and try again.';

  @override
  String get readAloudUnavailable =>
      'The speech engine could not read this reply. Try again or choose another voice.';

  @override
  String get readAloudTooLong =>
      'This reply is too long to read aloud. Choose a shorter reply.';

  @override
  String get readAloudBusy =>
      'Speech playback is unavailable while audio capture or another audio interruption is active.';

  @override
  String get readAloudNoProse =>
      'There is no reply prose to read. Code and tool details are not spoken.';

  @override
  String get credentialMetadataOnly => '密钥仅保留在你的服务器上。';

  @override
  String get credentialActiveUpdated => '已从服务器更新当前账号。';

  @override
  String get credentialSwitchRequested => '已请求切换。服务器事件尚未确认此请求。';

  @override
  String get credentialActive => '使用中';

  @override
  String get credentialRename => '重命名账号';

  @override
  String get credentialLabel => '账号标签';

  @override
  String get credentialSave => '保存标签';

  @override
  String get credentialScopeChanged => '服务器或项目已更改。请关闭并重新打开账号管理后再进行更改。';

  @override
  String get credentialProviderMissing => '此服务商已不在服务器的集成列表中。';

  @override
  String get credentialLoadFailed => '无法刷新已保存的账号。请重试。';

  @override
  String get credentialMutationFailed => '无法确认账号变更。请先刷新再重试；服务器可能已经应用了该变更。';

  @override
  String get credentialRefresh => '刷新账号';

  @override
  String get credentialEmpty => '此服务商没有已保存的账号。';

  @override
  String get credentialEnvironment => '由服务器环境管理，无法在此移除。';

  @override
  String credentialUnnamed(int index) {
    return '已保存的账号 $index';
  }

  @override
  String get mcpRemoveFailed =>
      'Could not confirm MCP removal. Refresh the list before trying again; the server may already have applied the change.';

  @override
  String get mcpLoadFailed => 'Could not refresh MCP data. Try again.';

  @override
  String get mcpSavedStatus => 'Saved in OpenCode';

  @override
  String get mcpRetryReconnect => 'Try reconnecting again';

  @override
  String get mcpReconnecting => '正在重新连接';

  @override
  String get mcpStillDisconnected =>
      'OpenCode is still disconnected. Try again.';

  @override
  String get mcpScopeChanged =>
      'The server or project changed. Refresh to load its MCP servers before making changes.';

  @override
  String get promptStashRestoreFailed =>
      'Could not finish restoring the prompt. Saved copies remain available; check the composer before trying again.';

  @override
  String get promptStashContextOnly => 'Attachments and references';

  @override
  String get promptDefaultLocation => 'the server default directory';

  @override
  String get promptStashed => 'Prompt saved to your stash.';

  @override
  String get promptStashedDraftPending =>
      'Prompt saved to your stash. The composer draft still needs to be saved; try again from the draft warning.';

  @override
  String get promptStashReadFailed =>
      'Could not read saved prompts. Their stored data has been kept.';

  @override
  String get promptStashDescription => '保存文字、附件和引用以备后用';

  @override
  String get promptRestored => 'Saved prompt restored';

  @override
  String promptStashLocation(String directory) {
    return 'This prompt refers to files in $directory. Switch to its original project before restoring it.';
  }

  @override
  String get promptStashScopeChanged =>
      'The server or project changed. Close and reopen Saved prompts.';

  @override
  String get transcriptFindHint => '搜索对话';

  @override
  String get transcriptFindClose => '关闭搜索';

  @override
  String get transcriptFindPrevious => '上一个匹配项';

  @override
  String get transcriptFindNext => '下一个匹配项';

  @override
  String get transcriptFindNone => '无匹配项';

  @override
  String transcriptFindCount(int current, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '第 $current / 共 $total 个匹配项',
      one: '1 个匹配项',
    );
    return '$_temp0';
  }

  @override
  String get transcriptFindPartial => '仅限已加载的消息。加载更早的消息可扩大搜索范围。';

  @override
  String get transcriptFindReasoning => '推理';

  @override
  String get transcriptFindTool => 'Tool data';

  @override
  String get transcriptFindFile => 'File name';

  @override
  String get transcriptFindAll => '搜索全部历史记录';

  @override
  String get skillUse => 'Add to conversation';

  @override
  String get skillActivationHelp =>
      'Adds these skill instructions to this conversation. Your unsent draft stays in the composer.';

  @override
  String get skillRunNow => 'Run agent now';

  @override
  String get skillRunHelp =>
      'Turn off to add the skill without starting another response.';

  @override
  String get skillLocationChanged =>
      'The server or project changed. Reopen Skills from the conversation.';

  @override
  String get skillUnsupported =>
      'Skill activation is unavailable on this server. You can still preview skills.';

  @override
  String get skillStaged =>
      'Resolve the staged revert in the conversation before adding a skill.';

  @override
  String get skillBusy =>
      'A skill is already being added to this conversation.';

  @override
  String get skillUncertain =>
      'The server did not confirm the result. The skill may have been added. Close this sheet and check the conversation before trying again.';

  @override
  String get skillApplied => '已将技能添加到此对话。';

  @override
  String get skillAppliedOriginal =>
      'Skill added to the original conversation. Close this sheet to return.';

  @override
  String get activeContextTitle => 'Active context';

  @override
  String get activeContextSubtitle => 'Inspect messages after compaction';

  @override
  String get activeContextRefresh => 'Refresh active context';

  @override
  String get activeContextSearch => 'Search active messages';

  @override
  String get activeContextEmpty =>
      'The server returned no active context messages.';

  @override
  String get activeContextNoText => 'No supported text content in this entry.';

  @override
  String get activeContextUnsupported =>
      'Active context inspection is unavailable on this server.';

  @override
  String get activeContextChanged =>
      'The server, project or conversation changed. Reopen this inspector from the conversation.';

  @override
  String get activeContextInvalid =>
      'The server returned an invalid context snapshot. Refresh to try again.';

  @override
  String activeContextRefreshFailed(String error) {
    return 'Showing the previous snapshot. Could not refresh: $error';
  }

  @override
  String get activeContextContentHelp =>
      'Snapshot of available message content. Binary attachment bodies, URLs and internal metadata are not displayed. This is not the complete provider request.';

  @override
  String get activeContextUser => 'User prompt';

  @override
  String get activeContextAssistant => 'Assistant';

  @override
  String get activeContextSystem => 'System instructions';

  @override
  String get activeContextSynthetic => 'Synthetic message';

  @override
  String get activeContextSkill => 'Skill';

  @override
  String get activeContextShell => 'Shell';

  @override
  String get activeContextCompaction => 'Compaction';

  @override
  String get activeContextChange => 'Conversation change';

  @override
  String get activeContextText => 'Text';

  @override
  String get activeContextToolInput => 'Tool input';

  @override
  String get activeContextToolOutput => 'Tool output';

  @override
  String get activeContextFile => 'File attachment';

  @override
  String get activeContextNotice => 'Server notice';

  @override
  String get activeContextPruned => 'Content pruned by the server';

  @override
  String get activeContextTruncated => 'Output truncated by the server';

  @override
  String get draftSaveFailed => '草稿未保存。请复制文字或重试。';

  @override
  String get draftStorageFull => '草稿存储空间已满。请先复制你的文字再离开。';

  @override
  String get draftProfileRemoved => '原服务器已被移除。请复制你的草稿以保留。';

  @override
  String get draftRetrySave => '重试保存草稿';

  @override
  String get draftClearFailed => '无法清除已保存的草稿。请先重试再离开。';

  @override
  String activeContextTypeCount(String type, int count) {
    return '$type · $count';
  }

  @override
  String activeContextPartHeading(String kind, String name) {
    return '$kind · $name';
  }

  @override
  String get draftLeaveTitle => '你的草稿尚未保存';

  @override
  String get draftLeaveMessage => '复制你的文字以保留，或再次尝试保存。如果不保存就离开，最近的修改可能会丢失。';

  @override
  String get draftLeaveAction => '不保存并离开';

  @override
  String get draftKeepEditing => '继续编辑';

  @override
  String get draftUnsaved => '未保存';

  @override
  String get draftAttachmentsLocal => '附件会随这份草稿一起保存在本设备上。';

  @override
  String get draftAttachmentsFailed => '附件需要恢复或无法保存。请先重试再发送。';

  @override
  String get draftAttachmentRecoveryTitle => '部分附件需要处理';

  @override
  String draftAttachmentRecoveryDetail(String names) {
    return '这些已保存的附件缺失、无法读取或属于其他项目：$names。你可以使用可用的附件并从草稿中移除这些，或保留已保存的草稿，稍后重试。';
  }

  @override
  String get draftUseAvailableAttachments => '使用可用的附件';

  @override
  String get draftKeepSavedAttachments => '保留已保存的草稿';

  @override
  String get photoLibraryAction => '照片库';

  @override
  String get photoLibraryDescription => '选择照片或截图';

  @override
  String get photoCameraAction => '拍照';

  @override
  String get photoTooLarge => '请选择小于 10 MB 的照片。';

  @override
  String get photoStorageFailed => '无法将照片保存到本设备。请释放一些空间后重试。';

  @override
  String get photoPendingOther => '另一个对话中还有一张照片在等待处理。请先在那里添加或丢弃，然后重试。';

  @override
  String get photoUnavailable => '无法打开这张照片。请从“照片库”或“拍照”重新添加。';

  @override
  String get photoPermissionDenied => '照片访问被拒绝。请在 Android 应用设置中允许访问相机或照片，然后重试。';

  @override
  String get photoPendingTitle => '待处理的照片';

  @override
  String get photoDiscard => '丢弃待处理的照片';

  @override
  String get photoAddToDraft => '将恢复的照片加入草稿';

  @override
  String get photoOtherLocation => '请先回到这张照片所属的服务器和项目，再添加它。';

  @override
  String get photoDraftFull => '请先移除一个附件。一份草稿最多可含 5 个文件，总计 20 MB。';

  @override
  String get quotaTitle => 'Remaining usage';

  @override
  String quotaSourceTitle(String profile, String provider) {
    return '$profile · $provider';
  }

  @override
  String get quotaUnknownSource => 'No saved server';

  @override
  String get quotaSourceChanged =>
      'The server or project changed, or its local data is being removed. Reopen Remaining usage to review the source again.';

  @override
  String get quotaSetupDescription =>
      'Once it’s installed, confirm you trust it, then read. Provider tokens stay on the server.';

  @override
  String get quotaSetupNeeded =>
      'Use a saved server with a password and HTTPS, or phone loopback. Update its connection settings before checking the collector.';

  @override
  String get quotaConsent =>
      'I installed and trust this collector on this server.';

  @override
  String get quotaRead => 'Read remaining usage';

  @override
  String get quotaRefresh => 'Refresh remaining usage';

  @override
  String get quotaLoading => 'Reading remaining usage';

  @override
  String get quotaCollectorAuth =>
      'The collector route did not accept this server sign-in. Ask the server operator to check its authentication setup.';

  @override
  String get quotaUnavailable =>
      'Remaining usage could not be refreshed. Check the connection and collector, then retry.';

  @override
  String get quotaInvalidResponse =>
      'The collector returned an unsupported or invalid snapshot. No new allowance is shown.';

  @override
  String get quotaUnconfigured =>
      'The collector has no authorized account source configured. Ask its operator to finish setup.';

  @override
  String get quotaProviderUnsupported =>
      'The selected OAuth login or provider usage route is not supported by this collector.';

  @override
  String get quotaProviderAuth =>
      'Sign in again using the provider\'s existing login tool on the server. This app does not read or refresh that login.';

  @override
  String get quotaRateLimited =>
      'The provider limited quota checks. Wait before refreshing; this does not prove your coding allowance is exhausted.';

  @override
  String get quotaAccountUnverified =>
      'The collector could not verify the selected account. No allowance is shown. Check the login source on the server.';

  @override
  String get quotaStale =>
      'This is the last reading. Refresh to see the latest.';

  @override
  String get quotaUseBlocked =>
      'The provider reports that ordinary Codex use is currently blocked. Window percentages alone do not determine access.';

  @override
  String quotaUsed(String percent) {
    return '$percent used';
  }

  @override
  String get quotaSourceDisclosure =>
      'Read-only snapshot from the optional collector using an internal provider endpoint. Other product allowances, model-specific limits, credits and eligibility are not included. Missing data is unknown, not unlimited.';

  @override
  String get quotaCodex => 'Codex';

  @override
  String get quotaClaude => 'Claude';

  @override
  String get quotaClaudeUnavailable =>
      'Claude plan usage comes from Claude Code, not OpenCode. To show it, open Usage widget settings below and turn on the server or phone that runs Claude Code.';

  @override
  String get iosRemoteSummary =>
      'A remote client for the OpenCode server you choose. On-device server hosting and background monitoring are not available in this iOS build.';

  @override
  String get iosKeychainGuide =>
      'Server passwords use this device\'s Keychain. They are not stored in plain app preferences.';

  @override
  String get platformSecureStorageGuide =>
      'Server passwords use this platform\'s secure credential storage. They are not stored in plain app preferences.';

  @override
  String get quotaSourceBound =>
      'Tied to the collector\'s configured Claude login. The usage response does not independently identify the account.';

  @override
  String get usageProviders => 'Providers';

  @override
  String get usageProviderScope =>
      'Totals from this server\'s returned model records for the selected scope. Not provider billing or subscription allowances.';

  @override
  String usageProviderModelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count models',
      one: '1 model',
    );
    return '$_temp0';
  }

  @override
  String get usageProviderCostUnavailable => 'Cost subtotal unavailable';

  @override
  String usageProviderCostShare(String percent) {
    return '$percent of reported cost';
  }

  @override
  String get setupOutputWaiting => 'Waiting for Termux output…';

  @override
  String get uncertainAuthDetail => '服务器可能已开始此次登录但未确认。重新开始前请先在服务器上检查。';

  @override
  String get uncertainAuthCloseHint =>
      'To start over, close this and clear the unconfirmed sign-in from the provider\'s row.';

  @override
  String get pluginsUnsupported =>
      'This server does not support plugin inspection.';

  @override
  String get pluginsDisconnected =>
      'Connect to a server to inspect its plugins.';

  @override
  String get pluginsEmpty => 'No plugins reported for this project.';

  @override
  String get pluginsLoadFailed => 'Could not load plugins. Try again.';

  @override
  String get pluginsRefresh => 'Refresh plugins';

  @override
  String get pluginsRetry => 'Try again';

  @override
  String get pluginsUnnamed => 'Plugin without an ID';

  @override
  String get pluginsStatusActive => 'Active';

  @override
  String get pluginsStatusUnknown => 'Unknown status';

  @override
  String get pluginsSourceBuiltin => 'Built in';

  @override
  String get pluginsSourcePackage => 'Package';

  @override
  String get pluginsSourceLocal => 'Local file (path hidden)';

  @override
  String get pluginsSourceSdk => 'SDK';

  @override
  String get pluginsSourceUnknown => 'Unknown source';

  @override
  String get pluginsTerminalUi => 'Terminal UI declared';

  @override
  String get pluginsFailureDetail =>
      'Failure details are hidden because they may contain credentials.';

  @override
  String get demoReviewChanges => '查看更改';

  @override
  String get demoSetUpServer => '设置你自己的服务器';

  @override
  String get handoffCopyCommand => '复制命令';

  @override
  String get quotaMiniMax => 'MiniMax';

  @override
  String get quotaMiniMaxSourceBound =>
      'Tied to the collector\'s configured MiniMax Subscription Key. The quota response does not independently identify the account. Only reported general-pool percentages are shown; other limits may apply.';

  @override
  String get managedHealthLifetime =>
      'Android may stop either app. Keeping the mobile connection alive does not guarantee the Termux server will keep running overnight.';

  @override
  String get quotaBudgetOff => '关闭';

  @override
  String quotaBudgetPercent(String percent) {
    return '$percent% used';
  }

  @override
  String get quotaBudgetSaveFailed =>
      'Could not save this budget change. Your last saved settings remain in effect.';

  @override
  String get quotaGlm => 'GLM';

  @override
  String get usageBudgetTitle => 'Budgets';

  @override
  String get usageBudgetDescription =>
      'Budgets use all reported consumption for the selected server, project, timezone and date-window start. Model filters do not change them. A new window start needs a new budget. These do not change subscription allowances or stop requests.';

  @override
  String get usageBudgetUsd => 'Set USD budget';

  @override
  String get usageBudgetTokens => 'Set token budget';

  @override
  String get usageBudgetAmount => 'Budget amount';

  @override
  String get usageBudgetRemove => 'Remove budget';

  @override
  String usageBudgetProgress(String used, String limit, String unit) {
    return '$used of $limit $unit';
  }

  @override
  String get usageBudgetTokenUnit => 'tokens';

  @override
  String get usageBudgetReached => 'Personal budget reached in this reading.';

  @override
  String get usageBudgetPrevious =>
      'Previous reading reached this budget. Refresh to check current consumption.';

  @override
  String get usageBudgetClearAll => 'Clear both budgets';

  @override
  String get usageBudgetClearDescription =>
      'Remove all current and past consumption budgets for this saved server? Provider thresholds are kept.';

  @override
  String get usageBudgetClearTitle => 'Clear consumption budgets?';

  @override
  String get monitorScope => '计数涵盖每个服务器上次所选的项目，而非该服务器上的所有项目。';

  @override
  String get monitorDisclosure =>
      '在你为某个服务器启用之前，监控处于关闭状态。应用打开时，大约每分钟检查一次。后台检查的间隔不少于五分钟，且仅在“在后台保持连接”已开启并且 Android 服务正在运行时进行。Android 可能会停止该服务，不保证剩余运行时间。';

  @override
  String get monitorOptIn => '监控此服务器';

  @override
  String get monitorOptInDetail => '检查其上次所选项目中待处理的权限、问题和表单。';

  @override
  String get monitorNotifications => '需要关注时通知';

  @override
  String get monitorWifiDetail =>
      '除非 Android 报告有活动的 Wi-Fi 网络，否则检查会暂停。VPN 或无法获取网络信息也可能导致检查暂停。';

  @override
  String get monitorQuiet => '静默时段';

  @override
  String get monitorQuietStart => '静默时段开始';

  @override
  String get monitorQuietEnd => '静默时段结束';

  @override
  String get monitorSaveFailed => '无法保存监控设置。请重试。';

  @override
  String get monitorOpenFailed =>
      'This request or its project changed. Refresh the inbox and try again.';

  @override
  String get monitorSession => 'Conversation';

  @override
  String get monitorPermission => 'Permission needed';

  @override
  String get monitorQuestion => 'Answer needed';

  @override
  String get monitorForm => 'Form response needed';

  @override
  String get monitorUnknown => 'Unknown';

  @override
  String get monitorLastChecked => 'Last checked';

  @override
  String monitorRequestSummary(
    String profile,
    String kind,
    String lastChecked,
    String time,
  ) {
    return '$profile · $kind\n$lastChecked: $time';
  }

  @override
  String get monitorCheckIn => '查看长时间运行';

  @override
  String get monitorCheckInDetail => '当某次运行忙碌这么久时提醒我。';

  @override
  String get monitorCheckInDetailForeground => '当某次运行忙碌这么久时显示一行提醒。';

  @override
  String get monitorCheckInAfter => '查看时间';

  @override
  String monitorMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes 分钟',
      one: '1 分钟',
    );
    return '$_temp0';
  }

  @override
  String get monitorCheckInDue => 'Time to check in';

  @override
  String get quotaBudgetClearAll => 'Clear saved provider thresholds';

  @override
  String managedRecoveryAttempts(int attempts) {
    return 'Attempts used: $attempts of 3. The limit survives app restarts.';
  }

  @override
  String get managedRecoveryExhausted =>
      'Recovery limit reached. Check the server and start it manually before resetting the retry budget.';

  @override
  String get managedRecoveryBackground =>
      'Recovery waits while the app is in the background.';

  @override
  String get managedRecoveryChecking =>
      'Checking the managed recovery operation…';

  @override
  String managedRecoveryNext(String time) {
    return 'Next recovery attempt no earlier than $time.';
  }

  @override
  String get managedRecoveryCheck => 'Check recovery status';

  @override
  String get managedRecoveryReset => 'Reset retry budget';

  @override
  String get managedRecoverySaveFailed =>
      'Recovery settings could not be saved. Retry.';

  @override
  String get managedRecoveryRevokeFailed =>
      'Could not save or revoke recovery. Keep this server and retry before removing it.';

  @override
  String get managedRecoverySettingsUnreadable =>
      'Recovery settings could not be read. Check the server before enabling recovery.';

  @override
  String get managedRecoveryEnableFailed =>
      'Could not enable recovery. Start the managed server, then try again.';

  @override
  String get managedRecoveryOwnershipChanged =>
      'The managed operation changed. Check the server before enabling recovery again.';

  @override
  String get managedRecoveryUncertain =>
      'Recovery paused because Termux did not confirm the result. Refresh to continue.';

  @override
  String get managedRecoveryRetryDisable => 'Try disabling recovery again';

  @override
  String get pluginMappingUnavailable =>
      'This plugin or command is no longer available here. Refresh and review your links.';

  @override
  String get mobileTasksUnfinished => 'Show unfinished only';

  @override
  String get mobileTasksNoUnfinished => 'No unfinished tasks in this list.';

  @override
  String get mobileTaskPending => 'Pending';

  @override
  String get mobileTaskInProgress => 'In progress';

  @override
  String get mobileTaskCompleted => 'Completed';

  @override
  String get mobileTaskCancelled => 'Cancelled';

  @override
  String mobileTasksProgress(int done, int total) {
    return '$done of $total done';
  }

  @override
  String get mobileTasksCopyAll => 'Copy all tasks';

  @override
  String get mobileTaskPriorityHigh => 'High priority';

  @override
  String get mobileTaskPriorityMedium => 'Medium priority';

  @override
  String get mobileTaskPriorityLow => 'Low priority';

  @override
  String get quotaMonitorTitle => 'Quota monitoring';

  @override
  String get quotaMonitorRuntime =>
      'Sources are checked in rotation, at most three per cycle; larger lists take several cycles. Background reads require the existing live service to be active; Android may stop it. Displayed readings expire when the collector says they do. Device alerts record past threshold readings, not current remaining allowance. This page never switches your active server.';

  @override
  String get usageWidgetTitle => 'Usage widget';

  @override
  String get usageWidgetIntro =>
      'Shows what’s left on your plans on the home-screen Usage widget. Updates while the app runs.';

  @override
  String get usageWidgetPhoneTitle => 'This phone';

  @override
  String get usageWidgetPhoneSupporting =>
      'Claude and other agents on this phone, via Paseo. Read only while they are running.';

  @override
  String get usageWidgetOpenRemaining => 'Open Remaining usage';

  @override
  String get usageWidgetCollectorNote =>
      'Codex, MiniMax and GLM come from Remaining usage. Set them up there, then turn on their alerts.';

  @override
  String get usageWidgetSettingsRow => 'Usage widget settings';

  @override
  String get usageWidgetSearchAliases =>
      'usage widget home screen claude codex plan limit remaining paseo';

  @override
  String get paseoUsageTitle => 'Show on the widget';

  @override
  String get paseoUsageSupporting =>
      'Show what is left on this server\'s plans, such as Claude, on the Usage widget. Checked while the app runs.';

  @override
  String get paseoUsageSaveFailed => 'Could not save that change. Try again.';

  @override
  String get quotaMonitorDisabled => 'Monitoring is off.';

  @override
  String get quotaMonitorWaiting => 'Waiting for a fresh reading.';

  @override
  String get quotaMonitorChecking => 'Checking now…';

  @override
  String get quotaMonitorPaused =>
      'Paused. Checks start again when the app is open or Stay connected in the background is on.';

  @override
  String get quotaMonitorWifiRequired => 'Waiting for Wi-Fi to check again.';

  @override
  String get quotaMonitorSourceChanged =>
      'The account on this server changed, so checks stopped. Open Remaining usage on that server and read it again.';

  @override
  String get quotaMonitorSaveFailed =>
      'Could not save quota monitoring. A failed disable stays paused in this app; retry before closing the app.';

  @override
  String quotaMonitorDisable(String provider, String server) {
    return 'Stop monitoring $provider on $server';
  }

  @override
  String get webSearchDisclosure =>
      'Search sends your query to this server’s selected search provider. Review results before adding them to your editable draft. Nothing is sent to the model here.';

  @override
  String get webSearchManual => 'Or paste a source';

  @override
  String get webSearchUnavailable =>
      'Web search is unavailable. Configure a search provider on this server, then refresh providers. You can still paste a source below.';

  @override
  String get webSearchAuthentication =>
      'The server did not authorize web search. Check this server’s credentials.';

  @override
  String get webSearchInvalidResponse =>
      'The search response did not match this server or the supported format. Refresh providers or paste a source.';

  @override
  String get webSearchFailed =>
      'Web search could not finish. Try again or paste a source.';

  @override
  String get webSearchRefresh => 'Refresh providers';

  @override
  String get webSearchProvider => 'Search provider';

  @override
  String get webSearchQuery => 'Search query';

  @override
  String get webSearchSubmit => 'Search';

  @override
  String get webSearchEmpty => 'No usable results for this query.';

  @override
  String get webSearchOmitted =>
      'Some results were omitted because their links or excerpts exceeded the review limits.';

  @override
  String get queueStorageUnreadable => '无法读取已保存的排队提示词。在清除此设备数据之前，无法将新的提示词加入队列。';

  @override
  String get queueStorageDiscardUnreadable =>
      '这将从此设备永久删除无法读取的排队提示词及其附件。其内容和数量均未知。服务器上的内容不受影响。';

  @override
  String get filesViewerScopeChanged => '服务器已更改。请关闭并重新打开此文件。';

  @override
  String get queueStorageCountUnknown => '无法读取已保存的排队数据。排队提示词的数量未知。';

  @override
  String get codexConnectionVerified => '连接已验证。保存并连接以继续。';

  @override
  String get codexApprovalRecoveryNotice => '重新连接后，请在你的电脑上检查待处理的批准。';

  @override
  String get connectionTokenRejected =>
      'The connection token was rejected. Update it to reconnect.';

  @override
  String connectionPasswordUnreadable(String server) {
    return '无法读取已保存的 $server 密码';
  }

  @override
  String connectionTokenUnreadable(String server) {
    return '无法读取已保存的 $server 令牌';
  }

  @override
  String get connectionEnterPassword => '输入密码';

  @override
  String get connectionEnterToken => '输入令牌';

  @override
  String get connectionPasswordUnreadableDetails =>
      '此手机的安全存储无法打开为该服务器保存的密码。从备份恢复手机或更改屏幕锁后可能出现这种情况。密码本身没有改变：请重新输入以连接。';

  @override
  String get connectionTokenUnreadableDetails =>
      '此手机的安全存储无法打开为该服务器保存的令牌。从备份恢复手机或更改屏幕锁后可能出现这种情况。令牌本身没有改变：请重新输入以连接。';

  @override
  String get updateConnectionToken => '更新令牌';

  @override
  String get codexDraftReconnectNotice => '待审阅的草稿保留在这里；不会自动发送任何内容。';

  @override
  String get codexTextOnlyPrompt => '此服务器仅支持文字。发送前请移除附件。';

  @override
  String get codexOfflineDraftSaved => '请先重新连接再发送。草稿保存在本设备上。';

  @override
  String get codexReconnectBeforeSending => '请先重新连接再发送。';

  @override
  String get openCodeConnectionLabel => 'OpenCode';

  @override
  String get paseoAddressHint => 'ws://100.64.0.1:6767 或 wss://paseo.example';

  @override
  String get paseoPasswordLabel => '守护进程密码（可选）';

  @override
  String get paseoPasswordHelp =>
      '用 \"paseo daemon set-password\" 设置。保存在本设备的安全存储中。';

  @override
  String get paseoSetupNotice =>
      '在安装了 Claude Code 或 Pi 的电脑上运行 \"paseo start --no-relay\"。本应用从不使用 Paseo 中继：请在此设备上连接，或通过你自己的私有网络连接。';

  @override
  String get connectionDisplayName => '显示名称（可选）';

  @override
  String get connectionDisplayNameHint => '默认为服务器主机';

  @override
  String get connectionServerAddress => '服务器地址';

  @override
  String get codexAddressHint => 'wss://codex.example 或 ws://127.0.0.1:4500';

  @override
  String get codexProjectFolder => '服务器上的项目文件夹';

  @override
  String get codexTokenReentry => '重新输入连接令牌';

  @override
  String get codexTokenLabel => '连接令牌';

  @override
  String get codexTokenStorageHelp => '安全保存在本设备上，仅发送给此 Codex 服务器。';

  @override
  String get projectConfiguredFolder => 'Configured folder';

  @override
  String get termuxGuideTitle => '连接一次 Termux';

  @override
  String get termuxGuideOpenFailed =>
      '命令已复制，但无法打开 Termux。请自行打开 Termux，或再试一次“复制并打开 Termux”。';

  @override
  String get termuxGuideCopyOpenFailed => '无法复制命令或打开 Termux。';

  @override
  String get termuxPermissionDenied => 'Android 不允许本应用在 Termux 中运行命令。';

  @override
  String get launchShortcutWaiting => '正在连接已保存的服务器。就绪后会打开新对话。';

  @override
  String get launchShortcutNoServer => '请选择一个服务器，然后开始新对话。';

  @override
  String get launchShortcutReentry => '请输入已保存服务器的凭据，然后开始新对话。';

  @override
  String get launchShortcutConnectionFailed =>
      '无法连接到已保存的服务器。请选择或修复服务器，然后开始新对话。';

  @override
  String get launchUiPinnedUntitled => 'Untitled conversation';

  @override
  String get launchUiSessionWaiting => '正在连接已保存的服务器。就绪后会打开该对话。';

  @override
  String get launchUiSessionNoServer => '请选择一个服务器，然后从其列表中打开该对话。';

  @override
  String get launchUiSessionReentry => '请输入已保存服务器的凭据，然后从其列表中打开该对话。';

  @override
  String get launchUiSessionConnectionFailed =>
      '无法连接到已保存的服务器。请选择或修复服务器，然后从其列表中打开该对话。';

  @override
  String get launchUiSessionOtherServer =>
      '该快捷方式属于另一个服务器。请连接到该服务器，然后从其列表中打开对话。';

  @override
  String get launchUiActivityNoServer => '选择一个服务器，查看需要你关注的事项。';

  @override
  String get launchUiUsageNoServer => '保存一个服务器，即可查看你的套餐还剩多少额度。';

  @override
  String get queuedResendTitle => '要再次发送这份草稿吗？';

  @override
  String get queuedResendMessage => '它可能已经到达 OpenCode，再次发送可能会造成重复。';

  @override
  String get queuedResendConfirm => '重新发送';

  @override
  String get queuedKeepForReview => '保留以便查看';

  @override
  String get queuedDiscardUnconfirmedMessage => '它之前的发送一直没有得到确认，可能已经在对话里了。';

  @override
  String get setupRuntimeTwo => 'OpenCode 2';

  @override
  String queuedBannerReview(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 份草稿的发送尚未确认，需要查看。',
      one: '1 份草稿的发送尚未确认，需要查看。',
    );
    return '$_temp0';
  }

  @override
  String get isolatedTaskTitle => 'Start in a separate copy';

  @override
  String get isolatedTaskIntro =>
      'Works on its own branch, so it can\'t clash with your other conversations.';

  @override
  String get isolatedTaskNameLabel => 'Name of the copy (optional)';

  @override
  String get isolatedTaskNameHelper =>
      'Leave it empty and a name is chosen for you.';

  @override
  String get isolatedTaskStart => 'Start';

  @override
  String get isolatedTaskCreating => 'Making the copy…';

  @override
  String get isolatedTaskCreatingHint =>
      'If you stop waiting, the copy may still be made. You\'ll find it under Project › Worktrees.';

  @override
  String isolatedTaskPreparing(String name) {
    return 'Setting up $name…';
  }

  @override
  String isolatedTaskReady(String name) {
    return '$name is ready. Opening the conversation…';
  }

  @override
  String isolatedTaskReadyIdle(String name) {
    return '$name is ready, but the conversation didn\'t open.';
  }

  @override
  String isolatedTaskUnconfirmed(String name) {
    return '$name is made, but its setup hasn\'t reported back.';
  }

  @override
  String get isolatedTaskUnconfirmedHint =>
      'Setup may still be running. Keep waiting, or start in it now.';

  @override
  String isolatedTaskFailed(String name) {
    return 'Setup failed in $name';
  }

  @override
  String get isolatedTaskCreateFailed => 'Couldn\'t make the copy';

  @override
  String get isolatedTaskCancelled => 'Stopped waiting.';

  @override
  String isolatedTaskOpening(String name) {
    return 'Opening the conversation in $name…';
  }

  @override
  String isolatedTaskOpened(String name) {
    return 'The conversation in $name is ready.';
  }

  @override
  String get isolatedTaskStopWaiting => 'Stop waiting';

  @override
  String get isolatedTaskKeepWaiting => 'Keep waiting';

  @override
  String get isolatedTaskRetryOpen => '重试';

  @override
  String get isolatedTaskClose => 'Close';

  @override
  String get returnBriefStatusUnknown => 'Review status unknown';

  @override
  String get returnBriefReview => 'Review results';

  @override
  String get returnBriefContinue => '继续';

  @override
  String get capsuleError => 'Error';

  @override
  String get capsuleRemove => '移除';

  @override
  String get markdownWrapCode => '自动换行';

  @override
  String get markdownScrollCode => '滚动显示行';

  @override
  String get markdownReaderTitle => 'Code reader';

  @override
  String get tailscaleTitle => '通过 Tailscale 连接';

  @override
  String get tailscaleIntro => '通过你自己的 Tailscale 网络访问另一台电脑上的 OpenCode。';

  @override
  String get tailscaleAppStep => '1. 打开你的私有网络';

  @override
  String get tailscaleChecking => '正在检查 Tailscale 应用…';

  @override
  String get tailscaleInstalled => 'Tailscale 已安装。';

  @override
  String get tailscaleMissing => '未安装 Tailscale。请安装官方应用，然后返回再次检查。';

  @override
  String get tailscaleUnknown => '无法检查该应用。请重试，或从手机上打开 Tailscale。';

  @override
  String get tailscaleUnsupported =>
      '此设备无法打开 Android 应用。请自行在此设备上设置 Tailscale，然后检查下方的 HTTPS 地址。';

  @override
  String get tailscaleVpnHandoff =>
      '在 Tailscale 中登录可访问你服务器的网络，如果 Android 弹出 VPN 请求请予以允许，然后开启连接。OpenCode 无法查看或更改该 VPN 的状态。';

  @override
  String get tailscaleReturned => '欢迎回来。已重新检查应用是否存在；请在下一屏使用“测试连接”来检查你的服务器。';

  @override
  String get tailscaleOpen => '打开 Tailscale';

  @override
  String get tailscaleCheckAgain => '再次检查 Tailscale';

  @override
  String get tailscaleAddressStep => '2. 检查服务器地址';

  @override
  String get tailscaleAddressLabel => '私有服务器地址';

  @override
  String get tailscaleAddressDetail =>
      '粘贴 Tailscale Serve 提供的完整 HTTPS 地址，或你的服务器在 Tailscale 上的 HTTP 地址和端口。HTTP 会在连接前征求你的许可。';

  @override
  String get tailscaleAddressError =>
      '请输入完整的 HTTP 或 HTTPS 服务器地址，必要时带端口，后面不要加路径。';

  @override
  String get tailscaleReviewDetail =>
      '仅在地址是你认识的情况下继续。下一个页面会在你明确测试或保存之前检查服务器凭据。本应用无法仅凭名称确认某个地址是私有的。';

  @override
  String get tailscaleContinue => '继续登录';

  @override
  String get tailscaleHelp => 'Tailscale 设置与恢复';

  @override
  String get tailscaleServeHelp =>
      '在服务器所在的计算机上，Tailscale Serve 可以为本地 OpenCode 端口提供私有 HTTPS。请使用 Serve，不要使用公开的 Funnel。你的 tailnet 访问规则仍然适用。启用 HTTPS 会把证书中的设备名和 tailnet 名发布到公开的证书日志中，但访问仍是私有的。更改服务器之前，请先阅读官方指南。';

  @override
  String get tailscaleServeDocs => '阅读 Serve 官方指南';

  @override
  String get tailscaleAndroidDocs => '阅读 Android 官方指南';

  @override
  String get tailscaleRecovery =>
      '如果无法访问服务器，请检查两台设备上的 Tailscale、地址和端口，以及网络访问规则。若使用 Serve 地址，还要检查服务器上的 Serve。若认证被拒绝，请更正密码，然后重新测试连接。';

  @override
  String get tailscaleEditorDetail =>
      '你的网络连接由 Tailscale 管理。“测试连接”检查的是此 OpenCode 服务器，而不是 VPN。请在此输入服务器自己的用户名和密码，而不是 Tailscale 登录信息。查看设置帮助时这些字段会保留。';

  @override
  String get a2aDraftSaveError =>
      'Draft changes could not be saved. Keep this screen open and retry before leaving.';

  @override
  String get a2aRetryDraftSave => 'Try saving draft again';

  @override
  String get a2aSavingDraft => 'Saving draft changes…';

  @override
  String get a2aSupportedConnection => 'A2A 1.0 · JSON-RPC · Text tasks';

  @override
  String get a2aTitle => '外部智能体';

  @override
  String get a2aAdd => 'Add agent';

  @override
  String get a2aDeleteLocal => 'Remove from this phone';

  @override
  String get a2aAddress => 'Agent address';

  @override
  String get a2aUnsupported =>
      'Unavailable: this card does not advertise the supported A2A 1.0 JSON-RPC, text and authentication combination on the same origin, or requires an unsupported extension. No task can be sent.';

  @override
  String get a2aBearer => 'Agent bearer credential';

  @override
  String get a2aSkills => 'Advertised skills';

  @override
  String get a2aTaskPrompt => 'Task text';

  @override
  String get a2aDeliveryUnconfirmed => 'Delivery unconfirmed';

  @override
  String get a2aDraft => 'Not sent';

  @override
  String get a2aCancelDetail =>
      'Ask this agent to stop this task. Work may already have finished, and the agent decides whether stopping is possible.';

  @override
  String get a2aYourReply => 'Your reply';

  @override
  String get a2aAgentOutput => 'Agent output';

  @override
  String get a2aBlockedLink => 'Unsupported link';

  @override
  String get a2aReviewLink => 'Review external link';

  @override
  String get a2aOmittedContent =>
      'Some output is omitted. This view shows bounded text and links; binary or structured artifacts are not downloaded or executed.';

  @override
  String get a2aSubmitted => 'Submitted';

  @override
  String get a2aWorking => 'Working';

  @override
  String get a2aInputRequired => 'Your input is needed';

  @override
  String get a2aAuthRequired => 'Agent requires authentication';

  @override
  String get a2aCompleted => 'Completed';

  @override
  String get a2aFailed => 'Failed';

  @override
  String get a2aCanceled => 'Canceled';

  @override
  String get a2aRejected => 'Rejected';

  @override
  String get a2aUnknown => 'Unsupported task state';

  @override
  String get a2aAddressError =>
      'Use an HTTPS origin or public Agent Card URL without credentials, query or fragment. HTTP is supported only on this device\'s loopback address.';

  @override
  String get a2aAuthenticationError =>
      'The agent rejected or could not use this credential. Return to the agent to update it, then reopen the saved task.';

  @override
  String get a2aUnavailable =>
      'The agent could not be reached or rejected this operation. Refresh a known task to check its state.';

  @override
  String get a2aInvalidResponse =>
      'The agent returned an unsupported, oversized or mismatched response. The saved task has not been replaced.';

  @override
  String get a2aUncertain =>
      'The agent may have received this message. It will not be resent. If a task ID was confirmed, refresh to check progress; otherwise check with the agent before starting another task.';

  @override
  String get a2aStorageError =>
      'Local data could not be saved or removed. Check device storage and retry the local operation. A message without a saved delivery marker is not sent.';

  @override
  String get a2aScopeError =>
      'This agent, credential or saved task changed. Close this view and reopen the agent to continue.';

  @override
  String get a2aCancelUnconfirmed =>
      'Cancellation is not confirmed. The agent still reports an active task; refresh to check again.';

  @override
  String get a2aAuthRequiredDetail =>
      'This agent requested an additional authentication flow, which this client does not support. No automatic login or task continuation will occur.';

  @override
  String get a2aUnknownDetail =>
      'This task state is not supported. You can refresh or forget the local record; sending and cancellation remain unavailable.';

  @override
  String get fileTable => 'Table';

  @override
  String get fileSource => 'Source';

  @override
  String fileLineOutsidePreview(int line) {
    return 'Line $line is outside this preview. Save the original to read that location.';
  }

  @override
  String get fileTableMalformed =>
      'This file has incomplete or inconsistent quoting. Read its source instead.';

  @override
  String get fileTableTooLarge =>
      'Table preview supports files up to 256 KB. Read the source or save the original file.';

  @override
  String get fileTableTooWide =>
      'This file has more than 32 columns. Read the source or save the original file.';

  @override
  String get fileTableFieldTooLong =>
      'A cell exceeds 4,096 characters. Read the source or save the original file.';

  @override
  String get fileImage => 'Image';

  @override
  String get fileSvgUnsupported =>
      'This SVG cannot be shown as a local static image. Read its source or save the original file. External resources, animation and complex SVG features are not supported.';

  @override
  String get filePdfEncrypted =>
      'This PDF requires a password or uses unsupported protection. Save the original to open it in a PDF app.';

  @override
  String get filePdfLimit =>
      'PDF preview supports files up to 10 MB and the first 200 pages. Save the original to read the full document.';

  @override
  String get filePdfUnavailable =>
      'PDF viewing is available on Android 10 or newer. You can still save the original file.';

  @override
  String get filePdfCancelled =>
      'PDF loading cancelled. Retry when you are ready.';

  @override
  String get filePdfFailed =>
      'This PDF page could not be displayed. Retry or save the original file.';

  @override
  String get agentAccountTitle => 'Codex 账号';

  @override
  String get agentAccountScopeLost =>
      'This server changed. Return to Servers and open the account for the connected server.';

  @override
  String get agentAccountRefresh => 'Refresh account';

  @override
  String get agentAccountLoading => 'Checking the host account';

  @override
  String get agentAccountUnavailable => 'Account panel unavailable';

  @override
  String get agentAccountReadFailed => 'Could not read the account';

  @override
  String get agentAccountDisconnected => 'Connection interrupted';

  @override
  String get agentAccountConnected => 'Signed in on the host';

  @override
  String get agentAccountSignedOut => 'Ready to sign in';

  @override
  String get agentAccountInProgress => 'Sign-in in progress';

  @override
  String get agentAccountNeedsAttention => 'Sign-in needs attention';

  @override
  String get agentAccountNoAuth => 'Host does not require sign-in';

  @override
  String get agentAccountApiKey => 'API key';

  @override
  String get agentAccountHostAuth => 'Host authentication';

  @override
  String get agentAccountHostNote =>
      'The sign-in is kept on the server\'s computer, not in this app. Signing in or out here changes it for every saved server on that computer.';

  @override
  String get agentAccountUnsupportedDetail =>
      'This panel is verified with Codex 0.153.4. The connected runtime may not support these account methods.';

  @override
  String get agentAccountReconnectDetail =>
      'Account data and the sign-in code were cleared. Reconnect to refresh. Sign-in will not restart automatically.';

  @override
  String get agentAccountSignIn => 'Sign in with ChatGPT';

  @override
  String get agentAccountSignInNote =>
      'Sign in with your ChatGPT account. You finish in the browser; this app never sees your password.';

  @override
  String get agentAccountLimits => 'Rate limits';

  @override
  String get agentAccountLimitsUnavailable =>
      'Rate limits are unavailable for this account or host.';

  @override
  String get agentAccountUsage => 'Token usage';

  @override
  String get agentAccountUsageUnavailable =>
      'Token usage is unavailable for this account or host.';

  @override
  String get agentAccountLifetimeTokens => 'Lifetime tokens';

  @override
  String get agentAccountPeakTokens => 'Peak daily tokens';

  @override
  String get agentAccountUsageNote =>
      'Values are reported by the host. Missing values are unknown, not zero. Token counts are not a bill or remaining message allowance.';

  @override
  String agentAccountUpdated(String time) {
    return 'Last checked $time';
  }

  @override
  String get agentAccountStarting => 'Requesting a sign-in code';

  @override
  String get agentAccountWaiting => 'Finish sign-in in your browser';

  @override
  String get agentAccountCancelling => 'Cancelling sign-in';

  @override
  String get agentAccountCancelled => '已取消登录';

  @override
  String get agentAccountLoginFailed =>
      'Sign-in did not complete. Check the host and try again.';

  @override
  String get agentAccountLoginUncertain =>
      'The host could not confirm sign-in or cancellation. It may still be waiting. Check the official host runtime before starting again.';

  @override
  String get agentAccountLoginCompleted =>
      'Sign-in completed. Checking the account.';

  @override
  String get agentAccountCodeHint =>
      'Enter this one-time code on the official sign-in page. Keep it private.';

  @override
  String get agentAccountOpenSignIn => 'Open official sign-in';

  @override
  String get agentAccountCancel => 'Cancel sign-in';

  @override
  String get agentAccountAllowance => 'Reported allowance';

  @override
  String agentAccountPercentUsed(int percent) {
    return '$percent% used';
  }

  @override
  String get agentAccountWindowUnknown => 'Window duration unavailable';

  @override
  String agentAccountWindowMinutes(int minutes) {
    return '$minutes-minute window';
  }

  @override
  String agentAccountWindowHours(int hours) {
    return '$hours-hour window';
  }

  @override
  String agentAccountWindowDays(int days) {
    return '$days-day window';
  }

  @override
  String get agentAccountResetUnknown => 'Reset time unavailable';

  @override
  String get projectFolderChooserTitle => 'Choose a project folder';

  @override
  String get projectFolderCreate => 'Create a new folder';

  @override
  String get projectFolderOpen => 'Open a project folder';

  @override
  String get projectFolderNoCreateHint =>
      'This server cannot create folders from the app. Create the folder on that machine, then open it here by its path.';

  @override
  String get projectFolderNameLabel => 'Folder name';

  @override
  String get projectFolderNameHint => 'my-app';

  @override
  String get projectFolderCreateAction => 'Create';

  @override
  String get projectFolderCancel => 'Cancel';

  @override
  String get projectFolderOpenMessage =>
      'Enter the full path of a folder on the server. The home folder itself cannot be used; choose a project inside it.';

  @override
  String get projectFolderPathLabel => 'Folder path';

  @override
  String projectFolderPathHint(String directory) {
    return '$directory/my-app';
  }

  @override
  String get projectFolderOpenAction => 'Open';

  @override
  String projectFolderCreateSubtitle(String directory) {
    return 'In $directory on this device';
  }

  @override
  String get projectFolderOpenSubtitle =>
      'Enter the full path of a folder on the server';

  @override
  String get globalSessionsTitle => 'All conversations';

  @override
  String get globalSessionsSearchLabel => 'Search conversation titles';

  @override
  String get globalSessionsArchivedShort => 'Archived';

  @override
  String get globalSessionsUnknownLocation => 'Unknown project';

  @override
  String get globalSessionsEmptyTitle => 'No conversations yet';

  @override
  String get globalSessionsEmptyMessage =>
      'Conversations from every project on this server will appear here.';

  @override
  String get globalSessionsNoMatchTitle => 'No matching conversations';

  @override
  String get globalSessionsNoMatchMessage =>
      'Try a shorter title search or include archived conversations.';

  @override
  String get globalSessionsRefresh => 'Refresh';

  @override
  String get globalSessionsLoadMoreFailed =>
      'Could not load more conversations';

  @override
  String get globalSessionsOpen => 'Open';

  @override
  String get globalSessionsContinueHere => 'Continue here';

  @override
  String get globalSessionsActions => 'Conversation actions';

  @override
  String get globalSessionsWorking => 'Working';

  @override
  String get globalSessionsUntitled => 'Untitled conversation';

  @override
  String get workspaceNewSession => 'New conversation';

  @override
  String get workspaceDismissNotice => '关闭';

  @override
  String get workspaceManageProjectHint =>
      'Switch project, where it runs, and its folder';

  @override
  String get reviewCopyFile => 'Copy updated file';

  @override
  String get reviewCopyPatch => 'Copy patch';

  @override
  String get onboardingValueTitle => '让工作持续推进。';

  @override
  String get onboardingValueBody => '让编程智能体帮你修改代码，查看结果，随时接着上次的进度继续。';

  @override
  String get onboardingDemoNote => '模拟对话，无需服务器。';

  @override
  String get onboardingPrivateNetwork => '通过私有网络访问服务器';

  @override
  String get onboardingSetupGuide => '设置指南';

  @override
  String get onboardingSaveConnect => '保存并连接';

  @override
  String get onboardingSaveChanges => '保存更改';

  @override
  String get onboardingTermuxSetup => '在这部手机上';

  @override
  String get activityClearHere => 'All clear here';

  @override
  String get activityStatusIncomplete => 'Status incomplete';

  @override
  String get activityUnknownStatusDetail =>
      'No requests loaded. Some server activity is still unknown.';

  @override
  String get activityCheckAgain => 'Try again';

  @override
  String get activitySavedServers => 'Saved servers';

  @override
  String get demoTaskTitle => '试试一个小改动';

  @override
  String get demoTaskInstruction => '发送下方的示例提示词，然后查看建议的编辑。';

  @override
  String get reviewTitle => '审查';

  @override
  String get modelChoiceReloadProviders => '重新加载提供商';

  @override
  String get modelChoiceDone => 'Done';

  @override
  String get modelChoicePartialSaveError => '模型已保存，但所选智能体未得到确认。请重试。';

  @override
  String get modelChoiceModelSaveError => '无法确认所选模型。请检查你的选择后重试。';

  @override
  String get workIdle => 'Idle';

  @override
  String get workStartedInBackground => 'Started in background';

  @override
  String get workBackgroundPending => 'Requesting background work…';

  @override
  String get workBackgroundRequested => '已请求后台运行。服务器报告后状态将更新。';

  @override
  String get oc2DiscoveryEditorTitle => 'OpenCode 2';

  @override
  String get setupSwitchPending => '升级到 OpenCode 2 尚未完成。已保存的对话会保留。请重试。';

  @override
  String setupSwitchRetry(String runtime) {
    return 'Try $runtime again';
  }

  @override
  String get setupSwitchFailed => '无法完成升级到 OpenCode 2。已保存的对话会保留。请重试。';

  @override
  String setupSwitchProfileName(String runtime) {
    return '此手机 · $runtime';
  }

  @override
  String get setupSwitchMissingCredential =>
      '无法读取已保存的服务器密码。你的对话和文件会保留。请恢复对已保存密码的访问，然后重试。';

  @override
  String setupSwitchProgressTitle(String runtime) {
    return '正在切换到 $runtime';
  }

  @override
  String e7ConnectionFailure1(int attempts) {
    return '已尝试 $attempts 次。重试不会启动未运行的服务器。';
  }

  @override
  String get e7ConnectionFailure2 => '需要连接令牌';

  @override
  String get e7ConnectionFailure3 => '此 Codex 服务器需要连接令牌，应用才能连接。';

  @override
  String get e7ConnectionFailure4 => '打开服务器设置，输入 Codex 连接令牌。';

  @override
  String get e7ConnectionFailure5 => '连接令牌被拒绝';

  @override
  String get e7ConnectionFailure6 => 'Codex 服务器有响应，但不接受已保存的连接令牌。';

  @override
  String get e7ConnectionFailure7 => '打开服务器设置，输入有效的 Codex 连接令牌。';

  @override
  String get e7ConnectionFailure8 => 'Codex 监听器不可用';

  @override
  String get e7ConnectionFailure9 => '无法访问 Codex 端点';

  @override
  String get e7ConnectionFailure12 => '在此设备上启动 Codex 监听器。';

  @override
  String get e7ConnectionFailure13 => '如果它位于隧道之后，请保持隧道运行并检查其本地端点。';

  @override
  String get e7ConnectionFailure14 => '使用 Codex 的 wss:// 端点或可用的安全隧道。';

  @override
  String get e7ConnectionFailure15 => '检查此设备能否访问远程 Codex 监听器。';

  @override
  String get e7ConnectionFailure16 => '密码被拒绝';

  @override
  String get e7ConnectionFailure17 => '服务器有响应，但不接受已保存的密码。服务器使用新密码重启后会出现这种情况。';

  @override
  String get e7ConnectionFailure18 => '在计算机上运行 opencode2 pair，并粘贴新代码。';

  @override
  String get e7ConnectionFailure19 =>
      '如果你手动设置了 OPENCODE_SERVER_PASSWORD，请重新复制。';

  @override
  String get e7ConnectionFailure20 => '证书不受信任';

  @override
  String get e7ConnectionFailure21 => '服务器存在，但此设备不信任其 HTTPS 证书，因此应用拒绝发送密码。';

  @override
  String get e7ConnectionFailure22 => '使用受信任机构签发的证书，或 Tailscale Serve 地址。';

  @override
  String get e7ConnectionFailure23 => '如果是自签名证书，请编辑此服务器并先核对其指纹再信任。';

  @override
  String get e7ConnectionFailure24 => '此手机上没有响应';

  @override
  String get e7ConnectionFailure26 =>
      '在 Termux 中运行 OpenCode？请打开 Termux，检查服务器是否仍在运行。';

  @override
  String get e7ConnectionFailure27 =>
      '使用了 adb reverse 或 SSH 转发？请检查隧道是否仍然连通，然后重试。';

  @override
  String get e7ConnectionFailure28 => '要连接另一台计算机？请把服务器改为它的 HTTPS 地址，或重新配对。';

  @override
  String get e7ConnectionFailure29 => '服务器未及时响应';

  @override
  String get e7ConnectionFailure31 => '你与计算机在同一网络或 VPN（例如 Tailscale）中吗？';

  @override
  String e7ConnectionFailure32(int port) {
    return '防火墙或强制门户是否拦截了端口 $port？';
  }

  @override
  String get e7ConnectionFailure33 => '无法访问服务器';

  @override
  String get e7ConnectionFailure35 => '计算机上的 opencode serve 仍在运行吗？';

  @override
  String get e7ConnectionFailure36 => '你与计算机在同一网络或 VPN 中吗？';

  @override
  String get e7ConnectionFailure37 => '地址变了吗？请重新配对以获取新地址。';

  @override
  String get e7ConnectionFailure38 => '服务器返回了错误';

  @override
  String get e7ConnectionFailure39 => '服务器在运行，但报告自身状态异常。其日志会说明原因。';

  @override
  String get e7ConnectionFailure40 => '重启 opencode serve 并查看其输出。';

  @override
  String get e7ConnectionFailure41 => '检查此应用是否支持该服务器版本。';

  @override
  String get e7ConnectionFailure42 => '无法连接';

  @override
  String get e7ConnectionFailure44 => '智能体服务器在运行吗？这个地址对吗？';

  @override
  String get e7ConnectionFailure45 => 'opencode serve 在运行吗？这个地址对吗？';

  @override
  String get e7PermissionAction1 => '运行 shell 命令';

  @override
  String get e7PermissionAction2 => '编辑文件';

  @override
  String get e7PermissionAction3 => '读取文件';

  @override
  String get e7PermissionAction4 => '访问外部目录';

  @override
  String get e7PermissionAction5 => '在多次失败后继续';

  @override
  String get e7PermissionAction6 => '需要权限';

  @override
  String e7PermissionAction7(String permission) {
    return '使用 $permission';
  }

  @override
  String get e7GlossaryMcpExplanation =>
      'Model Context Protocol. Small add-on servers that give the agent extra tools, like a browser, a database, or a design tool. You connect them once and every conversation can use them.';

  @override
  String get e7GlossaryWorktreeExplanation =>
      'A separate checkout of the same repository. Use one when you want the agent to try something on its own branch without touching the code you are working in.';

  @override
  String get e7GlossaryGotIt => 'Got it';

  @override
  String get e7BannerReconnectPassword =>
      'Server password changed — reconnect.';

  @override
  String get e7BannerUpdatePassword => '更新密码';

  @override
  String get e7BannerLost => '连接已断开';

  @override
  String get e7BannerRetrying => 'Retrying';

  @override
  String get e7BannerDetails => '详情';

  @override
  String e7BannerReconnectPasswordNote(String note) {
    return 'Server password changed — reconnect.\n$note';
  }

  @override
  String e7BannerReconnectingServer(String server) {
    return '正在重新连接到 $server…';
  }

  @override
  String e7BannerReconnectingServerSemantic(String server) {
    return '正在重新连接 $server';
  }

  @override
  String get e7BannerCheckingExplanation =>
      '检查 OpenCode 期间，你看到的内容仍可使用。实时更新会自动恢复。';

  @override
  String get e7BannerStaleExplanation => '在 OpenCode 恢复可访问之前，你看到的内容可能已过时。';

  @override
  String e7BannerCheckingExplanationAgent(String agent) {
    return 'What you see stays available while $agent is checked. Live updates resume on their own.';
  }

  @override
  String e7BannerStaleExplanationAgent(String agent) {
    return 'What you see may be stale until $agent is reachable again.';
  }

  @override
  String get e7SharedThreeStepsToYourFirstSession =>
      'Three steps to your first conversation';

  @override
  String get e7SharedOpenCodeRunsOnYourComputerThisApp =>
      'OpenCode runs on your computer. This app is the remote. Pairing connects the two with one command — no addresses or passwords to type.';

  @override
  String get e7SharedOnYourComputerRunOneCommand =>
      'On your computer, run one command';

  @override
  String get e7SharedInATerminalOnTheComputerWhere =>
      'In a terminal on the computer where OpenCode is installed:';

  @override
  String get e7SharedItStartsTheServerAndPrintsA =>
      'It starts the server and prints a pairing code — and a QR code you can scan.';

  @override
  String get e7SharedScanTheQROrPasteTheCode =>
      'Scan the QR or paste the code in this app';

  @override
  String get e7SharedPasteTheCodeInThisApp => 'Paste the code in this app';

  @override
  String get e7SharedStartTalking => 'Start talking';

  @override
  String get e7SharedPickAProjectAndSendYourFirst =>
      'Pick a project and send your first message. The work happens on your computer; this app shows it and lets you steer.';

  @override
  String get e7SharedAdvanced => 'Advanced';

  @override
  String get e7SharedHTTPSSSHTunnelsOlderServersTermuxInternals =>
      'HTTPS, SSH tunnels, older servers, Termux internals';

  @override
  String get e7SharedHTTPSSSHTunnelsOlderServers =>
      'HTTPS, SSH tunnels, older servers';

  @override
  String get e7SharedReachAServerOverHTTPSOrA =>
      'Reach a server over HTTPS or a tunnel';

  @override
  String get e7SharedPairingWorksWhenTheAddressTheServer =>
      'Pairing works when this device can reach the server address. A remote HTTP address asks for your permission before sending the password. Prefer HTTPS or a private Tailscale connection.';

  @override
  String get e7SharedOlderServersWithoutPairing =>
      'Older servers without pairing';

  @override
  String get e7SharedServersStartedWithOpencodeServeDoNot =>
      '如需本地连接，请在这台电脑上启动 OpenCode 2。使用它输出的密码：';

  @override
  String get e7SharedThenAddTheServerManuallyWithUsername =>
      '然后手动添加服务器，用户名填 opencode，密码填上面的密码。';

  @override
  String get e7SharedOnDeviceViaTermuxAutomated =>
      'On-device via Termux (automated)';

  @override
  String get e7SharedUseTheOnDeviceTermuxCardOn =>
      'Use the “On-device (Termux)” card on the Servers screen. The app installs Termux, unlocks the bridge, sets up opencode, starts the server and connects — all guided.';

  @override
  String get e7SharedOnlyTwoTapsNeedYouPersonallyDownloading =>
      'Only two taps need you personally: downloading the Termux APK and pasting one unlock line inside Termux once — both required by Android’s security model, not by this app.';

  @override
  String get e7SharedPreferManualInsideTermuxRun =>
      'Prefer manual? Inside Termux run:';

  @override
  String get e7SharedTheChrootSharesTheNetworkStackSo =>
      'The chroot shares the network stack, so http://127.0.0.1:4096 works from this app. Run `termux-wake-lock` to keep it alive.';

  @override
  String get e7SharedSecurityNotes => 'Security notes';

  @override
  String get e7SharedAlwaysSetOPENCODESERVERPASSWORDWhenBinding =>
      'Always set OPENCODE_SERVER_PASSWORD when binding beyond localhost.';

  @override
  String get e7SharedPasswordsAreStoredInTheAndroidKeystore =>
      'Passwords are stored in the Android Keystore on this device only.';

  @override
  String get e7SharedTheServerCanExecuteCommandsOnIts =>
      'The server can execute commands on its host — treat access like SSH access.';

  @override
  String get e7SharedOpenCodeIsReconnectingTryAgain =>
      'OpenCode is reconnecting. Try again.';

  @override
  String get e7SharedSessionContext => 'Conversation context';

  @override
  String get e7SharedRefreshContext => 'Refresh context';

  @override
  String get e7SharedNoContextUsageYet => 'No context usage yet';

  @override
  String get e7SharedSendAPromptAndWaitForAn =>
      'Send a prompt and wait for an assistant response. OpenCode will then report token usage for this conversation.';

  @override
  String get e7SharedEstimatedInputMakeup => 'Estimated input makeup';

  @override
  String get e7SharedSessionTotals => 'Conversation totals';

  @override
  String get e7SharedUsageComesFromTheLatestCompletedAssistant =>
      'Usage comes from the latest completed assistant message. The makeup is an estimate from visible prompt, response, and tool text; Other includes system instructions, tool definitions, and provider overhead.';

  @override
  String get e7SharedModelUnavailable => 'Model unavailable';

  @override
  String get e7SharedContextLimitUnavailable => 'Context limit unavailable';

  @override
  String get e7SharedLatestAssistantRequestIncludingCacheActivity =>
      'Latest assistant request, including cache activity';

  @override
  String get e7SharedContextLimit => 'Context limit';

  @override
  String get e7SharedUnavailable => 'Unavailable';

  @override
  String get e7SharedMessages => 'Messages';

  @override
  String get e7SharedAccumulatedCostReportedByServer =>
      'Accumulated cost · reported by server';

  @override
  String get e7SharedAccumulatedCost => 'Accumulated cost';

  @override
  String get e7SharedSessionTokensReportedByServer =>
      'Conversation tokens · reported by server';

  @override
  String get e7SharedUserPrompts => 'User prompts';

  @override
  String get e7SharedAssistantText => 'Assistant text';

  @override
  String get e7SharedToolCallsAndResults => 'Tool calls and results';

  @override
  String get e7SharedOtherContext => 'Other context';

  @override
  String get e7SharedSessionLocationChangedCloseAndReopenThis =>
      'The conversation’s project changed. Close and reopen this sheet.';

  @override
  String get e7SharedOpenCodeIsReconnecting => 'OpenCode is reconnecting.';

  @override
  String get e7SharedTheSessionProjectIsNotAvailableOn =>
      'The conversation project is not available on this server.';

  @override
  String get e7SharedLocalProject => 'Local project';

  @override
  String get e7SharedTheAppCouldNotInspectWorkingChanges =>
      'The app could not inspect working changes. For safety, this continues without transferring changes.';

  @override
  String get e7SharedMoveSession => 'Move conversation';

  @override
  String get e7SharedChooseAnotherDirectoryInThisProject =>
      'Choose another directory in this project.';

  @override
  String get e7SharedChooseAConnectedWorkspaceOrReturnTo =>
      'Choose a connected cloud environment, or return to the local project.';

  @override
  String get e7SharedFilterDestinations => 'Filter destinations';

  @override
  String get e7SharedCurrent => 'Current';

  @override
  String get e7SharedSwitchOrganization => 'Switch organization?';

  @override
  String get e7SharedSwitchOrganization462 => 'Switch organization';

  @override
  String get e7SharedNoSwitchableOpenCodeConsoleOrganizationsWereReturned =>
      'No switchable OpenCode Console organizations were returned.';

  @override
  String get e7SharedSessionLocationChangedReturnAndReopenRelated =>
      'The conversation’s project changed. Return and reopen related conversations.';

  @override
  String get e7SharedSessionIsNoLongerRelatedToThis =>
      'That conversation is no longer related to this one.';

  @override
  String get e7SharedSessionLocationChangedReturnAndTryAgain =>
      'The conversation’s project changed. Return and try again.';

  @override
  String get e7SharedSessionUnavailableOrLocationChangedReturnOr =>
      'Conversation unavailable or its project changed. Return or refresh to try again.';

  @override
  String get e7SharedCouldNotUpdateThePinReturnAnd =>
      'Could not update the pin. Return and try again.';

  @override
  String get e7SharedRefreshSubagentSessions =>
      'Refresh subagent conversations';

  @override
  String get e7SharedParentSession => 'Parent conversation';

  @override
  String get e7SharedNoSubagentSessionsYet => 'No subagent conversations yet';

  @override
  String get e7SharedDelegatedWorkWillAppearHereWithoutMixing =>
      'Delegated work will appear here without mixing subagent conversations into your main list.';

  @override
  String get e7SharedOpenInsecureHTTPLink => '打开不安全的 HTTP 链接？';

  @override
  String get e7SharedOpenExternalLink => '打开外部链接？';

  @override
  String get e7SharedHTTPIsNotEncryptedOtherDevicesOn =>
      'HTTP 未加密。网络上的其他设备可能读取或修改你发送和接收的内容。';

  @override
  String get e7SharedOpenHTTPLink => '打开 HTTP 链接';

  @override
  String get e7SharedOpenLink => '打开链接';

  @override
  String get e7SharedNoAppCouldOpenThisLink => '没有应用可以打开此链接。';

  @override
  String get e7SharedRequired => 'Required';

  @override
  String get e7SharedDoesNotMatchTheExpectedFormat =>
      'Does not match the expected format';

  @override
  String get e7SharedEnterAWholeNumber => 'Enter a whole number';

  @override
  String get e7SharedEnterANumber => 'Enter a number';

  @override
  String get e7SharedDismissThisRequest => 'Decline this request?';

  @override
  String get e7SharedTheAgentContinuesWithoutYourAnswers =>
      'The agent continues without your answers.';

  @override
  String get e7SharedAskedByAnMCPServer => 'Asked by an MCP server';

  @override
  String get e7SharedAskedByTheAgentInThisSession =>
      'Asked by the agent in this conversation';

  @override
  String get e7SharedInputRequested => 'Input requested';

  @override
  String get e7SharedOther => 'Other…';

  @override
  String get e7SharedYourAnswer => 'Your answer';

  @override
  String get e7SharedAddYourOwn => 'Add your own';

  @override
  String get e7SharedAddAnswer => 'Add answer';

  @override
  String get e7SharedThisServerSentALinkThisApp =>
      'This server sent a link this app will not open.';

  @override
  String get e7SharedSendAnswers => 'Send answers';

  @override
  String e7SharedDetail307(int step) {
    return 'Step $step of 3';
  }

  @override
  String e7SharedDetail385(String count, String limit) {
    return '$count of $limit tokens';
  }

  @override
  String e7SharedDetail386(String count) {
    return '$count tokens · limit unavailable';
  }

  @override
  String e7SharedDetail429(String destination) {
    return 'Move conversation to $destination?';
  }

  @override
  String e7SharedDetail514(String error) {
    return 'Refresh failed: $error';
  }

  @override
  String e7SharedDetail714(int count) {
    return 'Must be at least $count characters';
  }

  @override
  String e7SharedDetail715(int count) {
    return 'Must be at most $count characters';
  }

  @override
  String e7SharedDetail721(String minimum, String maximum) {
    return 'Must be between $minimum and $maximum';
  }

  @override
  String e7SharedDetail722(String minimum) {
    return 'Must be at least $minimum';
  }

  @override
  String e7SharedDetail723(String maximum) {
    return 'Must be at most $maximum';
  }

  @override
  String e7SharedDetail726(int count) {
    return 'Pick at most $count';
  }

  @override
  String e7SharedDetail753(int minimum, int maximum) {
    return 'Pick $minimum–$maximum';
  }

  @override
  String e7SharedDetail754(int count) {
    return 'Pick at least $count';
  }

  @override
  String e7SharedDetail755(int count) {
    return 'Pick up to $count';
  }

  @override
  String e7SharedDetail756(String range, int count) {
    return '$range · $count selected';
  }

  @override
  String e7SharedDetail764(String host) {
    return 'Opens $host in your browser';
  }

  @override
  String e7SharedDetail765(String field) {
    return 'This server sent a field type this app does not understand (\"$field\").';
  }

  @override
  String get e7LocaleUiLanguage => '语言';

  @override
  String get e7LocaleUiEnglish => 'English';

  @override
  String get e7LocaleUiArabic => 'العربية';

  @override
  String get e7LocaleUiSystem => '使用系统语言';

  @override
  String get e7LocaleUiClose => '关闭';

  @override
  String get e7LocaleUiDescription => '选择整个应用使用的语言。服务器消息和你输入的文字将保持原样。';

  @override
  String get e7LocaleUiSaving => '正在保存语言…';

  @override
  String get e7LocaleUiSaveFailed => '无法保存语言设置。之前的选择仍然有效。请重新选择语言再试一次。';

  @override
  String get e7LocaleUiNewSession => 'New conversation';

  @override
  String get e7LocaleUiNewSessionHint =>
      'Start a conversation in the active project';

  @override
  String get e7LocaleUiWorkspaceHint => 'Every conversation, across projects';

  @override
  String get e7LocaleUiFiles => 'Files';

  @override
  String get e7LocaleUiFilesHint =>
      'Files, changes, terminal and other project tools';

  @override
  String get e7LocaleUiMoreHint => 'Models, providers, notifications, settings';

  @override
  String get e7LocaleUiSettings => 'Settings';

  @override
  String get e7LocaleUiKeyboardShortcuts => 'Keyboard shortcuts';

  @override
  String get e7LocaleUiRefreshSessions => 'Refresh conversations';

  @override
  String get e7LocaleUiDiagnostics => 'Diagnostics';

  @override
  String get e7LocaleUiDiagnosticsHint => 'Recent errors and connection detail';

  @override
  String get e7LocaleUiCommandLauncher => 'Command launcher';

  @override
  String get e7LocaleUiFindSurface => 'Find on this screen';

  @override
  String get e7LocaleUiDestinations => 'Switch tab';

  @override
  String get e7LocaleUiTerminal => 'Terminal';

  @override
  String get e7LocaleUiCloseScreen => 'Close this screen';

  @override
  String get e7LocaleUiSendPrompt => 'Send the prompt';

  @override
  String get e7LocaleUiCopyTranscript => 'Copy the selected transcript text';

  @override
  String get e7LocaleUiRecentModel =>
      'Next / previous recent model in this conversation';

  @override
  String get e7LocaleUiThisList => 'This list';

  @override
  String get e7LocaleUiCloseOverlay => 'Close a sheet, dialog, or menu';

  @override
  String get e7LocaleUiContextActions =>
      'Message, file, and conversation actions';

  @override
  String get e7LocaleUiContextKeys => 'Right click / Shift + F10 / Menu';

  @override
  String get e7LocaleUiConnectionChanged => '服务器已更改。';

  @override
  String get e7AppearanceFollowAndroid => '跟随 Android';

  @override
  String get e7AppearanceFollowSystem => '跟随系统';

  @override
  String get e7AppearanceLight => '浅色';

  @override
  String get e7AppearanceDark => '深色';

  @override
  String get e7AppearanceFollowPhoneDescription =>
      'Match this phone’s current light or dark setting';

  @override
  String get e7AppearanceFollowDeviceDescription =>
      'Match this device’s current light or dark setting';

  @override
  String get e7AppearanceLightDescription => 'Use the bright editorial theme';

  @override
  String get e7AppearanceDarkDescription => 'Use the focused low-light theme';

  @override
  String get e7AppearanceTitle => '外观';

  @override
  String get e7AppearancePreviewHint => '先预览。只有点击应用后，外观才会改变。';

  @override
  String get e7AppearanceDynamicUnavailable => '此设备不支持 Material You 配色。';

  @override
  String e7AppearanceUsesMode(String mode) {
    return '你的浅色或深色设置仍为$mode。';
  }

  @override
  String get e7AppearanceSaveFailed => '无法保存外观。之前的设置未改变。请重试。';

  @override
  String get e7AppearanceSaving => '正在保存…';

  @override
  String get e7AppearanceApply => '应用';

  @override
  String get e7AppearanceCurrent => 'Current appearance';

  @override
  String get e7AppearanceClose => 'Close';

  @override
  String get e7AppearancePreviewTitle => 'Text and controls';

  @override
  String get e7AppearancePreviewBody =>
      'See how reading, code and selected actions work together.';

  @override
  String get e7AppearanceSelection => 'Selected option';

  @override
  String get e7AppearanceTryControl => 'Try a control';

  @override
  String get e7AppearanceSampleHint =>
      'Sample controls only change this preview.';

  @override
  String get e7SettingsUi1 => 'Server';

  @override
  String get e7SettingsUi8 => '断开连接';

  @override
  String get e7SettingsUi9 => 'OpenCode server';

  @override
  String get e7SettingsUi11 => 'Checking server health…';

  @override
  String get e7SettingsUi12 => '已被 Android 停止';

  @override
  String get e7SettingsUi14 => '已开启 · 正在运行';

  @override
  String get e7SettingsUi15 => '已开启 · 正在启动';

  @override
  String get e7SettingsUi16 => '此服务器';

  @override
  String get e7SettingsUi17 => 'unknown';

  @override
  String get e7SettingsUi18 => 'OpenCode is reconnecting.';

  @override
  String get e7SettingsUi19 => 'OpenCode is reconnecting. Try again.';

  @override
  String get e7SettingsUi22 => 'Android 未启用后台模式。';

  @override
  String get e7SettingsUi23 => 'Android 已停止实时连接';

  @override
  String get e7SettingsUi24 =>
      '其每日后台数据同步额度已用完，因此实时模式已自动关闭。重新开启即可重新连接；额度将在 24 小时内重置。';

  @override
  String get e7SettingsUi25 => '在后台保持连接';

  @override
  String get e7SettingsUi26 => '应用关闭后仍保持运行状态更新，并在某次运行需要你时通知你。会增加耗电，并显示一条常驻通知。';

  @override
  String get e7SettingsUi27 => '已允许不受限制的电池使用';

  @override
  String get e7SettingsUi28 => '允许不受限制的电池使用';

  @override
  String get e7SettingsUi29 => 'Android 仍可能应用其前台服务时间限制。';

  @override
  String get e7SettingsUi30 =>
      '可选。有助于在 Doze 期间保持实时连接。Android 15+ 将后台数据同步任务限制为每 24 小时六小时。';

  @override
  String get e7SettingsUi31 => '已被 Android 停止，点按以重启';

  @override
  String get e7SettingsUi32 => '正在运行';

  @override
  String get e7SettingsUi34 => 'Android 在每天运行 6 小时后会将其停止。停止时应用会通知你。';

  @override
  String get e7SettingsUi35 => 'Default shell';

  @override
  String get e7SettingsUi36 =>
      'Used by new terminals and compatible shell commands on this OpenCode server.';

  @override
  String get e7SettingsUi37 =>
      'Terminal only; OpenCode uses a compatible fallback for shell tools.';

  @override
  String get e7SettingsUi39 => 'Automatic (server default)';

  @override
  String get e7SettingsUi41 => 'Loading shells from OpenCode…';

  @override
  String get e7SettingsUi46 => 'Restart OpenCode on its host';

  @override
  String get e7SettingsUi48 => 'Update remote OpenCode?';

  @override
  String get e7SettingsUi49 =>
      'The active server changed before the upgrade completed';

  @override
  String get e7SettingsUi50 => 'Update managed OpenCode';

  @override
  String get e7SettingsUi51 =>
      'Install the latest stable server, refresh models, restart safely, and reconnect.';

  @override
  String get e7SettingsUi52 => 'the previous version';

  @override
  String get e7SettingsUi53 => 'an unknown version';

  @override
  String get e7SettingsUi56 => 'Not connected';

  @override
  String get e7SettingsUi57 => 'Check server health';

  @override
  String get e7SettingsUi58 => 'Asking the server how it is doing';

  @override
  String get e7SettingsUi59 => 'Server healthy';

  @override
  String get e7SettingsUi60 => 'Health unavailable';

  @override
  String get e7SettingsUi62 => 'No server password saved';

  @override
  String get e7SettingsUi65 => 'Set up OpenCode 2';

  @override
  String get e7SettingsUi66 =>
      'Keep OpenCode running after you close the terminal.';

  @override
  String get e7SettingsUi67 => 'Server updates';

  @override
  String get e7SettingsUi68 => 'Upgrade from the machine running the server';

  @override
  String get e7SettingsUi69 => '浅色或深色';

  @override
  String get e7SettingsUi70 => '主题';

  @override
  String get e7SettingsUi74 => 'Always allowed actions';

  @override
  String get e7SettingsUi76 => '在此设备上';

  @override
  String get e7SettingsUi77 => '已用存储空间';

  @override
  String get e7SettingsUi78 => '清除排队的提示词';

  @override
  String get e7SettingsUi79 => '没有等待发送的内容';

  @override
  String get e7SettingsUi80 => '要删除排队的提示词吗？';

  @override
  String get e7SettingsUi81 => '已删除排队的提示词';

  @override
  String get e7SettingsUi82 => '无法删除排队的提示词。请检查设备存储空间后重试。';

  @override
  String get e7SettingsUi83 => '清除草稿';

  @override
  String get e7SettingsUi84 => '没有已保存的输入框文字';

  @override
  String get e7SettingsUi85 => '要删除草稿吗？';

  @override
  String get e7SettingsUi86 => '已删除草稿';

  @override
  String get e7SettingsUi87 => '无法删除草稿。请检查设备存储空间后重试。';

  @override
  String get e7SettingsUi88 => 'App diagnostics';

  @override
  String get e7SettingsUi92 => 'Privacy and data use';

  @override
  String get e7SettingsUi93 => '服务器、服务商、语音、文件、Termux 和更新';

  @override
  String get e7SettingsUi94 => 'Voice licenses and provenance';

  @override
  String get e7SettingsUi95 =>
      'Whisper models, sherpa-onnx, ONNX Runtime, and record';

  @override
  String get e7SettingsUi96 => 'About and open source notices';

  @override
  String e7SettingsDisconnectTitle(String server) {
    return '断开与 $server 的连接？';
  }

  @override
  String e7SettingsHealthError(String error) {
    return 'Health unavailable — $error';
  }

  @override
  String e7SettingsHealthVersion(String version) {
    return 'Server healthy · $version';
  }

  @override
  String e7SettingsVersion(String version) {
    return '版本 $version';
  }

  @override
  String get e7AppearancePackOpencode => 'Terminal green, the default';

  @override
  String get e7AppearancePackCatppuccin => 'Mocha and Latte, mauve-led';

  @override
  String get e7AppearancePackGruvbox => 'Warm retro, orange-led';

  @override
  String get e7AppearancePackSolarized => 'The classic dual palette, blue-led';

  @override
  String get e7AppearancePackDynamic => 'This phone’s Material You colors';

  @override
  String e7SettingsStorageSummary(
    String total,
    int queued,
    String queueBytes,
    int drafts,
    String draftBytes,
    int days,
  ) {
    String _temp0 = intl.Intl.pluralLogic(
      queued,
      locale: localeName,
      other: '$queued 条排队的提示词',
      one: '1 条排队的提示词',
    );
    String _temp1 = intl.Intl.pluralLogic(
      drafts,
      locale: localeName,
      other: '$drafts 份草稿',
      one: '1 份草稿',
    );
    return '未发送内容共 $total：$_temp0（$queueBytes）和 $_temp1（$draftBytes）。排队的提示词在 $days 天后会被丢弃。';
  }

  @override
  String e7SettingsQueueDeleteSummary(int count) {
    return '删除所有服务器上全部 $count 条未发送提示词及其附件';
  }

  @override
  String e7SettingsQueueDeleteBody(int count) {
    return '这将删除所有服务器上的 $count 条未发送提示词及其附件。它们将永远不会被发送。服务器上的内容不受影响。';
  }

  @override
  String e7SettingsDraftDeleteSummary(int count) {
    return '删除为 $count 个对话保存的输入框文字';
  }

  @override
  String e7SettingsDraftDeleteBody(int count) {
    return '这将删除为 $count 个对话保存的输入框文字。服务器上的内容不受影响。';
  }

  @override
  String e7SettingsRestartBody(String version, String current) {
    return 'OpenCode $version is installed, but the server is still running $current. Restart it on its computer the way you started it; the app then checks it again.';
  }

  @override
  String e7SettingsInstallVersion(String version) {
    return 'Install $version';
  }

  @override
  String e7SettingsInstalledVersion(String version) {
    return 'OpenCode $version installed. Restart its server process to use it.';
  }

  @override
  String e7SettingsRestartVersion(String version) {
    return 'Restart OpenCode to use $version';
  }

  @override
  String e7SettingsRetryError(String error) {
    return '$error Tap to retry.';
  }

  @override
  String e7SettingsUpdateVersion(String version) {
    return 'Update OpenCode to $version';
  }

  @override
  String get e7SettingsDetailUi17 => 'Privacy';

  @override
  String get e7SettingsDetailUi18 => 'Open source';

  @override
  String get e7SettingsDetailUi19 => 'About this build';

  @override
  String get e7SettingsDetailUi22 =>
      'A mobile client for an OpenCode server. Voice recognition runs locally after optional model downloads.';

  @override
  String get e7SettingsDetailUi23 => 'A desktop client for an OpenCode server.';

  @override
  String get e7SettingsDetailUi25 => 'Tools';

  @override
  String get e7SettingsDetailUi26 => 'Skills';

  @override
  String get e7SettingsDetailUi27 => 'References';

  @override
  String get e7SettingsAlphaBody =>
      'Android is the supported platform; desktop builds are experimental.';

  @override
  String get e7SettingsNonAffiliation =>
      'OpenCode Mobile is an independent community project. It is not built, maintained, endorsed by, or affiliated with the official OpenCode team.';

  @override
  String e7SettingsDiagnosticOccurrences(int count) {
    return '$count occurrences';
  }

  @override
  String get e7ProjectProjectsReconnect =>
      'OpenCode is reconnecting. Try again shortly.';

  @override
  String e7ProjectProjectRenameFailed(String error) {
    return 'Could not rename project: $error';
  }

  @override
  String get e7ProjectProjectDefaultDirectory =>
      'The server’s default directory';

  @override
  String get e7ProjectProjectSwitchUnavailableDetail =>
      'This server keeps the configured folder for conversations. Start a new conversation from Work to continue.';

  @override
  String get e7ProjectProjectsTitle => 'Projects';

  @override
  String get e7ProjectProjectsRefresh => 'Refresh projects';

  @override
  String get e7ProjectProjectsSearch => 'Search projects or paths';

  @override
  String get e7ProjectProjectsOpened => 'Open projects';

  @override
  String get e7ProjectProjectsEmpty => 'No projects opened';

  @override
  String get e7ProjectProjectsEmptyDetail =>
      'Projects you open or create appear here.';

  @override
  String get e7ProjectProjectsRefreshFailed => 'Project refresh failed';

  @override
  String e7ProjectProjectWorktrees(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count worktrees',
      one: '1 worktree',
    );
    return '$_temp0';
  }

  @override
  String e7ProjectProjectRenameAction(String name) {
    return 'Rename $name';
  }

  @override
  String get e7ProjectProjectRenameTitle => 'Rename project';

  @override
  String get e7ProjectProjectNameLabel => 'Project name';

  @override
  String get e7ProjectProjectNameHint =>
      'Clear the name to use the project folder name.';

  @override
  String get e7ProjectProjectSave => 'Save';

  @override
  String get e7ProjectMonitorUnsupported => '此服务器不支持后台关注。请打开对话查看当前请求。';

  @override
  String get readerUiDisconnected => '服务器未连接。';

  @override
  String get readerUiIndicatorsUnavailable => '此服务器不支持文件变更标记。';

  @override
  String get readerUiIndicatorsFailed => '无法刷新文件变更标记。';

  @override
  String get readerUiReconnecting => 'OpenCode 正在重新连接。';

  @override
  String get readerUiCommentAdded => '已添加审查评论。返回对话以继续。';

  @override
  String get readerUiCommentCopied => '已复制审查评论。请粘贴到对话中。';

  @override
  String get readerUiSearchSymbols => '搜索符号';

  @override
  String get readerUiSearchFiles => '搜索文件';

  @override
  String get readerUiSelectFile => '选择文件以预览';

  @override
  String get readerUiEmptyFolder => '文件夹为空';

  @override
  String get readerUiNoFiles => '未找到文件';

  @override
  String get readerUiPullRefresh => '下拉可刷新此文件夹。';

  @override
  String get readerUiTryFileName => '试试其他文件名。';

  @override
  String get readerUiAttachPrompt => '附加到提示词';

  @override
  String get readerUiAddReference => '添加为引用';

  @override
  String get readerUiOpenReview => '在审查中打开';

  @override
  String get readerUiCopyPath => '复制路径';

  @override
  String get readerUiWorkspaceSymbols => '搜索项目符号';

  @override
  String get readerUiSymbolsHint => '按名称查找类、函数、方法和变量。';

  @override
  String get readerUiNoSymbols => '未找到符号';

  @override
  String get readerUiSymbolsUnavailable => '试试其他名称。部分语言服务不支持项目范围的符号搜索。';

  @override
  String get readerUiFiles => '文件';

  @override
  String get readerUiSymbols => '符号';

  @override
  String get readerUiChanges => '更改';

  @override
  String get readerUiRefreshChanges => 'Refresh changes';

  @override
  String get readerUiEntireChange => 'Entire file change';

  @override
  String get readerUiWorkingTree => 'Uncommitted';

  @override
  String get readerUiSessionScopeHint => 'Files this conversation changed.';

  @override
  String get readerUiWorkingScopeHint =>
      'Everything not committed yet, whoever changed it.';

  @override
  String get readerUiBranchScopeHint =>
      'Everything on this branch, compared with the main branch.';

  @override
  String get readerUiSaveDevice => 'Save to device';

  @override
  String get readerUiPreviewUnavailable => 'Preview unavailable';

  @override
  String get readerUiRendered => 'Rendered';

  @override
  String get readerUiRaw => 'Raw';

  @override
  String get readerUiSaveFailed => '无法保存阅读器偏好设置。请重试。';

  @override
  String get readerUiSourceFirst => '源码优先';

  @override
  String get readerUiServerOrder => '默认顺序';

  @override
  String readerUiLine(int number) {
    return '第 $number 行';
  }

  @override
  String readerUiReferenceAdded(String label) {
    return '已将 $label 添加到提示词';
  }

  @override
  String readerUiReferenceDuplicate(String label) {
    return '$label 已在提示词中';
  }

  @override
  String readerUiReferenceFull(int count) {
    return '提示词已包含 $count 个引用';
  }

  @override
  String readerUiAttached(String name) {
    return '已附加 $name。';
  }

  @override
  String readerUiChangedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个已更改的文件',
      one: '$count 个已更改的文件',
    );
    return '$_temp0';
  }

  @override
  String readerUiAttachedReturn(String name) {
    return '已附加 $name。返回对话以添加你的评论。';
  }

  @override
  String readerUiSaveNamed(String name) {
    return '保存 $name';
  }

  @override
  String readerUiSavedDevice(String name) {
    return '$name 已保存到你的设备。';
  }

  @override
  String readerUiPathLine(String path, int line) {
    return '$path · 第 $line 行';
  }

  @override
  String readerUiOnPrompt(int count) {
    return '$count on prompt';
  }

  @override
  String readerUiNewLines(String label) {
    return 'new $label';
  }

  @override
  String readerUiOldLines(String label) {
    return 'old $label';
  }

  @override
  String readerUiLineRange(int first, int last) {
    return 'lines $first–$last';
  }

  @override
  String readerUiReviewPrompt(String path) {
    return 'Review `$path`';
  }

  @override
  String readerUiViewedCount(int viewed, int files) {
    return '$viewed of $files viewed';
  }

  @override
  String readerUiSaved(String name) {
    return '$name saved.';
  }

  @override
  String get readerUiSymbolFile => '文件';

  @override
  String get readerUiSymbolModule => '模块';

  @override
  String get readerUiSymbolNamespace => '命名空间';

  @override
  String get readerUiSymbolPackage => '包';

  @override
  String get readerUiSymbolClass => '类';

  @override
  String get readerUiSymbolMethod => '方法';

  @override
  String get readerUiSymbolProperty => '属性';

  @override
  String get readerUiSymbolField => '字段';

  @override
  String get readerUiSymbolConstructor => '构造函数';

  @override
  String get readerUiSymbolEnum => '枚举';

  @override
  String get readerUiSymbolInterface => '接口';

  @override
  String get readerUiSymbolFunction => '函数';

  @override
  String get readerUiSymbolVariable => '变量';

  @override
  String get readerUiSymbolConstant => '常量';

  @override
  String get readerUiSymbolEnummember => '枚举成员';

  @override
  String get readerUiSymbolStruct => '结构体';

  @override
  String get readerUiSymbolEvent => '事件';

  @override
  String get readerUiSymbolOperator => '运算符';

  @override
  String get readerUiSymbolTypeparameter => '类型参数';

  @override
  String get readerUiSymbolSymbol => '符号';

  @override
  String get readerUiAdded => '已添加';

  @override
  String get readerUiDeleted => '已删除';

  @override
  String get readerUiModified => '已修改';

  @override
  String get readerUiChanged => '已更改';

  @override
  String get readerUiSession => 'This conversation';

  @override
  String get readerUiBranch => 'Whole branch';

  @override
  String get readerUiAttachmentMissing =>
      'The attachment content is not included in this message.';

  @override
  String get readerUiRemoteAttachment =>
      'Remote attachment previews are not available.';

  @override
  String get readerUiAttachmentInvalid =>
      'The attachment data could not be decoded.';

  @override
  String get e7WorkspaceDisconnected => 'The server is not connected.';

  @override
  String get e7WorkspaceNoFolder => 'No project folder chosen';

  @override
  String get e7WorkspaceNoProjects => 'No projects opened';

  @override
  String get e7WorkspaceServerNoProjects => 'The server returned no projects.';

  @override
  String get e7WorkspaceChooseProject => 'Choose a project';

  @override
  String get e7WorkspaceNeedsYou => 'Needs you';

  @override
  String get e7WorkspaceNoRecent => 'No recent conversations';

  @override
  String get e7WorkspaceChooseFolderToStart =>
      'Choose a project folder to start a conversation.';

  @override
  String get e7WorkspaceStartInWorkspace =>
      'Start a conversation in the selected project.';

  @override
  String get e7WorkspaceNoProjectSelected => 'No project selected';

  @override
  String get e7WorkspaceSwitchProject => 'Switch project';

  @override
  String get e7WorkspaceThisComputer => 'This computer';

  @override
  String get e7WorkspaceNoShareLink => 'No share link was returned.';

  @override
  String get e7WorkspaceShareCopied => 'Share link copied';

  @override
  String get e7WorkspaceReconnectingShortly =>
      'OpenCode is reconnecting. Try again shortly.';

  @override
  String get e7WorkspaceRenameSession => 'Rename conversation';

  @override
  String get e7WorkspaceTitle => 'Title';

  @override
  String get e7WorkspaceShareConfirm => 'Share this conversation?';

  @override
  String get e7WorkspaceDeleteConfirm => 'Delete conversation?';

  @override
  String get e7WorkspaceArchive => 'Archive';

  @override
  String get e7WorkspaceShareSession => 'Share conversation';

  @override
  String get e7WorkspaceCompacting => 'Compacting…';

  @override
  String get e7WorkspaceStopSharing => '停止分享';

  @override
  String get e7WorkspaceDisconnect => '断开连接';

  @override
  String get e7WorkspaceBackExit => '再按一次返回即可退出';

  @override
  String get e7WorkspaceConnected => '已连接';

  @override
  String get e7WorkspaceConnecting => '正在连接';

  @override
  String get e7WorkspaceOffline => '离线';

  @override
  String get e7WorkspaceReconnectingAgain =>
      'OpenCode is reconnecting. Try again.';

  @override
  String get e7WorkspaceRefreshFailed => 'Could not refresh';

  @override
  String get e7WorkspacePermissionRequired => 'Permission required';

  @override
  String get e7WorkspaceAssistantQuestion => 'Assistant question';

  @override
  String get e7WorkspaceInputRequested => 'Input requested';

  @override
  String get e7WorkspaceMcpAsked => 'Asked by an MCP server';

  @override
  String get e7WorkspaceDismissRequest => '要关闭这个请求吗？';

  @override
  String get e7WorkspaceDismissDetail => 'OpenCode 将在没有这些问题答案的情况下继续。';

  @override
  String get e7WorkspaceNeedsInput => 'OpenCode 需要你的输入';

  @override
  String activityAgentNeedsInput(String agent) {
    return '$agent 需要你的输入';
  }

  @override
  String get e7WorkspaceSendAnswers => '发送回答';

  @override
  String get e7WorkspaceReferenceRetry =>
      'Conversation reference unavailable. Refresh and try again.';

  @override
  String get e7WorkspaceLocationRetry =>
      'The conversation’s project is unavailable. Refresh and try again.';

  @override
  String get e7WorkspaceLocationChangedReturn =>
      'The conversation’s project changed. Return and try again.';

  @override
  String get e7WorkspaceLocationChangedRetry =>
      'The conversation’s project changed. Refresh and try again.';

  @override
  String get e7WorkspaceReferenceUnavailable =>
      'Conversation reference unavailable.';

  @override
  String get e7WorkspacePaginationStuck =>
      'Conversation pagination could not advance. Refresh the list to continue.';

  @override
  String e7WorkspaceCreateFailed(String error) {
    return 'Could not create a conversation: $error';
  }

  @override
  String get e7WorkspaceNoProjectsSearch =>
      'The server returned no projects. Search all conversations to find previous work.';

  @override
  String e7WorkspaceActiveDirectory(String directory) {
    return 'A conversation is running in this folder · $directory';
  }

  @override
  String e7WorkspaceOpenProjectCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count open on this server',
      one: '1 open on this server',
    );
    return '$_temp0';
  }

  @override
  String e7WorkspaceArchivedToast(String title) {
    return 'Archived “$title”';
  }

  @override
  String e7WorkspaceDeleteDetail(String title) {
    return '“$title” and its history will be permanently removed.';
  }

  @override
  String e7WorkspaceShareDetail(String title) {
    return 'Anyone with the link can view “$title”, including its conversation and shared context. Do not share secrets, credentials, or private files.';
  }

  @override
  String e7WorkspaceRequestFor(String title) {
    return 'for $title';
  }

  @override
  String e7WorkspaceQuestionCount(int count, String title) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count questions · $title',
      one: '1 question · $title',
    );
    return '$_temp0';
  }

  @override
  String e7WorkspaceSubagentCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count subagents',
      one: '1 subagent',
    );
    return '$_temp0';
  }

  @override
  String e7WorkspaceSessionId(String id) {
    return '对话 $id';
  }

  @override
  String get e7WorkspaceUnknownProject => 'Unknown project';

  @override
  String get e7WorkspaceJustNow => '刚刚';

  @override
  String e7WorkspaceMinutesAgo(int count) {
    return '$count 分钟前';
  }

  @override
  String e7WorkspaceHoursAgo(int count) {
    return '$count 小时前';
  }

  @override
  String e7WorkspaceDaysAgo(int count) {
    return '$count 天前';
  }

  @override
  String e7WorkspaceFileCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String get chatUiAllMatchingRequests => '（所有匹配的请求）';

  @override
  String get chatUiNoOutput => '(no output)';

  @override
  String get chatUiNoResult => '(no result)';

  @override
  String get chatUi1ReferenceIsAddedAsTextWhen => '发送时会将 1 条引用作为文字添加。不会随草稿保存。';

  @override
  String get chatUiAddAnOpenCodeProjectReferenceToThis =>
      'Add an OpenCode project reference to this prompt';

  @override
  String get chatUiAddAnImageOrFileToThe => '向提示词添加图片或文件';

  @override
  String get chatUiAgent => '智能体';

  @override
  String get chatUiAllowOnce => 'Allow once';

  @override
  String get chatUiAlreadyAnsweredElsewhere => 'Already answered elsewhere';

  @override
  String get chatUiAlreadyDelivered => '已送达';

  @override
  String get chatUiAlwaysAllow => '始终允许';

  @override
  String get chatUiAlwaysAllowWouldAlsoCover => '“始终允许”还将涵盖';

  @override
  String get chatUiAnswerWasCutOffByTheLength =>
      'Answer was cut off by the length limit';

  @override
  String get chatUiAnyoneWithTheLinkCanViewThis =>
      '任何拥有链接的人都可以查看此对话及其共享的上下文。请勿分享包含机密、凭据或私有文件的对话。';

  @override
  String get chatUiAppDiagnostics => 'App diagnostics';

  @override
  String get chatUiAppearance => 'Appearance';

  @override
  String get chatUiApplyPatch => 'Apply patch';

  @override
  String get chatUiAskOpenCode => '向 OpenCode 提问…';

  @override
  String get chatUiAttachFile => '添加文件';

  @override
  String get chatUiAttachToPrompt => '附加到提示词';

  @override
  String get chatUiAttachment => '附件';

  @override
  String get chatUiAttachmentLimitReached => 'Attachment limit reached';

  @override
  String get chatUiAttachmentsMustTotalNoMoreThan20 => '附件总大小不能超过 20 MB。';

  @override
  String get chatUiAvailableWhenTheCurrentRunFinishes => '当前运行结束后可用';

  @override
  String get chatUiBrowseProjectAndGlobalSkills =>
      'Browse project and global skills';

  @override
  String get chatUiBrowsePreviewDownloadAndAttachProjectFiles =>
      'Browse, preview, download, and attach project files';

  @override
  String get chatUiCancelAndReturnToTheComposer => '取消并返回输入框';

  @override
  String get chatUiCancelMessage => '取消消息';

  @override
  String get chatUiCancelThisPendingMessage => '要取消这条待发送的消息吗？';

  @override
  String get chatUiChangeTheActiveOpenCodeConsoleOrganization =>
      'Change the active OpenCode Console organization';

  @override
  String get chatUiChangeTheTitleShownInTheSession =>
      'Change the title shown in the conversation list';

  @override
  String get chatUiChangeThisSessionSExperimentalWorkspace =>
      'Change this conversation’s experimental cloud environment';

  @override
  String get chatUiChangedFile => 'Changed file';

  @override
  String get chatUiChanges => 'Changes';

  @override
  String get chatUiChooseAServerModelByProviderAnd =>
      'Choose a server model by provider and capability';

  @override
  String get chatUiChooseAnotherModelInThePickerTo => '在选择器中选择其他模型，即可建立最近使用列表。';

  @override
  String get chatUiChooseModel => '选择模型';

  @override
  String get chatUiChooseTheActiveOpenCodeAgent =>
      'Choose the active OpenCode agent';

  @override
  String chatUiChooseAgentMode(String agent) {
    return 'Choose how $agent works: its modes';
  }

  @override
  String get chatUiChooseTheCurrentModelVariantOrReasoning =>
      'Choose the current model variant or reasoning effort';

  @override
  String get chatUiCollapseReasoning => 'Collapse reasoning';

  @override
  String get chatUiCommandMap => 'Command map';

  @override
  String get chatUiCompactContext => 'Compact context';

  @override
  String get chatUiCompactSession => '压缩对话';

  @override
  String get chatUiCompactingConversation => '正在压缩对话…';

  @override
  String get chatUiCompactionFailed => '压缩失败';

  @override
  String get chatUiCompactionStarted => '已开始压缩';

  @override
  String get chatUiCompose => 'Compose';

  @override
  String get chatUiConnectProvider => 'Connect provider';

  @override
  String get chatUiConnectionHealthServerVersionAndLiveMode =>
      'Connection health, server version, and live mode';

  @override
  String get chatUiContextAdded => '已添加上下文';

  @override
  String get chatUiContextCompacted => '为节省空间，较早的消息已被概括';

  @override
  String get chatUiCopiedPasteItIntoTheComposer =>
      'Copied. Paste it into the composer';

  @override
  String get chatUiCopyMessageText => '复制消息文字';

  @override
  String get chatUiCopyShareLink => '复制分享链接';

  @override
  String get chatUiCopyTheRenderedConversationAsMarkdown =>
      'Copy the rendered conversation as Markdown';

  @override
  String get chatUiCopyTranscript => 'Copy transcript';

  @override
  String get chatUiCreateOrCopyAPublicSessionLink =>
      'Create or copy a public conversation link';

  @override
  String get chatUiCurrentSession => 'Current conversation';

  @override
  String get chatUiDelegate => 'Delegate';

  @override
  String get chatUiDelegateThisPrompt => '委派这条提示词';

  @override
  String get chatUiDelegateThisPromptToAServerSubagent =>
      'Delegate this prompt to a server subagent';

  @override
  String get chatUiDelegatedSession => '已委派的对话';

  @override
  String get chatUiDeleteMessage => '删除消息';

  @override
  String get chatUiDeleteThisMessage => '删除此消息？';

  @override
  String get chatUiDetails => '详情';

  @override
  String get chatUiDirectory => 'Directory';

  @override
  String get chatUiDisableTheCurrentPublicSessionLink =>
      'Disable the current public conversation link';

  @override
  String get chatUiDiscardDraft => '丢弃草稿';

  @override
  String get chatUiDiscardPromptChanges => 'Discard prompt changes?';

  @override
  String get chatUiDiscardQueuedDraft => '要丢弃排队中的草稿吗？';

  @override
  String get chatUiDismissPromptError => '关闭提示词错误';

  @override
  String get chatUiEachAttachmentMustBe10MBOr => '每个附件不能超过 10 MB。';

  @override
  String get chatUiEdit => 'Edit';

  @override
  String get chatUiEditDraft => '编辑草稿';

  @override
  String get chatUiEditTheCurrentPromptInAFocused =>
      'Edit the current prompt in a focused full-screen view';

  @override
  String get chatUiErrorDetails => '错误详情';

  @override
  String get chatUiExpandReasoning => 'Expand reasoning';

  @override
  String get chatUiExportSessionTranscript => '导出对话记录';

  @override
  String get chatUiExportTranscript => 'Export transcript';

  @override
  String get chatUiFetchPage => 'Fetch page';

  @override
  String get chatUiFiles => 'Files';

  @override
  String get chatUiFilesAreUnavailableInThisPreview =>
      'Files are unavailable in this preview.';

  @override
  String get chatUiFindACommandOrAction => 'Find a command or action';

  @override
  String get chatUiFindAMessageJumpToItOr =>
      'Find a message, jump to it, or fork from a prompt';

  @override
  String get chatUiFindASubagent => 'Find a subagent';

  @override
  String get chatUiFindFiles => 'Find files';

  @override
  String get chatUiFindSessionsAcrossEveryOpenCodeProject =>
      'Find conversations across every OpenCode project';

  @override
  String get chatUiFollowAndroidOrChooseTheNativeLight =>
      'Follow Android or choose the native light or dark theme';

  @override
  String get chatUiForkFromThisPrompt => '从此提示词分叉';

  @override
  String get chatUiForkSession => 'Fork conversation';

  @override
  String get chatUiGeneratedFile => '生成的文件';

  @override
  String get chatUiHideTimestamps => 'Hide timestamps';

  @override
  String get chatUiImageDataIsUnavailable => '图片数据不可用。';

  @override
  String get chatUiInputRequested => 'Input requested';

  @override
  String get chatUiInspectGitLanguageServicesAndFormattersFor =>
      'Inspect Git, language services, and formatters for this project';

  @override
  String get chatUiInspectMCPStatusAuthenticationAndResources =>
      'Inspect MCP status, authentication, and resources';

  @override
  String get chatUiInspectCurrentTokensCacheCostAndContext =>
      'Inspect current tokens, cache, cost, and context usage';

  @override
  String get chatUiInspectToolsCallableByTheActiveProvider =>
      'Inspect tools callable by the active provider and model';

  @override
  String get chatUiItsTextReturnsToTheComposerAs => '其文字会作为草稿回到输入框。';

  @override
  String get chatUiJumpAnywhereForkRestoresAPromptFor =>
      'Jump anywhere. Fork restores a prompt for editing.';

  @override
  String get chatUiKeepItPending => '保持待发送';

  @override
  String get chatUiKeepItQueued => '保持排队';

  @override
  String get chatUiLanguageServer => 'Language server';

  @override
  String get chatUiList => 'List';

  @override
  String get chatUiLoadingSubagents => 'Loading subagents…';

  @override
  String get chatUiLongReasoningCollapsedInTheTranscript => '长推理在记录中已折叠';

  @override
  String get chatUiMCPServers => 'MCP servers';

  @override
  String get chatUiManageProviderAndIntegrationAuthentication =>
      'Manage provider and integration authentication';

  @override
  String get chatUiMessage => 'Message';

  @override
  String get chatUiMessageTimeline => 'Message timeline';

  @override
  String get chatUiMessageTimestampsHidden => '消息时间戳已隐藏';

  @override
  String get chatUiMessageTimestampsShown => '消息时间戳已显示';

  @override
  String get chatUiModel => '模型';

  @override
  String get chatUiModelAndAgent => 'Model and agent';

  @override
  String get chatUiMoveSession => 'Move conversation';

  @override
  String get chatUiMoveThisSessionToAnotherProjectDirectory =>
      'Move this conversation to another project';

  @override
  String get chatUiMoved => '已移动';

  @override
  String get chatUiNavigate => 'Navigate';

  @override
  String get chatUiNoAnswer => '无回答';

  @override
  String get chatUiNoMatchingMessages => 'No matching messages';

  @override
  String get chatUiNoShareLinkWasReturned => '未返回分享链接';

  @override
  String get chatUiNoSubagentsAvailableFromThisServer =>
      'No subagents available from this server';

  @override
  String get chatUiNotConnectedToTheServerRightNow =>
      'Not connected to the server right now.';

  @override
  String get chatUiOpenParentSession => '打开上级对话';

  @override
  String get chatUiOpenPersistentWorkspaceTerminals =>
      'Open persistent project terminals';

  @override
  String get chatUiOpenProviders => '打开服务商';

  @override
  String get chatUiOpenSubagentSession => '打开子智能体对话';

  @override
  String get chatUiOpenCodeCommandsAreUnavailableOffline =>
      'OpenCode commands are unavailable offline.';

  @override
  String get chatUiOpenCodeCouldNotCompleteThisPrompt => 'OpenCode 无法完成此提示词。';

  @override
  String get chatUiOpenCodeIsReconnecting => 'OpenCode is reconnecting.';

  @override
  String chatUiAgentIsReconnecting(String agent) {
    return '$agent is reconnecting.';
  }

  @override
  String chatUiAgentIsReconnectingTryAgainShortly(String agent) {
    return '$agent is reconnecting. Try again shortly.';
  }

  @override
  String get chatUiOpenCodeIsReconnectingTryAgainShortly =>
      'OpenCode is reconnecting. Try again shortly.';

  @override
  String get chatUiOpenCodeIsReconnectingTryAgainWhenThe =>
      'OpenCode 正在重新连接。服务器在线后请重试。';

  @override
  String get chatUiOpenCodeIsReconnectingTryAgain => 'OpenCode 正在重新连接。请重试。';

  @override
  String get chatUiOpenCodeNeedsInput => 'OpenCode 需要你的输入';

  @override
  String get chatUiOpenCodeServerCommand => 'OpenCode server command';

  @override
  String get chatUiOutputPruned => 'Output pruned';

  @override
  String get chatUiPendingChange => '待处理的更改';

  @override
  String get chatUiProjectFiles => '项目文件';

  @override
  String get chatUiProjectHealth => 'Project health';

  @override
  String get chatUiProjectReference => 'Project reference';

  @override
  String get chatUiProjectReferences => 'Project references';

  @override
  String get chatUiProjectsAndWorkspaces => 'Projects and worktrees';

  @override
  String get chatUiPromptEditor => 'Prompt editor';

  @override
  String get chatUiPromptFromParentAgent => 'Prompt from parent agent';

  @override
  String get chatUiPromptTools => '提示词工具';

  @override
  String get chatUiQuestion => 'Question';

  @override
  String get chatUiQuestions => 'Questions';

  @override
  String get chatUiQueuedRunsAfterThisTurn => 'Queued · runs after this turn';

  @override
  String get chatUiQueuedWillSendWhenReconnected => '已排队 — 重新连接后发送';

  @override
  String get chatUiRead => 'Read';

  @override
  String get chatUiReasoningExpandedInTheTranscript => '推理在记录中已展开';

  @override
  String get chatUiRecordsAndTranscribesOnThisDevice => '在本设备上录音并转写';

  @override
  String get chatUiReferenceKeptForYourNextPromptCommands =>
      '引用已保留给你的下一条提示词：命令不会携带它。';

  @override
  String get chatUiReferencesKeptForYourNextPromptCommands =>
      '引用已保留给你的下一条提示词：命令不会携带它们。';

  @override
  String get chatUiReject => 'Reject';

  @override
  String get chatUiReloadMessages => 'Refresh messages';

  @override
  String get chatUiRename => '重命名';

  @override
  String get chatUiRenameSession => '重命名对话';

  @override
  String get chatUiRestoreRevertedPrompt => 'Restore reverted prompt';

  @override
  String get chatUiRestoreTheCurrentlyRevertedSessionState =>
      'Restore the currently reverted conversation state';

  @override
  String get chatUiRetryLastPrompt => 'Retry last prompt';

  @override
  String get chatUiRevertLastPrompt => 'Undo last prompt';

  @override
  String get chatUiReviewCommentAddedToThePrompt => '审查评论已添加到提示词';

  @override
  String get chatUiReviewHandledAppErrorsAndSendA =>
      'Review handled app errors and send a redacted report';

  @override
  String get chatUiReviewTheActualDiffForThisSession =>
      'Review the actual diff for this conversation';

  @override
  String get chatUiRunOnYourComputer => 'Run on your computer';

  @override
  String get chatUiRunShellCommand => 'Run shell command';

  @override
  String get chatRunShellLabel => 'Command';

  @override
  String get chatRunShellHint => 'npm test';

  @override
  String get chatRunShellHelper =>
      'The agent runs it in this project, and its output joins the conversation.';

  @override
  String get chatRunShellEmpty => 'Type a command to run.';

  @override
  String get chatRenameEmpty => '请输入标题。';

  @override
  String get chatUiSaveTheConversationAsAMarkdownFile =>
      'Save the conversation as a Markdown file';

  @override
  String get chatUiScope => 'Scope';

  @override
  String get chatUiSearchMessages => 'Search messages';

  @override
  String get chatUiSearchMobileActionsAndServerProvidedCommands =>
      'Search mobile actions and server-provided commands';

  @override
  String get chatUiSearchText => 'Search text';

  @override
  String get chatUiSelectAModelBeforeCompactingThisSession => '压缩此对话前请先选择模型。';

  @override
  String get chatUiServerCommands => 'Server commands';

  @override
  String get chatUiServerMessage => '服务器消息';

  @override
  String get chatUiServerStatus => 'Server status';

  @override
  String get chatUiSessionChanges => 'Conversation changes';

  @override
  String get chatUiSessionContext => 'Conversation context';

  @override
  String get chatUiSessionSharedCopyTheVisibleLinkManually =>
      '对话已分享。请手动复制可见的链接。';

  @override
  String get chatUiShareLinkCopied => '分享链接已复制';

  @override
  String get chatUiShareSession => '分享对话';

  @override
  String get chatUiShareThisSession => '分享此对话？';

  @override
  String get chatUiSharedAnyoneWithTheLinkCanView => '已分享：任何拥有链接的人都可以查看';

  @override
  String get chatUiShowAllSubagentSessions => '显示所有子智能体对话';

  @override
  String get chatUiShowTimestamps => 'Show timestamps';

  @override
  String get chatUiSkill => '技能 ·';

  @override
  String get chatUiSkills => 'Skills';

  @override
  String get chatUiSlashCommandsAndAgents => '斜杠命令和智能体';

  @override
  String get chatUiStartACleanSessionInThisWorkspace =>
      'Start a clean conversation in this project';

  @override
  String get chatUiStopSharing => '停止分享';

  @override
  String get chatUiSubagent => 'Subagent';

  @override
  String get chatUiSubagentFailed => 'Subagent failed.';

  @override
  String get chatUiSubagentWorking => 'Subagent working…';

  @override
  String get chatUiSubagentsCouldNotBeLoaded => 'Subagents could not be loaded';

  @override
  String get chatUiSummarizeTheSessionUsingTheSelectedModel =>
      'Summarize the conversation using the selected model';

  @override
  String get chatUiSwitchOrganization => 'Switch organization';

  @override
  String get chatUiSwitchProjectDirectoryOrWorktree =>
      'Switch project, directory, or worktree';

  @override
  String get chatUiSystemUpdate => '系统更新';

  @override
  String get chatUiTellTheAgentWhyOrWhatTo => '告诉智能体原因，或让它改做什么（可选）';

  @override
  String get chatUiThatMessageIsNoLongerInThis =>
      'That message is no longer in this conversation.';

  @override
  String get chatUiTheFileHasNoContentToAttach => '该文件没有可附加的内容。';

  @override
  String get chatUiTheFileHasNoContentToSave => '该文件没有可保存的内容。';

  @override
  String get chatUiTheFormOrProjectChangedReopenThe =>
      'The form or project changed. Reopen the current request.';

  @override
  String get chatUiTheGeneratedFileIsNotAvailableFrom => '此服务器上没有该生成的文件。';

  @override
  String get chatUiTheMessageAndAllOfItsParts =>
      '该消息及其所有部分将从对话中永久移除，之后的回复将不再看到它们。它所做的文件更改不会被撤销。';

  @override
  String get chatUiTheServerReturnedEmptyImageData =>
      'The server returned empty image data.';

  @override
  String get chatUiThisDraftHasNotBeenSentTo => '这份草稿还没有发送给 OpenCode。';

  @override
  String get chatUiThisDraftIsTooLargeToQueue =>
      '这份草稿太大，无法排队，或者队列已被更新的草稿占满。请移除一个附件，或在设置中清除排队的提示词。';

  @override
  String get chatUiThisPromptCannotBeRestoredBecauseAn => '无法恢复此提示词，因为有附件不可用。';

  @override
  String get chatUiThisPromptCannotBeRetriedBecauseAn => '无法重试此提示词，因为有附件不可用。';

  @override
  String get chatUiTimeline => 'Timeline';

  @override
  String get chatUiTimestampsUsage => 'Timestamps & usage';

  @override
  String get chatUiTitle => '标题';

  @override
  String get chatUiTodos => 'Tasks';

  @override
  String get chatUiToggleCreationTimesBesideTranscriptEntries =>
      'Toggle creation times beside transcript entries';

  @override
  String get chatUiToggleLongReasoningDetailsAcrossTheTranscript =>
      'Toggle long reasoning details across the transcript';

  @override
  String get chatUiToolFailed => 'Tool failed.';

  @override
  String get chatUiToolsAndCapabilities => 'Tools and capabilities';

  @override
  String get chatUiTranscriptCopiedAsMarkdown => '记录已复制为 Markdown';

  @override
  String get chatUiTranscriptDisplay => 'Transcript display';

  @override
  String get chatUiTranscriptSaved => '记录已保存';

  @override
  String get chatUiVoiceConversationWasInterrupted => '语音对话已中断。';

  @override
  String get chatUiVoiceInput => '语音输入';

  @override
  String get chatUiVoiceInputIsUnavailable => '语音输入不可用。';

  @override
  String get chatUiLoadTools => 'Load tools';

  @override
  String chatUiToolFrom(String tool, String server) {
    return '$tool · $server';
  }

  @override
  String get chatUiWebSearch => 'Web search';

  @override
  String get chatUiWrite => 'Write';

  @override
  String get chatUiWriteYourOpenCodePrompt => 'Write your OpenCode prompt…';

  @override
  String get chatUiYou => 'You';

  @override
  String get chatUiYourOriginalComposerDraftAndAttachmentsWill =>
      'Your original composer draft and attachments will stay unchanged.';

  @override
  String get chatUiInThisChat => '在此对话中';

  @override
  String get chatUiNewFile => 'new file';

  @override
  String chatUiQueuedWithEviction(Object detail) {
    return '已排队 — 重新连接后发送。$detail';
  }

  @override
  String chatUiCommandUnavailable(Object command) {
    return '现在无法使用 /$command。';
  }

  @override
  String chatUiAttachmentCountLimit(Object count) {
    return '最多可附加 $count 个文件。';
  }

  @override
  String chatUiQueuedSent(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已发送 $count 条排队的提示词',
      one: '已发送 1 条排队的提示词',
    );
    return '$_temp0';
  }

  @override
  String chatUiOtherDraftsWaitingSuffix(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 份草稿正在等待其他服务器',
      one: '1 份草稿正在等待其他服务器',
    );
    return ' · $_temp0';
  }

  @override
  String chatUiNextTurnsModel(Object model) {
    return '此对话接下来的回复将使用 $model。';
  }

  @override
  String chatUiReferenceAlreadyAdded(Object name) {
    return '@$name 已在提示词中';
  }

  @override
  String chatUiFileAttached(Object filename) {
    return '已附加 $filename。请添加你的评论。';
  }

  @override
  String chatUiSaveFile(Object filename) {
    return '保存 $filename';
  }

  @override
  String chatUiFileSaved(Object filename) {
    return '$filename 已保存到你的设备。';
  }

  @override
  String chatUiDraftsQueued(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '有 $count 份草稿在排队，重新连接后发送。',
    );
    return '$_temp0';
  }

  @override
  String chatUiOtherDraftsWaiting(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 份草稿正在等待其他服务器。',
      one: '1 份草稿正在等待其他服务器。',
    );
    return '$_temp0';
  }

  @override
  String chatUiQuestionCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count questions',
      one: '1 question',
    );
    return '$_temp0';
  }

  @override
  String chatUiPermissionNeeded(Object title) {
    return '需要权限：$title';
  }

  @override
  String chatUiQuestionLabel(Object title) {
    return '问题：$title';
  }

  @override
  String chatUiQuestionsSummary(Object question, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个问题',
    );
    return '$question · $_temp0';
  }

  @override
  String chatUiRateLimitRetry(Object attempt) {
    return '已触发速率限制。正在重试$attempt…';
  }

  @override
  String chatUiRateLimitCountdown(Object attempt, Object time) {
    return '已触发速率限制。$time 后重试$attempt';
  }

  @override
  String chatUiReferencesAttachedNotice(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '发送时会将 $count 条引用作为文字添加。不会随草稿保存。',
    );
    return '$_temp0';
  }

  @override
  String chatUiAttachedCount(Object count) {
    return '已添加 $count 个附件';
  }

  @override
  String chatUiEarlierMessageCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条更早的消息',
      one: '1 条更早的消息',
    );
    return '$_temp0';
  }

  @override
  String chatUiTokenCount(Object count) {
    return '$count tok';
  }

  @override
  String chatUiPositionOfTotal(Object position, Object total) {
    return '第 $position / 共 $total';
  }

  @override
  String chatUiSubagentCount(Object count) {
    return '已委派的对话 · $count';
  }

  @override
  String chatUiToolsSummary(Object tools) {
    return 'Tools: $tools';
  }

  @override
  String chatUiFromLine(Object line) {
    return 'from $line';
  }

  @override
  String chatUiLineCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines',
      one: '1 line',
    );
    return '$_temp0';
  }

  @override
  String chatUiLineRange(Object start, Object end) {
    return 'L$start–$end';
  }

  @override
  String chatUiEntryCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entries',
      one: '1 entry',
    );
    return '$_temp0';
  }

  @override
  String chatUiFoundCount(Object count) {
    return '$count found';
  }

  @override
  String chatUiMatchCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matches',
      one: '1 match',
    );
    return '$_temp0';
  }

  @override
  String chatUiFileCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个文件',
      one: '1 个文件',
    );
    return '$_temp0';
  }

  @override
  String chatUiProviderSearch(Object provider) {
    return '$provider search';
  }

  @override
  String chatUiResultCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count results',
      one: '1 result',
    );
    return '$_temp0';
  }

  @override
  String chatUiCompletedCount(Object done, Object total) {
    return '$done/$total completed';
  }

  @override
  String chatUiAnsweredCount(Object count) {
    return '$count answered';
  }

  @override
  String chatUiAskedCount(Object count) {
    return '$count asked';
  }

  @override
  String chatUiDurationMinutesSeconds(Object minutes, Object seconds) {
    return '${minutes}m ${seconds}s';
  }

  @override
  String chatUiDurationSeconds(Object seconds) {
    return '${seconds}s';
  }

  @override
  String chatUiFileLoadFailed(Object error) {
    return '无法从 OpenCode 服务器加载此文件：$error';
  }

  @override
  String chatUiMoreEntries(Object total) {
    return '$total total · more available';
  }

  @override
  String chatUiEntryTotal(Object total) {
    return '$total entries';
  }

  @override
  String chatUiAnsweredDetail(Object answer) {
    return '已回答：$answer';
  }

  @override
  String chatUiLoadingFile(Object filename) {
    return '正在加载 $filename';
  }

  @override
  String chatUiPreviewGeneratedImage(Object filename) {
    return '预览生成的图片 $filename';
  }

  @override
  String chatUiParentSession(Object title) {
    return 'Parent · $title';
  }

  @override
  String chatUiChooseOption(Object option) {
    return 'Choose: $option';
  }

  @override
  String get chatUiMainSession => 'Main conversation';

  @override
  String get chatUiTodo => 'To do';

  @override
  String get chatUiBackgroundResult => '后台结果';

  @override
  String get chatUiBackgroundComplete => '已完成';

  @override
  String get chatUiBackgroundError => '失败';

  @override
  String get chatUiBackgroundCancelled => '已取消';

  @override
  String get chatUiResultSourceDetails => '服务器消息详情';

  @override
  String get chatUiResultOpenChild => '打开子智能体的对话';

  @override
  String get chatUiNoResultText => '服务器未返回结果文本。';

  @override
  String get chatUiTimedOut => 'Timed out';

  @override
  String get chatUiKilled => 'Stopped';

  @override
  String get chatUiTruncated => 'Truncated';

  @override
  String get chatUiUpdated => 'Updated';

  @override
  String get chatUiError => '错误';

  @override
  String get chatUiAssistant => '助手';

  @override
  String get chatUiUser => '用户';

  @override
  String get chatUiOpenCodeSession => 'OpenCode 对话';

  @override
  String get chatUiTool => '工具';

  @override
  String get chatUiFile => '文件';

  @override
  String get e7LibraryReportABug => '报告问题';

  @override
  String get e7LibraryKeyboardShortcuts => 'Keyboard shortcuts';

  @override
  String get e7LibraryHTTPHeader => 'HTTP header';

  @override
  String get e7LibraryEnvironmentVariable => 'environment variable';

  @override
  String get e7LibraryOpenCodeIsReconnectingTryAgainShortly =>
      'The server is reconnecting. Try again shortly.';

  @override
  String get e7LibraryWhatIsMCP => 'What is MCP?';

  @override
  String get e7LibrarySavingConfiguration => 'Saving configuration';

  @override
  String get e7LibrarySaveMCPServer => 'Save MCP server';

  @override
  String get e7LibraryThisProject => 'This project';

  @override
  String e7LibraryWritesOnlyTo(String detail1) {
    return 'Writes only to $detail1.';
  }

  @override
  String get e7LibraryWritesToThisOpenCodeServerSGlobal =>
      'Writes to this OpenCode server’s global configuration.';

  @override
  String get e7LibraryServerName => 'Server name';

  @override
  String get e7LibraryDocsOrBrowserTools => 'docs or browser-tools';

  @override
  String get e7LibraryUniqueWithinTheSelectedConfiguration =>
      'Unique within the selected configuration.';

  @override
  String get e7LibraryEnterAServerName => 'Enter a server name';

  @override
  String get e7LibraryRemoteURL => 'Remote URL';

  @override
  String get e7LibraryLocalCommand => 'Local command';

  @override
  String get e7LibraryOptional => 'Optional';

  @override
  String get e7LibraryEnterAValueGreaterThanZero =>
      'Enter a value greater than zero';

  @override
  String get e7LibraryMCPEndpointURL => 'MCP endpoint URL';

  @override
  String get e7LibraryHTTPIsAcceptedForLocalDevelopmentServers =>
      'HTTP is accepted for local development servers.';

  @override
  String get e7LibraryEnterAValidHTTPOrHTTPSURL =>
      'Enter a valid HTTP or HTTPS URL without credentials';

  @override
  String get e7LibraryDetectOAuthAutomatically => 'Detect OAuth automatically';

  @override
  String get e7LibraryTurnThisOffWhenTheServerUses =>
      'Turn this off when the server uses headers and should never start OAuth.';

  @override
  String get e7LibraryCommandAndArguments => 'Command and arguments';

  @override
  String get e7LibraryRunsOnTheOpenCodeServerNotThis =>
      'Runs on the OpenCode server, not this phone. Enter one argument per line.';

  @override
  String get e7LibraryEnterACommand => 'Enter a command';

  @override
  String get e7LibraryWorkingDirectory => 'Working directory';

  @override
  String get e7LibraryOptionalServerPath => 'Optional server path';

  @override
  String get e7LibraryEnvironmentVariables => 'Environment variables';

  @override
  String e7LibraryInvalidOnLineUseKEYVALUE(String detail1, String detail2) {
    return 'Invalid $detail1 on line $detail2. Use KEY=VALUE.';
  }

  @override
  String e7LibraryInvalidNameOnLine(String detail1, String detail2) {
    return 'Invalid $detail1 name on line $detail2.';
  }

  @override
  String e7LibraryDuplicateName(String detail1, String detail2) {
    return 'Duplicate $detail1 name \"$detail2\".';
  }

  @override
  String get e7LibraryOpenCodeIsReconnectingTryAgain =>
      'The server is reconnecting. Try again.';

  @override
  String get e7LibraryRevokeAlwaysAllowedAction => 'Revoke access?';

  @override
  String get e7LibraryAction => 'Action';

  @override
  String get e7LibraryResource => 'Resource';

  @override
  String get e7LibraryRevokeAccess => 'Revoke access';

  @override
  String get e7LibraryAlwaysAllowedActionRevoked =>
      'Always allowed action revoked';

  @override
  String get e7LibraryAlwaysAllowedActions => 'Always allowed actions';

  @override
  String get e7LibraryNoAlwaysAllowedActions => 'No always allowed actions';

  @override
  String get e7LibraryTheLastActionFailed => 'The last action failed';

  @override
  String e7LibraryRevokeAccess2(String detail1) {
    return 'Revoke $detail1 access';
  }

  @override
  String get e7LibraryToolsAndCapabilities => 'Tools and capabilities';

  @override
  String get e7LibraryRefreshTools => 'Refresh tools';

  @override
  String get e7LibraryOpenCodeToolsDependOnTheProviderAnd =>
      'OpenCode tools depend on the provider and model used by the active conversation.';

  @override
  String get e7LibraryChooseModel => 'Choose model';

  @override
  String e7LibrarySearchTools2(String detail1) {
    return 'Search $detail1 tools';
  }

  @override
  String get e7LibraryRegisteredInventoryUnavailable =>
      'registered inventory unavailable';

  @override
  String get e7LibraryServerCapabilityUnavailable =>
      'server capability unavailable';

  @override
  String get e7LibraryNoToolsForThisModel => 'No tools for this model';

  @override
  String get e7LibraryNoDescriptionReturnedByOpenCode =>
      'No description returned by OpenCode';

  @override
  String get e7LibraryCopyParameterSchema => 'Copy parameter schema';

  @override
  String get e7LibraryNoProjectSelected => 'No project selected';

  @override
  String get e7LibraryNoProjectFolderIsOpenChooseOne =>
      'No project is open. Choose one at the top of Files.';

  @override
  String get e7LibrarySwitchProject => 'Switch project';

  @override
  String get e7LibraryWorktrees => 'Worktrees';

  @override
  String get e7LibraryManagedWorkspaces => 'Cloud environments';

  @override
  String get e7LibraryProjectHealth => 'Project health';

  @override
  String get e7LibraryOpenCodeIsReconnecting => 'OpenCode is reconnecting.';

  @override
  String get e7LibraryCloudEnvironments => 'Cloud environments';

  @override
  String get e7LibraryDiscoverExistingEnvironments =>
      'Discover existing environments';

  @override
  String get e7LibraryNewEnvironment => 'New environment';

  @override
  String get e7LibraryEnvironments => 'Environments';

  @override
  String get e7LibraryNoCloudEnvironments => 'No cloud environments';

  @override
  String get e7LibraryEnvironmentRefreshFailed => 'Environment refresh failed';

  @override
  String get e7LibraryRetryCloudEnvironments => 'Try again';

  @override
  String get e7LibraryAdapterRefreshFailed => 'Adapter refresh failed';

  @override
  String get e7LibraryConnected => 'Connected';

  @override
  String get e7LibraryConnecting => 'Connecting';

  @override
  String get e7LibraryDisconnected => 'Disconnected';

  @override
  String get e7LibraryEnvironmentActions => 'Environment actions';

  @override
  String get e7LibraryOpenAgain => 'Open again';

  @override
  String get e7LibraryNewManagedWorkspace => 'New cloud environment';

  @override
  String get e7LibraryCreateAndOpen => 'Create and open';

  @override
  String e7LibraryRemove(String detail1) {
    return 'Delete $detail1?';
  }

  @override
  String get e7LibraryRemovePermanently => 'Delete permanently';

  @override
  String e7LibraryIsReady(String detail1) {
    return '$detail1 is ready';
  }

  @override
  String get e7LibraryOpenCodeCouldNotPrepareThisWorktree =>
      'This worktree could not be prepared.';

  @override
  String e7LibraryWasCreatedItsSetupStatusIsNot(String detail1) {
    return '$detail1 was created. Its setup status is not yet confirmed.';
  }

  @override
  String get e7LibraryWaitForOpenCodeToFinishPreparingThis =>
      'Wait for this worktree to finish preparing.';

  @override
  String get e7LibraryOpenCodeDidNotSwitchLocations =>
      'The server did not switch projects.';

  @override
  String e7LibraryCouldNotVerifyBeforeThisDestructiveAction(
    String detail1,
    String detail2,
  ) {
    return 'Could not verify $detail1 before this destructive action: $detail2';
  }

  @override
  String e7LibraryResetToTheDefaultBranch(String detail1) {
    return '$detail1 reset to the default branch';
  }

  @override
  String e7LibraryAndItsBranchWereRemoved(String detail1) {
    return '$detail1 and its branch were deleted';
  }

  @override
  String e7LibraryReset(String detail1) {
    return 'Reset $detail1?';
  }

  @override
  String get e7LibraryThisPermanentlyDiscardsTrackedChangesAndDeletes =>
      'This permanently discards tracked changes and deletes all untracked and ignored files. Submodules are also reset and cleaned. This cannot be undone.';

  @override
  String get e7LibraryResetWorktree => 'Reset worktree';

  @override
  String get e7LibraryRefreshWorktrees => 'Refresh worktrees';

  @override
  String get e7LibraryNewWorktree => 'New worktree';

  @override
  String get e7LibraryNoIsolatedWorktreesYet => 'No isolated worktrees yet';

  @override
  String get e7LibraryPreparingFilesAndProjectTasks =>
      'Preparing files and project tasks…';

  @override
  String get e7LibraryWorktreeActions => 'Worktree actions';

  @override
  String get e7LibraryReset2 => 'Reset';

  @override
  String get e7LibraryNameOptional => 'Name (optional)';

  @override
  String get e7LibraryTheWorktreeDirectoryAndItsGitBranch =>
      'The worktree directory and its Git branch will be permanently deleted. Existing conversations remain in history, but their working directory will no longer exist.';

  @override
  String get e7LibraryInitializeGitRepository => 'Initialize Git repository?';

  @override
  String get e7LibraryOpenCodeWillRunGitInitInThe =>
      'OpenCode will run git init in the current project. Existing files will not be changed or committed. This enables branch, working-tree, and Review features.';

  @override
  String get e7LibraryInitializeGit => 'Initialize Git';

  @override
  String get e7LibraryGitRepositoryInitialized => 'Git repository initialized';

  @override
  String get e7LibraryVersionControl => 'Version control';

  @override
  String get e7LibraryLanguageServices => 'Language services';

  @override
  String get e7LibraryFormatters => 'Formatters';

  @override
  String get e7LibraryGitIsNotInitialized => 'Git is not initialized';

  @override
  String get e7LibraryInitializeThisProjectToEnableBranchesWorking =>
      'Initialize this project to enable branches, working-tree changes, and Review.';

  @override
  String get e7LibraryRunGitInitFromATerminal =>
      'Run `git init` from a terminal';

  @override
  String get e7LibraryGitInitializationFailed => 'Git initialization failed';

  @override
  String get e7LibraryNoActiveBranch => 'No active branch';

  @override
  String e7LibraryDefaultBranch(String detail1) {
    return 'Default branch: $detail1';
  }

  @override
  String get e7LibraryWorkingTreeIsClean => 'Working tree is clean';

  @override
  String e7LibraryChangedFiles(String detail1) {
    return '$detail1 changed files';
  }

  @override
  String get e7LibraryNoUncommittedChanges => 'No uncommitted changes';

  @override
  String get e7LibraryNoActiveLanguageServices => 'No active language services';

  @override
  String get e7LibraryOpenCodeActivatesThemWhileItInspectsSupported =>
      'OpenCode activates them while it inspects supported source files during coding.';

  @override
  String get e7LibraryNoFormattersConfigured => 'No formatters configured';

  @override
  String get e7LibraryEnabled => 'Enabled';

  @override
  String get e7LibraryDisabled => 'Disabled';

  @override
  String e7LibraryLoading(String detail1) {
    return 'Loading $detail1';
  }

  @override
  String get e7LibraryAutomaticCallbackCaptureIsUnavailablePasteThe =>
      'Automatic callback capture is unavailable. Paste the callback URL or authorization code.';

  @override
  String get e7LibraryThePhoneIsSecurelyListeningForThis =>
      'The phone is securely listening for this authorization callback. You can also enter it manually.';

  @override
  String get e7LibraryCallbackURLOrCode => 'Callback URL or code';

  @override
  String get e7LibraryUpdating => 'Updating…';

  @override
  String get e7LibraryNotConnected => 'Not connected';

  @override
  String get e7LibraryServerEnvironment => 'Server environment';

  @override
  String get e7LibraryServerManaged => 'Server-managed';

  @override
  String get e7LibraryConnect => 'Connect';

  @override
  String get e7LibraryAuthenticationFailed => '认证失败';

  @override
  String get e7LibraryAuthenticationAttemptExpired => '认证尝试已过期';

  @override
  String get e7LibraryAuthenticationComplete => '认证完成';

  @override
  String get e7LibraryReturnFromTheBrowserAndEnterThe => '从浏览器返回，并输入授权码。';

  @override
  String get e7LibraryFinishAuthenticationInTheBrowserThenCheck =>
      '请在浏览器中完成认证，然后检查状态。';

  @override
  String get e7LibraryAuthorizationCode => '授权码';

  @override
  String get e7LibrarySelectAnOption => 'Select an option';

  @override
  String get e7LibraryEnterAValue => 'Enter a value';

  @override
  String get e7LibraryTheServerReturnedAnUnsafeAuthorizationLink =>
      'The server returned an unsafe authorization link. Only HTTPS links with a valid host and no embedded credentials are allowed.';

  @override
  String get e7LibraryCouldNotLoadThisSection => 'Could not load this section';

  @override
  String get e7LibrarySkills => 'Skills';

  @override
  String get e7LibraryNoSkillsAvailable => 'No skills available';

  @override
  String get e7LibraryModelsAndAgents => 'Models and agents';

  @override
  String get e7LibraryUnavailable => '不可用';

  @override
  String get e7LibraryFinishOrCancelTheCurrentMCPAuthorization =>
      'Finish or cancel the current MCP authorization first.';

  @override
  String get e7LibraryCouldNotOpenTheAuthorizationPage =>
      'Could not open the authorization page';

  @override
  String e7LibraryAuthenticated(String detail1) {
    return '$detail1 authenticated';
  }

  @override
  String get e7LibraryCouldNotConfirmMCPAuthentication =>
      'Could not confirm MCP authentication';

  @override
  String get e7LibraryMCPServerSavedInOpenCode =>
      'MCP server saved in OpenCode';

  @override
  String get e7LibraryMCPUnavailable => 'MCP unavailable';

  @override
  String get e7LibraryMCPAndIntegrations => 'Providers and MCP';

  @override
  String get e7LibraryCouldNotSaveSignInRecovery =>
      'Could not save sign-in recovery.';

  @override
  String get e7LibraryNoProviderConnectionsAvailable =>
      'No provider connections available';

  @override
  String get e7LibraryThisServerDidNotReturnAnyProvider =>
      'This server did not return any provider integrations.';

  @override
  String get e7LibrarySearchProvidersOrModels => 'Search providers or models';

  @override
  String get e7LibraryNoMCPServersConfigured => 'No MCP servers configured';

  @override
  String get e7LibrarySaveOneForThisProjectOrEvery =>
      'Save one for this project or every project on the server.';

  @override
  String get e7LibraryAddAnMCPServer => 'Add an MCP server';

  @override
  String get e7LibraryAuthorizing => 'Authorizing';

  @override
  String get e7LibraryResources => 'Resources';

  @override
  String get e7LibraryNoResourcesAvailable => 'No resources available';

  @override
  String get e7LibraryConnectedMCPServersHaveNotExposedAny =>
      'Connected MCP servers have not exposed any resources.';

  @override
  String get e7LibraryOpenBrowser => 'Open browser';

  @override
  String get e7LibraryConnectedAndToolsAreAvailable =>
      'Connected and tools are available';

  @override
  String get e7LibraryConnectionFailed => 'Connection failed';

  @override
  String get e7LibraryAuthenticationRequired => 'Authentication required';

  @override
  String get e7LibraryClientRegistrationRequired =>
      'Client registration required';

  @override
  String e7LibraryStoredCredential(String detail1) {
    return 'Stored credential: $detail1';
  }

  @override
  String get e7LibraryNoConnectionMethodsAvailable =>
      'No connection methods available';

  @override
  String get e7LibraryConfiguredOnTheServer => 'Configured on the server';

  @override
  String e7LibraryDisconnect2(String detail1) {
    return 'Disconnect $detail1?';
  }

  @override
  String e7LibraryCredentialRemovedServerEnvironmentRemainsActive(
    String detail1,
  ) {
    return '$detail1 credential removed; server environment remains active';
  }

  @override
  String e7LibraryDisconnected2(String detail1) {
    return '$detail1 disconnected';
  }

  @override
  String e7LibraryConnect2(String detail1) {
    return 'Connect $detail1';
  }

  @override
  String get e7LibraryAuthorizationWasNotOpenedThePendingAttempt =>
      'Authorization was not opened. The pending attempt is retained.';

  @override
  String get e7LibraryCouldNotOpenOAuth => 'Could not open OAuth';

  @override
  String e7LibraryIsConnected(String detail1) {
    return '$detail1 已连接';
  }

  @override
  String get e7LibraryTheSignInSourceChanged => '登录来源已更改。';

  @override
  String get e7LibraryCouldNotConfirmAuthenticationReturnToThe =>
      'Could not confirm authentication. Return to the original source and try again.';

  @override
  String get e7LibraryNoServerCommandsFound => 'No server commands found';

  @override
  String get e7LibraryCommandsFromYourProjectAndSkillsAppear =>
      'Commands from your project and skills appear here.';

  @override
  String get e7LibraryNoDescription => 'No description';

  @override
  String get e7LibraryServerCommands => 'Server commands';

  @override
  String get e7LibraryReferences => 'References';

  @override
  String get e7LibraryNoReferencesConfigured => 'No references configured';

  @override
  String e7LibraryChangedFilesDetected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changed files were detected.',
      one: '1 changed file was detected.',
    );
    return '$_temp0';
  }

  @override
  String get e7LibraryEnvironmentRemainsAfterDisconnect =>
      'This provider also uses the server environment, which mobile cannot remove and which will remain active.';

  @override
  String get e7LibrarySearchImportAliases =>
      'backup restore transfer JSON conversation session chat';

  @override
  String get e7LibrarySearchShortcutsAliases => 'hotkeys help desktop';

  @override
  String get e7SetupApiKeyHint => '粘贴 API 密钥';

  @override
  String get e7SetupBrowserHint => '会打开浏览器。如果重定向无法到达 OpenCode，请在此粘贴回调 URL。';

  @override
  String get e7SetupDeviceCodeHint => '使用一次性代码。可在手机上完成。';

  @override
  String get e7SetupAccountHint => '使用你的账号登录';

  @override
  String get e7SetupNewTerminalDetail => '在当前项目中启动一个 shell。';

  @override
  String get e7SetupShowPassword => '显示服务器密码';

  @override
  String get e7SetupAuthFailed => '服务器已启动，但身份验证失败。';

  @override
  String get e7SetupScanInstruction => '将相机对准 opencode2 pair 输出的二维码。';

  @override
  String get e7SetupRightKey => '向右箭头键';

  @override
  String get e7SetupRestartReconnectFailed => '本地服务器已重启，但应用无法重新连接。';

  @override
  String get e7SetupInstallingOpenCode => '正在安装 OpenCode';

  @override
  String get e7SetupNoOutput => '终端暂无输出。';

  @override
  String get e7SetupFollowLog => '查看服务器日志';

  @override
  String get e7SetupOpenSetupGuide => '打开设置指南';

  @override
  String get e7SetupDownKey => '向下箭头键';

  @override
  String get e7SetupVerifyContinue => '验证并继续';

  @override
  String get e7SetupAccessibleTerminal => '使用无障碍文本记录与输入';

  @override
  String get e7SetupCameraFailedDetail => '可能有其他应用正在占用相机。粘贴配对码同样有效。';

  @override
  String get e7SetupTermuxNoAnswer =>
      'Termux 没有响应。请点按“复制并打开 Termux”，在 Termux 中粘贴那一行并按回车，然后回到这里。';

  @override
  String get e7SetupCopyOpenTermux => '复制并打开 Termux';

  @override
  String get e7SetupStopTerminalDetail => '正在运行的进程及其子进程将被终止。';

  @override
  String get e7SetupEdit => '编辑';

  @override
  String get e7SetupServerPassword => '服务器密码';

  @override
  String get e7SetupHttpsHint => '优先使用 HTTPS。远程 HTTP 需要你为每台服务器单独授权。';

  @override
  String get e7SetupObservedVersionSaveFailed =>
      '本地服务器已就绪，但无法保存观测到的版本。请刷新设置后重试。';

  @override
  String get e7SetupPasteInstead => '改为粘贴';

  @override
  String get e7SetupConfirmUpdate => '更新托管的 OpenCode？';

  @override
  String get e7SetupInstallServiceDetail =>
      '官方安装程序加一个 systemd 用户服务，关闭终端或重启后仍可运行。';

  @override
  String get e7SetupUpdateHost => '在主机上更新 OpenCode';

  @override
  String get e7SetupServiceStatus => 'Service status';

  @override
  String get e7SetupKeepAfterLogout => '退出登录后保持运行';

  @override
  String get e7SetupGetTermux => '获取 Termux';

  @override
  String get e7SetupRestartServer => '重启服务器';

  @override
  String get e7SetupResumeSetup => '重试 — 从设置中断处继续';

  @override
  String get e7SetupHidePassword => '隐藏服务器密码';

  @override
  String get e7SetupControlKeys => '终端控制键。左右滑动查看更多。';

  @override
  String get e7SetupEndInputKey => '输入结束，Control D';

  @override
  String get e7SetupGuidanceSaveFailed => '无法保存连接指引。请重试保存。';

  @override
  String get e7SetupServerOperation => '服务器操作进行中';

  @override
  String get e7SetupNewTerminal => '新建终端';

  @override
  String get e7SetupUnsavedProfile => '服务器尚未保存。';

  @override
  String get e7SetupCheckingInstall => '正在检查已安装的环境...';

  @override
  String get e7SetupInspectTermuxFailed => 'Android 无法检查 Termux。';

  @override
  String get e7SetupUsername => '用户名（可选）';

  @override
  String get e7SetupFirstSetupDuration =>
      '首次设置可能需要 10–15 分钟。你可以离开此页面稍后再回来，设置会继续运行。';

  @override
  String get e7SetupNoTerminals => '没有终端进程';

  @override
  String get e7SetupEscapeKey => 'Esc 键';

  @override
  String get e7SetupLeftKey => '向左箭头键';

  @override
  String get e7SetupInstallService => '将 OpenCode 安装为后台服务';

  @override
  String get e7SetupSaveToFinish => '已连接：保存即可完成。';

  @override
  String get e7SetupPasswordStartupHint => '服务器启动时会显示。如果没有密码则留空。';

  @override
  String get e7SetupInstallTermuxDetail => '安装最新的 F-Droid 版 Termux，然后回到这里。';

  @override
  String get e7SetupStopBeforeUpdate => '更新 OpenCode 前请先停止正在进行的生成。';

  @override
  String get e7SetupRestartingLocal => '正在重启本地服务器';

  @override
  String get e7SetupAddServer => '添加服务器';

  @override
  String get e7SetupInteractiveTerminal => '使用交互式终端';

  @override
  String get e7SetupInstallingUbuntu => '正在设置 Ubuntu';

  @override
  String get e7SetupInterruptKey => '中断，Control C';

  @override
  String get e7SetupServerUrl => '服务器 URL';

  @override
  String get e7SetupUsbAccess => '通过 USB 从这部手机访问';

  @override
  String get e7SetupWaitingTermux => '正在等待 Termux 响应。这可能需要一些时间。';

  @override
  String get e7SetupDiscardChanges => '要放弃服务器的更改吗？';

  @override
  String get e7SetupPasswordRequired => '无法读取已保存的密码';

  @override
  String get e7SetupPairing => '正在配对…';

  @override
  String get e7SetupCommandInput => '终端命令输入';

  @override
  String get e7SetupCameraFailed => '无法打开相机';

  @override
  String get e7SetupPastePassword => '粘贴服务器密码';

  @override
  String get e7SetupSavingLocal => '正在保存本地服务器设置';

  @override
  String get e7SetupCopyFailureReport => '复制故障报告';

  @override
  String get e7SetupCameraDisabled => '相机访问已关闭';

  @override
  String get e7SetupPastePairing => '粘贴配对码';

  @override
  String get e7SetupServers => 'Servers';

  @override
  String get e7SetupStartingSetup => '正在 Termux 中开始设置';

  @override
  String get e7SetupSetupNotStarted =>
      'Termux 已打开，但设置没有开始。请重试一次；如果仍然如此，请复制故障报告。';

  @override
  String get e7SetupThisDevice => '此设备（Termux）';

  @override
  String get e7SetupTransportReconnecting => '服务器传输正在重新连接。';

  @override
  String get e7SetupStepUnavailable => '暂不可用';

  @override
  String get e7SetupUpdateHostDetail => '当服务器报告有更新时，设置会优先提供原生升级；这是主机端的等效操作。';

  @override
  String get e7SetupMissingPasswordShort =>
      '已保存的密码不可用。请重新输入；仅当此服务器不再需要密码时才可留空。';

  @override
  String get e7SetupTesting => '正在测试…';

  @override
  String get e7SetupScanPairing => '扫描配对码';

  @override
  String get e7SetupRestartUnconfirmed => '无法确认此次重启。重试前请先刷新其进度。';

  @override
  String get e7SetupExistingMissingCredential =>
      '本地服务器已存在，但其保存的凭据不可用。请重新运行设置以安全地替换它。';

  @override
  String get e7SetupPreparingModels => '正在准备模型';

  @override
  String get e7SetupHostInstructions =>
      '这些命令需在托管此服务器的电脑上运行，应用无法代你执行。请逐条复制到那台机器的终端中。';

  @override
  String get e7SetupTranscript => '终端记录';

  @override
  String get e7SetupHostFirstSetup => '首次设置：在你的电脑上运行';

  @override
  String get e7SetupNoCameraDetail =>
      '没有可用于扫描的相机。请在服务器上运行 opencode2 pair，复制它输出的代码，并粘贴到服务器编辑器中。';

  @override
  String get e7SetupDiscard => '放弃';

  @override
  String get e7SetupConnectionClosed => '连接已关闭';

  @override
  String get e7SetupUpKey => '向上箭头键';

  @override
  String get e7SetupConnect => '连接';

  @override
  String get e7SetupRemoveTerminalDetail => '此终端记录将被移除。';

  @override
  String get e7SetupInputDisconnected => '断开连接时无法输入。';

  @override
  String get e7SetupHostCopied => '已复制。请在服务器所在的电脑上运行。';

  @override
  String get e7SetupCameraPrivacy =>
      '相机仅用于读取 opencode2 pair 输出的二维码，且仅在此界面打开时使用。你也可以改为粘贴代码，效果完全相同。';

  @override
  String get e7SetupIsV2 => '这是一个 OpenCode 2 服务器。';

  @override
  String get e7SetupResumeLive => '恢复实时视图';

  @override
  String get e7SetupTabKey => 'Tab 键';

  @override
  String get e7SetupCloseScanner => '关闭扫描器';

  @override
  String get e7SetupChooseContinue => '选择继续方式';

  @override
  String get e7SetupTermuxOutdated =>
      '这个版本的 Termux 太旧，应用无法使用。请安装最新版，然后点按“继续设置”。';

  @override
  String get e7SetupCameraNeeded => '扫描需要相机访问权限';

  @override
  String get e7SetupTerminalActions => '终端操作';

  @override
  String get e7SetupReadPassword => '为此应用读取服务器密码';

  @override
  String get e7SetupStartInstalled => '启动已安装的 OpenCode？';

  @override
  String get e7SetupTestConnection => '测试连接';

  @override
  String get e7SetupCheckingTermux => '正在检查 Termux 连接';

  @override
  String get e7SetupCheckingTermuxShort => '正在检查 Termux…';

  @override
  String get e7SetupDefaultServer => 'OpenCode server';

  @override
  String get e7SetupSaving => '正在保存…';

  @override
  String get e7SetupLinuxService => '设置 OpenCode 2';

  @override
  String get e7SetupPairingDesktopHint => '请确认服务器正在运行，且它输出的地址可从本机访问。';

  @override
  String get e7SetupAboutNotices => '关于与开源声明';

  @override
  String get e7SetupSetupLost => '丢失了在 Termux 中运行的设置进程';

  @override
  String get e7SetupReportCopied => '已复制故障报告。';

  @override
  String get e7SetupAppSettings => '在设置中允许该权限';

  @override
  String get e7SetupNoCamera => '此设备没有相机';

  @override
  String get e7SetupServerDisconnected => '服务器未连接。';

  @override
  String get e7SetupEmptyPasswordHint => '仅当此服务器不再使用密码时才留空。';

  @override
  String get e7SetupAndroidOnly => '在此手机上设置仅支持 Android';

  @override
  String get e7SetupEditServer => '编辑服务器';

  @override
  String get e7SetupReenterPassword => '重新输入密码';

  @override
  String get e7SetupMissingCredential => '此托管服务器已保存的凭据不可用。请重新运行设置以安全地替换它。';

  @override
  String get e7SetupReconnect => '重新连接';

  @override
  String get e7SetupSwitchNotStarted => '运行时切换未启动。';

  @override
  String get e7SetupNoUbuntu => '未找到托管的 Ubuntu 安装。';

  @override
  String get e7SetupKeyUnavailable => '终端断开连接时不可用';

  @override
  String get e7SetupCopyTerminal => '复制终端选区或记录';

  @override
  String get e7SetupCommandHint => 'Type a command';

  @override
  String get e7SetupCheckInstallFailed => '无法检查已安装的环境。';

  @override
  String get e7SetupConnectionFailed => '连接失败。';

  @override
  String get e7SetupOpenAppSettings => '打开应用设置';

  @override
  String get e7SetupFullWalkthrough => '完整指南（在浏览器中打开）';

  @override
  String get e7SetupPairingPhoneHint =>
      '绑定在自身 127.0.0.1 上的服务器，在你搭好桥接之前无法从这部手机访问：通过 USB 使用“adb reverse tcp:PORT tcp:PORT”，或使用 SSH 转发。若要改为通过网络访问，请将其置于 HTTPS 之后。';

  @override
  String get e7SetupOutputCopied => '已复制设置输出。';

  @override
  String get e7SetupMissingPasswordLong => '已保存的密码不可用。请重新输入；仅当此服务器不再需要密码时才可留空。';

  @override
  String get e7SetupNoServerGuide => '那里还没有服务器？设置指南会告诉你如何启动一个。';

  @override
  String get e7SetupStartingLocal => '正在启动本地服务器';

  @override
  String get e7SetupTerminalSemantics => '交互式终端。使用无障碍按钮可查看易读的记录和带标签的输入。';

  @override
  String get e7SetupRestartingLocalStage => '正在重启本地服务器';

  @override
  String get e7SetupEmptyPairClipboard =>
      '剪贴板为空。请在服务器上运行“opencode2 pair”，并复制它输出的代码。';

  @override
  String get e7SetupRestartActiveChanged => '本地服务器已重启，但当前服务器已更改。准备好后请重新连接。';

  @override
  String get e7SetupTokenRequired => '无法读取已保存的令牌';

  @override
  String get e7SetupPairingInstructions =>
      '在你的电脑上运行“opencode2 pair”，然后粘贴或扫描它输出的配对码。';

  @override
  String get e7SetupHostDaily => '日常使用 — 在你的电脑上运行';

  @override
  String get e7SetupStopLocal => '停止本地服务器';

  @override
  String get e7SetupReadingProgress => '正在读取设置进度';

  @override
  String get e7SetupCameraSettingsDetail =>
      'Android 不会再次询问，因此需要在应用设置中更改：开启相机后再返回。粘贴代码无需任何权限，现在就能用。';

  @override
  String get e7SetupVerifyTermuxFailed => 'Termux 桥接验证失败。';

  @override
  String get e7SetupUbuntuOnly => 'Ubuntu 已安装，OpenCode 尚未安装。';

  @override
  String get e7SetupRenameTerminal => '重命名终端';

  @override
  String get e7SetupInputUnavailable => '终端输入不可用';

  @override
  String get e7SetupUpdateInterruption => '服务器会短暂不可用。应先停止正在进行的生成。';

  @override
  String get e7SetupRunningOnPhone => 'OpenCode 正在此手机上运行。';

  @override
  String get e7SetupLocalStopped => '本地服务器已停止。已安装的文件会保留。';

  @override
  String get e7SetupDidNotConnect => '服务器未连接。';

  @override
  String get e7SetupSendCommand => '向终端发送命令';

  @override
  String get e7SetupUnsupportedSetup =>
      '在设备本机上设置仅适用于 Android 手机。在这台电脑上，请自行启动 OpenCode 并将其添加为服务器。';

  @override
  String get e7SetupSendKey => '向终端发送此按键';

  @override
  String get e7SetupRemoveTerminal => '移除终端？';

  @override
  String e7SetupTerminalNumber(int number) {
    return '终端 $number';
  }

  @override
  String e7SetupCopyCommandLabel(String label) {
    return 'Copy command: $label';
  }

  @override
  String e7SetupConnectFailedDetail(String name, String detail) {
    return '无法连接到 $name。$detail 请检查服务器地址和凭据后重试。';
  }

  @override
  String e7SetupSavedConnectFailed(String name, String detail) {
    return '$name 已保存，但无法连接。请检查服务器地址和凭据后重试。（$detail）';
  }

  @override
  String e7SetupSaveFailed(String name, String detail) {
    return '无法保存 $name。现有服务器保持不变。请检查设备存储空间后重试。（$detail）';
  }

  @override
  String e7SetupRemoveServer(String name) {
    return '要移除 $name 吗？';
  }

  @override
  String e7SetupRemovedDisconnectFailed(String name, String detail) {
    return '$name 已移除，但其连接未能正常关闭。连接其他服务器前，请重启应用。（$detail）';
  }

  @override
  String e7SetupRemoveFailed(String name, String detail) {
    return '无法移除 $name。已保留已保存的服务器和当前连接。请检查设备存储空间后重试。（$detail）';
  }

  @override
  String e7SetupPairedChoice(String host, int count) {
    return '已与 $host 配对，选自代码中的 $count 个地址。';
  }

  @override
  String e7SetupPaired(String host) {
    return '已与 $host 配对。';
  }

  @override
  String e7SetupStartFailed(String detail) {
    return '无法保存或启动本地设置：$detail';
  }

  @override
  String e7SetupRestartFailed(String detail) {
    return '无法重启本地服务器：$detail';
  }

  @override
  String e7SetupStopFailed(String detail) {
    return 'Could not stop the local server: $detail';
  }

  @override
  String e7SetupElapsedSeconds(int seconds) {
    return '已用时 $seconds 秒';
  }

  @override
  String e7SetupElapsedMinutes(int minutes, int seconds) {
    return '已用时 $minutes 分 $seconds 秒';
  }

  @override
  String e7SetupDeleteDisclosure(int queued, int drafts) {
    String _temp0 = intl.Intl.pluralLogic(
      queued,
      locale: localeName,
      other: '$queued queued prompts will be deleted.',
      one: '1 queued prompt will be deleted.',
      zero: '',
    );
    String _temp1 = intl.Intl.pluralLogic(
      drafts,
      locale: localeName,
      other: '$drafts unsent drafts will be deleted.',
      one: '1 unsent draft will be deleted.',
      zero: '',
    );
    return 'This deletes everything this device stored for the server: its password, selected model and agent, project choice, and any conversations shown in the home-screen widget.\n\n$_temp0 $_temp1\n\nNothing is deleted on the server itself or at your AI providers.';
  }

  @override
  String e7SetupPairingFailed(String detail, String hint) {
    return '该配对码中没有任何地址响应：\n$detail\n$hint';
  }

  @override
  String e7SetupProbeV2(String version) {
    return 'OpenCode 2 · $version';
  }

  @override
  String get e7SetupPairNone => '这里没有配对码。请在服务器上运行“opencode2 pair”，然后扫描或复制其输出。';

  @override
  String get e7SetupPairLong =>
      '内容过长，不可能是配对码。请只复制“opencode2 pair”输出的那一行，或扫描其二维码。';

  @override
  String get e7SetupPairInvalid =>
      '这不是配对码。请在服务器上运行“opencode2 pair”，然后扫描或复制其输出。';

  @override
  String get e7SetupPairShape =>
      '该配对码格式不正确 — 它应是包含“urls”、“username”和“password”的 JSON 对象。';

  @override
  String get e7SetupPairNoUrls => '该配对码没有“urls”字段，因此没有可连接的地址。';

  @override
  String get e7SetupPairUrlsType => '该配对码的“urls”字段不是地址列表。';

  @override
  String get e7SetupPairTooMany => '该配对码列出的地址超过应用会尝试的数量。请将服务器绑定到单个网络接口，然后重新配对。';

  @override
  String get e7SetupPairAddressType => '该配对码中的地址不是文本。';

  @override
  String get e7SetupPairAddressLong => '该配对码中的地址过长，不可能是服务器 URL。';

  @override
  String get e7SetupPairAddressMissing =>
      '该配对码不含服务器地址。请确认服务器正在监听，然后再次运行“opencode2 pair”。';

  @override
  String get e7SetupPairUsernameType => '该配对码的“username”字段不是文本。';

  @override
  String get e7SetupPairPasswordMissing =>
      '该配对码没有“password”字段，可能被截断了 — 请扫描或复制完整的配对码。';

  @override
  String get e7SetupPairPasswordType => '该配对码的“password”字段不是文本。';

  @override
  String get e7SetupPairTestFailed => '连接测试在检查服务器之前就失败了。请尝试其他地址。';

  @override
  String get e7SetupNotOpenCode => '该地址的响应不像 OpenCode 服务器。请检查地址后重试。';

  @override
  String get e7SetupNoServerAnswer => '服务器没有响应。请检查它是否正在运行，以及地址是否正确。';

  @override
  String get e7SetupPairPasswordRejected => '密码被拒绝。请检查配对码后重试。';

  @override
  String get e7SetupPairAddressUnusable => '该配对码包含无法使用的服务器地址。';

  @override
  String get e7SetupInvalidAddress => '<无效地址>';

  @override
  String get e7SetupEnterUrl => '请输入服务器 URL。';

  @override
  String get e7SetupIncludeScheme => '请包含 https:// 或 http://。远程 HTTP 需要你的许可。';

  @override
  String get e7SetupCompleteUrl =>
      '请输入完整的服务器 URL，例如 https://server.example:4096。';

  @override
  String get e7SetupUrlScheme => '服务器 URL 必须使用 https:// 或 http://。';

  @override
  String get e7SetupTermuxUrlScheme =>
      '服务器 URL 必须使用 https://，本地 Termux 可用 http://。';

  @override
  String get e7SetupUrlCredentials => '不要在 URL 中包含凭据。请使用下方的字段。';

  @override
  String get e7SetupUrlQuery => '请从服务器 URL 中移除查询参数和片段。';

  @override
  String get e7SetupUrlPath => '请从服务器 URL 中移除路径，只输入其源地址。';

  @override
  String get e7SetupRequireHttps =>
      '密码只会通过 https:// 发送到其他电脑。请使用该电脑的 https:// 地址、使用配对码，或通过 Tailscale 连接。';

  @override
  String get e7SetupLocalHttp =>
      'http:// 地址仅适用于此手机或 192.168.x.x 这类私有网络地址。其他情况请使用配对码、其 https:// 地址，或通过 Tailscale 连接。';

  @override
  String get e7SetupRefused => '电脑拒绝了连接。请检查服务器是否在那里运行，以及地址和端口是否正确。';

  @override
  String get e7SetupTimeout => '连接超时。请检查地址，以及此手机能否访问该服务器。';

  @override
  String get e7SetupDns => '找不到该主机名。请检查地址拼写。';

  @override
  String get e7SetupCertificate => '该证书不受信任。请先核对其指纹，再决定是否信任。';

  @override
  String get e7SetupUnhealthy => '服务器有响应，但报告自身状态不健康。请查看其日志后重试。';

  @override
  String get e7SetupServerStarting => '服务器正在启动。请稍后再试。';

  @override
  String get e7SetupPasswordNeeded => '此服务器需要其 serve 密码。';

  @override
  String get e7SetupPasswordRejected =>
      '密码被拒绝。请从服务器输出中复制当前的“server password”那一行 — 除非设置了 OPENCODE_PASSWORD，否则每次重启都会变化。';

  @override
  String get e7SetupCredentialsRefused => '服务器拒绝了凭据。请检查用户名和密码。';

  @override
  String get e7SetupCodexUrl => '请输入 Codex 服务器 URL。';

  @override
  String get e7SetupCodexCompleteUrl => '请输入完整的 Codex 服务器 URL。';

  @override
  String get e7SetupCodexScheme => 'Codex 服务器 URL 必须使用 wss://，本地服务器可用 ws://。';

  @override
  String get e7SetupCodexCredentials => '不要在 Codex URL 中包含凭据。';

  @override
  String get e7SetupCodexQuery => '请从 Codex URL 中移除查询参数和片段。';

  @override
  String get e7SetupCodexPath => '请从 Codex 服务器 URL 中移除路径。';

  @override
  String get e7SetupCodexPlain => 'ws:// 仅适用于此手机上的服务器。其他电脑请使用 wss:// 地址。';

  @override
  String get e7SetupCodexDirectory => '请输入 Codex 项目的绝对路径。';

  @override
  String get e7SetupCodexToken => '请输入有效的 Codex 连接令牌。';

  @override
  String get e7SetupRefreshPackages => '正在刷新 Termux 软件包';

  @override
  String get e7SetupRepairPackages => '正在修复 Termux 软件包集';

  @override
  String get e7SetupInstallDependencies => '正在安装 Termux 依赖';

  @override
  String get e7SetupPrepareTermux => '正在准备 Termux';

  @override
  String get e7SetupInstallUbuntu => '正在安装 Ubuntu 环境';

  @override
  String get e7SetupRefreshModels => '正在刷新 OpenCode 模型目录';

  @override
  String get e7SetupStartLocalServer => '正在启动本地服务器';

  @override
  String get e7SetupOpenCodeReady => 'OpenCode 已就绪';

  @override
  String get e7SetupPrepareRuntime => '正在准备所选的 OpenCode 运行时';

  @override
  String get e7SetupSwitchLocal => '正在切换托管的本地服务器';

  @override
  String get e7SetupCheckRestart => '重启前正在检查本地服务器';

  @override
  String get e7SetupStoppingLocal => '正在停止本地服务器';

  @override
  String get e7SetupStoppedLocal => '本地服务器已停止';

  @override
  String get e7SetupUnknownSetup => '未知的设置状态';

  @override
  String get e7SetupUnexpectedStop => '本地 OpenCode 服务器意外停止';

  @override
  String get e7SetupSetupInterrupted => '设置意外停止；详情请查看实时输出';

  @override
  String get e7SetupRecoveryDisabled => '自动恢复已关闭';

  @override
  String get e7SetupRecoveryWasDisabled => '自动恢复曾被关闭';

  @override
  String get e7SetupPortBusy => '本地服务器端口仍被占用；未启动替代进程';

  @override
  String get e7SetupCredentialMismatch => '已保存的服务器凭据与此运行时不一致；返回前请先恢复其原始保存的凭据';

  @override
  String get e7SetupUbuntuUnavailable => '托管的 Ubuntu 环境不可用';

  @override
  String get e7SetupRuntimeUnavailable => '所选的 OpenCode 命令不可用';

  @override
  String get e7SetupIdentityMismatch => '被跟踪的进程不是托管的 OpenCode 服务器';

  @override
  String get e7SetupPasswordMissing => '缺少本地服务器密码';

  @override
  String get e7SetupVersionMissing => 'OpenCode 已安装，但未报告版本';

  @override
  String get e7SetupModelsRefreshFailed => 'OpenCode 已更新，但无法刷新其模型目录';

  @override
  String get e7SetupStartupExited => 'OpenCode 服务器在启动期间退出';

  @override
  String get e7SetupReadinessTimeout => 'OpenCode 服务器未在 30 秒内完成认证并就绪';

  @override
  String get e7SetupUnreadableData => '无法读取 OpenCode 2 的数据位置记录';

  @override
  String get e7SetupUnreadablePrevious => '无法读取之前的运行时记录';

  @override
  String get e7SetupReadManagerFailed => '无法读取设置管理器状态';

  @override
  String get e7SetupMissingManager => '找不到设置管理器';

  @override
  String get e7SetupRemoveInterruptedFailed => '无法移除被中断的应用自有 Ubuntu 安装';

  @override
  String get e7SetupCheckStorageFailed => '设置前无法检查可用存储空间';

  @override
  String get e7SetupReadStorageFailed => '设置前无法读取可用存储空间';

  @override
  String get e7SetupRepositoryFailed => '无法选择 Termux 官方软件包仓库';

  @override
  String get e7SetupRepositoryRefreshFailed =>
      '无法刷新 packages.termux.dev；请检查网络后重试';

  @override
  String get e7SetupRepairFailed => '无法修复被中断的 Termux 软件包事务';

  @override
  String get e7SetupUpgradeFailed => '无法完成 Termux 软件包的安全升级';

  @override
  String get e7SetupDependenciesFailed => '无法安装 Termux 依赖';

  @override
  String get e7SetupDependenciesUnusable => '软件包修复后 Termux 依赖仍无法使用';

  @override
  String get e7SetupUbuntuUnusable => '现有的 Ubuntu 容器无法使用；设置不会删除它';

  @override
  String get e7SetupExtractionFailed => 'Ubuntu Base 解压后未生成可用的容器';

  @override
  String get e7SetupLockFailed => '设置管理器无法获取其启动锁';

  @override
  String get e7SetupSetupGroupFailed => '设置管理器未在隔离的进程组中启动';

  @override
  String get e7SetupSwitchGroupFailed => '切换管理器未在隔离的进程组中启动';

  @override
  String get e7SetupServerGroupFailed => '托管服务器未在隔离的进程组中启动';

  @override
  String get e7SetupRecordIdentityFailed => '无法记录托管服务器进程的标识';

  @override
  String e7SetupConnectingProfile(String name) {
    return '正在连接 $name';
  }

  @override
  String e7SetupConnectingAttempt(int attempt) {
    return '正在重新连接（第 $attempt 次尝试）';
  }

  @override
  String get e7SetupOpeningWorkspace => '正在打开你保存的项目。';

  @override
  String get e7SetupWhatToCheck => '需要检查的内容';

  @override
  String get e7SetupUpdatePassword => '更新密码';

  @override
  String e7SetupLastSetupDetail(String detail) {
    return '上次设置的输出：$detail';
  }

  @override
  String e7SetupBridgeDetail(String detail) {
    return '桥接详情：$detail';
  }

  @override
  String e7SetupDiagnosticsUnavailable(String detail) {
    return '诊断信息不可用：$detail';
  }

  @override
  String e7SetupProbeHttp(String status) {
    return '该地址有响应，但不像 OpenCode 服务器（HTTP $status）。请检查 URL 是否指向 opencode serve。';
  }

  @override
  String e7SetupProbeError(String detail) {
    return '连接测试失败：$detail';
  }

  @override
  String e7SetupServerExit(String code) {
    return 'OpenCode 服务器已退出（代码 $code）';
  }

  @override
  String get e7SetupCheckTermux => '在此手机上';

  @override
  String get e7SetupCommandFailed => 'Termux 命令执行失败。';

  @override
  String get e7SetupUnexpectedBridge => 'Termux 返回了意外的桥接响应。';

  @override
  String get e7SetupSetupQueued => '设置已排队';

  @override
  String get e7SetupNoSetup => '尚未开始任何设置';

  @override
  String get e7SetupManagerMissingAfterLaunch => '启动后找不到设置管理器';

  @override
  String get e7SetupBootstrapCleared => '已清除 bootstrap 状态';

  @override
  String get e7SetupInstallingBeta => '正在安装 OpenCode 2';

  @override
  String get e7SetupAuthenticationFailed => '认证失败';

  @override
  String get e7SetupUnknownVersion => '未知版本';

  @override
  String get e7ModelUiClose => '关闭模型选择器';

  @override
  String get e7ModelUiClearSearch => 'Clear model search';

  @override
  String get e7ModelUiLoadFailed => '无法加载模型';

  @override
  String get e7ModelUiRetry => '重试';

  @override
  String get e7ModelUiBasicCatalog => '此服务器返回的是基础目录，没有能力和上下文的详细信息。';

  @override
  String get e7ModelUiEditFilters => 'Edit model filters';

  @override
  String get e7ModelUiFilterModels => 'Filter models';

  @override
  String get e7ModelUiFiltered => 'Filtered';

  @override
  String get e7ModelUiFilters => 'Filters';

  @override
  String get e7ModelUiRefresh => '刷新模型';

  @override
  String get e7ModelUiAnyCapability => '任意能力';

  @override
  String get e7ModelUiFastModes => '快速模式';

  @override
  String get e7ModelUiReasoning => '推理';

  @override
  String get e7ModelUiLargestContext => '上下文最大';

  @override
  String get e7ModelUiNoneAvailable => 'No models available';

  @override
  String get e7ModelUiFavoritesEmpty => '把常用模型放在这里';

  @override
  String get e7ModelUiRecentEmpty => '你的下一个选择会出现在这里';

  @override
  String get e7ModelUiNoMatches => '没有匹配的模型';

  @override
  String get e7ModelUiConfigureProvider =>
      'Configure a provider on the OpenCode server, then refresh.';

  @override
  String get e7ModelUiFavoritesHint => '点按模型旁的星标，即可在这里找到它。';

  @override
  String get e7ModelUiRecentHint => '你用过的模型会按最近使用顺序出现在这里。';

  @override
  String get e7ModelUiNoFastModes => '没有模型声明明确的快速或低强度模式。';

  @override
  String get e7ModelUiNoMatchesHint => '试试其他搜索词、服务商或能力筛选。';

  @override
  String get e7ModelUiClearFilters => '清除筛选';

  @override
  String get e7ModelUiBrowseAll => '浏览所有模型';

  @override
  String get e7ModelUiAgent => '智能体';

  @override
  String get e7ModelUiServerDefault => '服务器默认';

  @override
  String get e7ModelUiProvider => 'Provider';

  @override
  String get e7ModelUiAllProviders => '所有服务商';

  @override
  String get e7ModelUiCurrent => 'Current model';

  @override
  String get e7ModelUiUnavailable => 'Unavailable';

  @override
  String get e7ModelUiDeprecated => '已弃用';

  @override
  String get e7ModelUiPreview => '预览版';

  @override
  String get e7ModelUiFavoritesFailed => '无法保存收藏。请重试。';

  @override
  String e7ModelUiUseModelMode(String model, String agent) {
    return '使用 $model · $agent';
  }

  @override
  String get e7ModelUiUseSession => '用于此对话';

  @override
  String get e7ModelUiUseNewSessions => '用于新对话';

  @override
  String get e7ModelUiTools => 'Tools';

  @override
  String get e7ModelUiAttachments => 'Attachments';

  @override
  String get e7ModelUiDefault => '默认';

  @override
  String get e7ModelUiSelectionGone => '此选项已不可用。请刷新模型后重试。';

  @override
  String get e7VoiceUiLocalInput => 'Local voice input';

  @override
  String get e7VoiceUiChooseModel => 'Choose a multilingual Whisper INT8 model';

  @override
  String get e7VoiceUiPrivacyDownload => 'Audio never leaves this phone.';

  @override
  String get e7VoiceUiNoBuiltInMic =>
      'Android reports no built-in microphone. Voice input may still work with a wired or USB microphone.';

  @override
  String get e7VoiceUiLanguage => 'Transcription language';

  @override
  String get e7VoiceUiVerifying => 'Verifying downloaded model';

  @override
  String get e7VoiceUiCancelDownload => 'Cancel download';

  @override
  String get e7VoiceUiNotNow => 'Not now';

  @override
  String get e7VoiceUiUseModel => 'Use model';

  @override
  String get e7VoiceUiDownload => 'Download';

  @override
  String get e7VoiceUiKeep => 'Keep';

  @override
  String get e7VoiceUiDelete => 'Delete';

  @override
  String get e7VoiceUiDefaultBadge => 'default';

  @override
  String get e7VoiceUiOptionalBadge => 'optional';

  @override
  String get e7VoiceUiInstalledBadge => 'installed';

  @override
  String get e7VoiceUiNotInstalledBadge => 'not installed';

  @override
  String get e7VoiceUiSetupBusy =>
      'Unavailable while model setup is in progress';

  @override
  String get e7VoiceUiSelected => 'Selected';

  @override
  String get e7VoiceUiSelectHint => 'Double tap to select';

  @override
  String get e7VoiceUiDefault => 'Default';

  @override
  String get e7VoiceUiOptional => 'Optional';

  @override
  String get e7VoiceUiInstalled => 'Installed';

  @override
  String get e7VoiceUiRedownload => 'Re-download';

  @override
  String get e7VoiceUiOpenSettings => 'Open app settings';

  @override
  String get e7VoiceUiRetry => 'Try again';

  @override
  String get e7VoiceUiStartListening => 'Start listening';

  @override
  String get e7VoiceUiDraftReady => 'Transcript ready to review';

  @override
  String get e7VoiceUiNeedsAttention => 'Voice input needs attention';

  @override
  String get e7VoiceUiModelRequired => 'A local model is required';

  @override
  String e7ModelUiCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count models',
      one: '1 model',
    );
    return '$_temp0';
  }

  @override
  String e7ModelUiContext(String count) {
    return '$count 上下文';
  }

  @override
  String e7ModelUiOutput(String count) {
    return '$count output';
  }

  @override
  String e7ModelUiFavorite(String model) {
    return '收藏 $model';
  }

  @override
  String e7ModelUiUnfavorite(String model) {
    return '从收藏中移除 $model';
  }

  @override
  String e7ModelUiEffort(String variant, String effort) {
    return '$variant · $effort 强度';
  }

  @override
  String get e7ModelUiLoading => '正在加载模型目录';

  @override
  String e7ModelUiCost(String input, String output) {
    return '$input 输入 · $output 输出 /1M';
  }

  @override
  String e7VoiceUiDownloadPercent(int percent) {
    return 'Downloading voice model $percent percent';
  }

  @override
  String e7VoiceUiDownloadProgress(String received, String total) {
    return '$received of $total';
  }

  @override
  String e7VoiceUiSetupFailed(String error) {
    return 'Model setup failed: $error';
  }

  @override
  String e7VoiceUiDeletePack(String model) {
    return 'Delete $model speech model?';
  }

  @override
  String e7VoiceUiDeleteDetail(String size) {
    return 'This removes $size from app-private storage. You can download it again later.';
  }

  @override
  String e7VoiceUiDownloadSize(String size) {
    return '$size download';
  }

  @override
  String e7VoiceUiPackSemantics(
    String model,
    String size,
    String badges,
    String description,
  ) {
    return '$model, $size, $badges. $description';
  }

  @override
  String get e7VoiceUiLicenses => 'Voice licenses and provenance';

  @override
  String get e7VoiceUiNoticesFailed =>
      'Could not load voice licenses. Try again.';

  @override
  String get e7VoiceUiAuto => 'Auto detect';

  @override
  String get e7VoiceUiEnglish => 'English';

  @override
  String get e7VoiceUiArabic => 'Arabic';

  @override
  String get e7VoiceUiBalanced => 'Balanced';

  @override
  String get e7VoiceUiBalancedDetail =>
      'Recommended quality, storage, and speed tradeoff.';

  @override
  String get e7VoiceUiAccurate => 'High accuracy';

  @override
  String get e7VoiceUiAccurateDetail =>
      'Optional best quality; requires substantially more memory.';

  @override
  String get e7VoiceUiCompact => 'Compact fallback';

  @override
  String get e7VoiceUiCompactDetail =>
      'Fastest and smallest; reduced accuracy in difficult audio.';

  @override
  String get e7VoiceUiUnsupportedAbi =>
      'No bundled voice runtime supports this device ABI.';

  @override
  String get e7VoiceUiPermissionBlocked =>
      'Microphone access is blocked. Allow it in Android app settings.';

  @override
  String get e7VoiceUiPermissionRequired =>
      'Microphone permission is required for local voice input.';

  @override
  String get e7VoiceUiDeviceUnavailable =>
      'Local voice input is unavailable. Stop playback, check microphone settings, and try again.';

  @override
  String get e7VoiceUiInputUnavailable =>
      'Local voice input is unavailable on this platform.';

  @override
  String get e7VoiceUiNoAudio => 'No audio was captured.';

  @override
  String get e7VoiceUiInterrupted => 'Recording was interrupted.';

  @override
  String get e7VoiceUiMicrophoneError =>
      'The microphone reported an error. Check its settings and try again.';

  @override
  String get e7VoiceUiInputFailed => 'Voice input could not finish. Try again.';

  @override
  String get e7VoiceUiTechnicalDetails => 'Technical details';

  @override
  String get e7VoiceUiHttpsRequired =>
      'Voice models may only be downloaded over HTTPS.';

  @override
  String get e7VoiceUiTransportClosed => 'Voice download transport is closed.';

  @override
  String get e7VoiceUiInvalidRedirect =>
      'Voice model download returned an invalid redirect.';

  @override
  String get e7VoiceUiUnsafeRedirect =>
      'Voice model download redirected to a non-HTTPS URL.';

  @override
  String get e7VoiceUiNoResponse => 'Model server returned no response.';

  @override
  String get e7VoiceUiDownloadTimeout =>
      'The model download timed out. Check the connection and try again.';

  @override
  String get e7VoiceUiChecksumFailed =>
      'The downloaded model failed checksum verification. Re-download it.';

  @override
  String get e7VoiceUiVerificationFailed =>
      'The model failed final verification. Re-download it.';

  @override
  String get e7VoiceUiHttpFailed =>
      'The model server rejected the download. Try again.';

  @override
  String get e7VoiceUiLengthFailed =>
      'The model download has an unexpected size. Re-download it.';

  @override
  String get e7VoiceUiIncomplete =>
      'The model download is incomplete. Try again.';

  @override
  String get e7VoiceUiDownloadFailed =>
      'The voice model could not be downloaded. Try again.';

  @override
  String e7VoiceUiMemory(String model, int required, int available) {
    return '$model needs a phone with about $required MB of memory; this one has $available MB.';
  }

  @override
  String e7VoiceUiStorage(String model, String size) {
    return '$model needs $size free, including a safety margin.';
  }

  @override
  String get e7ModelUiProviderFallback => '某个提供商';

  @override
  String e7ModelUiProviderPair(String first, String last) {
    return '$first 和 $last';
  }

  @override
  String e7ModelUiProviderMany(String first, String last) {
    return '$first 和 $last';
  }

  @override
  String get e7ModelUiListSeparator => '、';

  @override
  String e7ModelUiUnloadedProviders(int count, String providers) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已登录 $providers，但服务器尚未加载它们，因此其模型无法回答。',
      one: '已登录 $providers，但服务器尚未加载它，因此其模型无法回答。',
    );
    return '$_temp0';
  }

  @override
  String get e7SharedOpenCodeUnreachableTryAgain => '无法访问 OpenCode。请重试。';

  @override
  String get approvalsUiMenu => '批准';

  @override
  String get approvalsUiTitle => 'Approvals for this conversation';

  @override
  String get approvalsUiAskDetail => 'Every permission request waits for you.';

  @override
  String get approvalsUiAutoTitle => 'Approve automatically while connected';

  @override
  String get approvalsUiAutoDetail =>
      'This phone answers each permission request with “Allow once” as it arrives. Nothing is saved as always allowed.';

  @override
  String get approvalsUiInheritTitle => 'Subagents inherit this';

  @override
  String get approvalsUiInheritDetail =>
      'Subagent conversations started by this one follow the same choice unless they have their own.';

  @override
  String get approvalsUiInheritUnavailable =>
      'Available once automatic approval is on.';

  @override
  String get approvalsUiInheritedFrom => '沿用自上级对话';

  @override
  String get approvalsUiInheritedDetail =>
      'This conversation follows its parent’s approvals. Override it to choose for this conversation only.';

  @override
  String get approvalsUiOverride => 'Override for this conversation';

  @override
  String get approvalsUiFollowParent => '重新沿用上级设置';

  @override
  String get approvalsUiIndicatorOn => '正在自动批准';

  @override
  String approvalsUiAutoApproved(String action) {
    return '已自动批准 · $action';
  }

  @override
  String get approvalsUiFailedDetail => '自动批准失败。请查看此请求。';

  @override
  String approvalsUiSaveFailed(String error) {
    return '无法保存审批设置：$error';
  }

  @override
  String get approvalsUiOpenSettings => 'Open approval settings';

  @override
  String get approvalsUiIndicatorPaused => '自动批准已暂停';

  @override
  String approvalsUiRecordTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count requests approved automatically on this server',
      one: '1 request approved automatically on this server',
      zero: 'Nothing approved automatically on this server yet',
    );
    return '$_temp0';
  }

  @override
  String get handoffUiComputerTitle => 'Continue on computer';

  @override
  String handoffUiComputerIntro(String binary) {
    return 'Run this in a terminal on the computer that runs this server. It opens the same conversation in the $binary interface. Nothing is sent until you type.';
  }

  @override
  String get handoffUiComputerDirectoryNote =>
      'Conversations belong to a project folder, so the command changes into this conversation’s folder first.';

  @override
  String handoffUiComputerVerify(String verified, String binary) {
    return 'Verified against $verified. If your installed version differs, check $binary --help for the --session flag.';
  }

  @override
  String get handoffUiUnavailableDirectory =>
      'The server did not report a project folder for this conversation, so there is no folder to open it in. Reload the conversation and try again.';

  @override
  String get handoffUiUnavailableWorkspace =>
      'This conversation runs inside a cloud environment. Its folder belongs to the environment’s host, so a plain terminal command cannot open it. Export and import the conversation instead.';

  @override
  String get handoffUiUnavailableReference =>
      'This conversation’s reference cannot be placed in a command safely.';

  @override
  String get handoffUiPhoneTitle => 'Open on another phone';

  @override
  String get handoffUiPhoneIntro =>
      'Scan with OpenCode Mobile on the other phone. The code holds only the server and conversation IDs.';

  @override
  String get handoffUiPhoneQrLabel =>
      'QR code that opens this conversation on another phone';

  @override
  String get handoffUiPhoneLinkLabel => 'Link';

  @override
  String get handoffUiPhoneCopyLink => 'Copy link';

  @override
  String get handoffUiPhoneUnavailable =>
      'A link cannot be built for this conversation. Reload the conversation and try again.';

  @override
  String get handoffUiLinkServerMissing =>
      'The conversation is on a server this phone has not saved. Add it here, then scan the code again.';

  @override
  String get handoffUiLinkDismiss => 'Dismiss';

  @override
  String get handoffUiLinkWaiting =>
      'Opening the conversation once the server connects…';

  @override
  String get handoffUiLinkReentry =>
      'Enter this server’s password again, then scan the code again.';

  @override
  String get handoffUiLinkConnectionFailed =>
      'Could not connect to the saved server. Check it under Servers, then scan the code again.';

  @override
  String get teamUiAccessControls => 'Decisions and controls';

  @override
  String get teamUiAccessReadOnly => 'Read-only';

  @override
  String get teamUiAddAddressHint => 'http://100.x.x.x:8373';

  @override
  String get teamUiAddAddressLabel => 'Address';

  @override
  String get teamUiAddManually => '手动添加';

  @override
  String get teamUiAddSubmit => 'Test and turn on';

  @override
  String get teamUiAddTesting => 'Checking the address…';

  @override
  String get teamUiAddTitle => 'Add AI Team host';

  @override
  String get teamUiAddressRequired => 'Enter the host address.';

  @override
  String get teamUiChange => '更改';

  @override
  String get teamUiDisclaimerComputer =>
      'Runs as fast as your computer; keep it awake';

  @override
  String get teamUiDisclaimerPhone =>
      'Android may stop it when the screen is off; slower than a computer';

  @override
  String get teamUiEditorBody => '如果这台电脑运行 Gas City，应用可以自动发现它。';

  @override
  String teamUiEditorConfigured(String url) {
    return 'AI Team 主机：$url';
  }

  @override
  String get teamUiEditorTitle => 'AI Team（可选）';

  @override
  String get teamUiHostGuideIntro =>
      'Everything stays on your Tailscale network; nothing is published to the internet.';

  @override
  String get teamUiHostGuideStep1 =>
      'Install Gas City\'s three tools, gc, bd and dolt, on your PATH; the full guide has each download with its checksum. Then check that all three are found:';

  @override
  String get teamUiHostGuideStep2 =>
      'Save the team file from the full guide in a folder next to your project. Then set up the team and add your project, folder first:';

  @override
  String get teamUiHostGuideStep3 =>
      'Start the team and check that it answers:';

  @override
  String get teamUiHostGuideStep4 =>
      'Download the front that lets this phone in over Tailscale, check it and start it, with your own Tailscale login after --allow. Then add it here: the computer\'s Tailscale address with the port in the command, and the team\'s name.';

  @override
  String get teamUiHostGuideTitle => 'Run an AI team on your computer';

  @override
  String get teamUiHostModeComputer => 'Computer';

  @override
  String get teamUiHostModePhone => 'This phone';

  @override
  String get teamUiHow => 'How';

  @override
  String get teamUiKeep => 'Keep';

  @override
  String get teamUiLabelAccess => 'Access';

  @override
  String get teamUiLabelAddress => 'Address';

  @override
  String get teamUiLabelCity => 'City';

  @override
  String get teamUiLabelHost => 'Host';

  @override
  String get teamUiLabelProvider => 'Provider';

  @override
  String get teamUiLabelVersion => 'Version';

  @override
  String get teamUiLearnHow => '了解方法';

  @override
  String get teamUiNoServer => 'Connect to a server to use plugins.';

  @override
  String get teamUiPluginsTitle => 'Plugins';

  @override
  String get teamUiReadOnlyBody =>
      'You can watch this team from the phone. Answering and steering need the front on the computer.';

  @override
  String get teamUiReasonCityNotRunning => 'team host starting';

  @override
  String get teamUiReasonNotGasCity => 'no AI team found';

  @override
  String get teamUiReasonPlainHttp => 'address is not on Tailscale';

  @override
  String get teamUiReasonReadFailed => 'last read failed';

  @override
  String get teamUiReasonUnreachable => 'host unreachable';

  @override
  String get teamUiRefresh => 'Refresh';

  @override
  String get teamUiRowConnecting => 'On · connecting…';

  @override
  String get teamUiRowNotAvailable => 'Not available on this server';

  @override
  String teamUiRowNotAvailableReason(String reason) {
    return 'Not available on this server · $reason';
  }

  @override
  String get teamUiRowOff => 'Off';

  @override
  String teamUiRowOn(String server) {
    return 'On · $server';
  }

  @override
  String teamUiRowOnReadOnly(String server) {
    return 'On · $server · view only';
  }

  @override
  String get teamUiRowReconnecting => 'On · reconnecting…';

  @override
  String get teamUiRowTitle => 'AI Team · Gas City';

  @override
  String teamUiRowUnreachable(String minutes) {
    return 'On · host unreachable since $minutes min';
  }

  @override
  String get teamUiTailnetRequired =>
      'AI Team works over your Tailscale network or on this device. Use the computer\'s Tailscale address (100.x.x.x or name.ts.net).';

  @override
  String get teamUiTechnicalDetails => 'Technical details';

  @override
  String get teamUiTechnicalLastAnswer => 'Last answer from the host';

  @override
  String get teamUiTermAgent => 'Agent · polecat';

  @override
  String get teamUiTermProject => 'Project · rig';

  @override
  String get teamUiTermRun => 'Run · convoy';

  @override
  String get teamUiTermTeam => 'Team · city';

  @override
  String get teamUiTermWork => 'Work · bead';

  @override
  String get teamUiTermsHeading => 'Terms';

  @override
  String get teamUiTurnOffBody =>
      'Removes its card, attention items and cached team data from this phone. Nothing changes on the host.';

  @override
  String get teamUiTurnOffConfirm => 'Turn off AI Team';

  @override
  String teamUiTurnOffTitle(String server) {
    return 'Turn off AI Team for $server?';
  }

  @override
  String get teamUiVerdictCityNotRunning =>
      'The team host is starting. Try again in a moment.';

  @override
  String get teamUiVerdictNotGasCity =>
      'This server doesn\'t run an AI team yet. Set one up on the computer — it takes a few minutes.';

  @override
  String get teamUiVerdictUnreachable =>
      'No answer from this address. Check it, and that the computer is awake and on your Tailscale network.';

  @override
  String get teamUiVersionUnknown => 'unknown';

  @override
  String teamUiCardAgentsSummary(
    int total,
    int working,
    int waiting,
    int idle,
    int stopped,
  ) {
    return '$total agents: $working working, $waiting waiting, $idle idle, $stopped stopped';
  }

  @override
  String get teamUiCardEmptyHint => 'Start tasks on the computer for now.';

  @override
  String get teamUiCardEmptyTitle => 'No recent tasks';

  @override
  String get teamUiCardErrorCityNotRunning =>
      'The team host is starting. Try again in a moment.';

  @override
  String get teamUiCardErrorNotGasCity =>
      'This server doesn’t run an AI team yet. Set one up on the computer — it takes a few minutes.';

  @override
  String get teamUiCardErrorPlainHttp =>
      'AI Team works over your Tailscale network or on this device. Use tailscale serve on the computer, then try again.';

  @override
  String get teamUiCardErrorUnreachable =>
      'The team host can’t be reached. AI Team works over your Tailscale network or on this device.';

  @override
  String get teamUiStateUnreachableTitle => 'Can’t reach the team host';

  @override
  String get teamUiStateNotGasCityTitle => 'No AI team on this server';

  @override
  String get teamUiStateStartingTitle => 'The team host is starting';

  @override
  String get teamUiStatePlainHttpTitle => 'AI Team can’t use this address';

  @override
  String get teamUiStateNotAnsweringTitle => 'The team isn’t answering';

  @override
  String get teamUiCardLoading => 'Connecting to the team host…';

  @override
  String teamUiCardRefreshFailed(String time) {
    return 'Last refresh failed · showing data from $time';
  }

  @override
  String get teamUiCardRetry => 'Try again';

  @override
  String get teamUiCardRunStateBlocked => 'Blocked';

  @override
  String get teamUiCardRunStateCancelled => 'Cancelled';

  @override
  String get teamUiCardRunStateCompleted => 'Done';

  @override
  String get teamUiCardRunStateFailed => 'Failed';

  @override
  String get teamUiCardRunStatePlanning => 'Planning';

  @override
  String get teamUiCardRunStateUnknown => 'Unknown';

  @override
  String get teamUiCardRunStateWaiting => 'Waiting for a worker';

  @override
  String get teamUiCardRunStateWorking => 'Working';

  @override
  String get teamUiCardRunStateWaitingMerge => 'Reviewing';

  @override
  String get teamUiCardRunStateMerged => 'Done · merged';

  @override
  String teamUiCardStale(String time) {
    return 'Showing data from $time · host unreachable';
  }

  @override
  String get teamUiHomeAgentNoWork => 'No current work';

  @override
  String get teamUiHomeAgentStateBlocked => 'Blocked';

  @override
  String get teamUiHomeAgentStateCrashed => 'Crashed';

  @override
  String get teamUiHomeAgentStateIdle => 'Idle';

  @override
  String get teamUiHomeAgentStateStopped => 'Stopped';

  @override
  String get teamUiHomeAgentStateUnknown => 'Unknown';

  @override
  String get teamUiHomeAgentStateWaiting => 'Waiting for you';

  @override
  String get teamUiHomeAgentStateWorking => 'Working';

  @override
  String get teamUiHomeFilterActive => 'Active';

  @override
  String get teamUiHomeFilterAll => 'All';

  @override
  String get teamUiHomeFilterBlocked => 'Blocked';

  @override
  String get teamUiHomeFilterCompleted => 'Done';

  @override
  String get teamUiHomeGateAnswerOnComputer =>
      'Answer this on the computer. The phone can only watch for now.';

  @override
  String get teamUiHomeGateAnswerOnPhone =>
      'Answer this in the host on this phone. The app can only watch for now.';

  @override
  String get teamUiHomeGateKindChoice => 'Decision';

  @override
  String get teamUiHomeGateKindConfirmation => 'Approval';

  @override
  String get teamUiHomeGateKindFreeText => 'Question';

  @override
  String get teamUiHomeGateKindGateBead => 'Gate';

  @override
  String get teamUiHomeGateKindReviewReady => 'Review ready';

  @override
  String get teamUiHomeGateKindRunFailed => 'Run failed';

  @override
  String get teamUiHomeGateKindUnknown => 'Needs you';

  @override
  String teamUiHomeGateLinkAgent(String name) {
    return 'Agent $name';
  }

  @override
  String teamUiHomeGateLinkRun(String title) {
    return 'Task $title';
  }

  @override
  String teamUiHomeGateLinkWork(String title) {
    return 'Work $title';
  }

  @override
  String get teamUiHomeGateOptions => 'Options';

  @override
  String get teamUiHomeHostRawHeading => 'Raw values';

  @override
  String get teamUiHomeRunNeedsYou => 'Needs you';

  @override
  String teamUiHomeRunProgress(int done, int total) {
    return '$done of $total done';
  }

  @override
  String get teamUiHomeRunsEmptyFiltered => 'No tasks match.';

  @override
  String get teamUiHomeRunsEmptyHint =>
      'Try another filter or clear the search.';

  @override
  String get teamUiHomeSearchHint => 'Search tasks';

  @override
  String get teamUiHomeTitle => 'AI Team';

  @override
  String get teamUiRunBack => 'Back';

  @override
  String teamUiRunBlockedByDeps(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'waiting on $count other steps',
      one: 'waiting on one other step',
    );
    return '$_temp0';
  }

  @override
  String teamUiRunElapsedDays(int count) {
    return '$count d';
  }

  @override
  String teamUiRunElapsedHours(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String teamUiRunElapsedMinutes(int count) {
    return '$count min';
  }

  @override
  String teamUiRunSinceHandoff(String elapsed) {
    return '$elapsed since hand-off';
  }

  @override
  String get teamUiRunLabelFormula => 'Formula';

  @override
  String get teamUiRunLabelId => 'Run id';

  @override
  String get teamUiRunLabelKind => 'Kind';

  @override
  String get teamUiRunLabelLastError => 'Last error';

  @override
  String get teamUiRunLabelProject => 'Project';

  @override
  String get teamUiRunLabelRawState => 'Provider status';

  @override
  String get teamUiRunLabelStarted => 'Started';

  @override
  String get teamUiRunLabelTrackedWork => 'Tracked work';

  @override
  String get teamUiRunLabelUpdated => 'Updated';

  @override
  String get teamUiRunMissingHint =>
      'It may have been closed or removed. Refresh to check again.';

  @override
  String get teamUiRunMissingTitle => 'This task is no longer on the host';

  @override
  String get teamUiRunTermBatch => 'Task · convoy';

  @override
  String get teamUiRunTermFormula => 'Task · formula';

  @override
  String get teamUiRunTermUnknown => 'Task';

  @override
  String teamUiRunTimelineAgentStopped(String name) {
    return '$name stopped';
  }

  @override
  String teamUiRunTimelineAgentWoke(String name) {
    return '$name started';
  }

  @override
  String teamUiRunTimelineGateOpened(String title) {
    return 'Needs you: $title';
  }

  @override
  String teamUiRunTimelineGateResolved(String title) {
    return 'Answered: $title';
  }

  @override
  String teamUiRunTimelineRunChanged(String state) {
    return 'Run is now $state';
  }

  @override
  String teamUiRunTimelineWorkClosed(String title) {
    return '$title closed';
  }

  @override
  String teamUiRunTimelineWorkCreated(String title) {
    return '$title added';
  }

  @override
  String teamUiRunTimelineWorkUpdated(String title) {
    return '$title updated';
  }

  @override
  String teamUiAgentContextSemantics(int percent) {
    return 'Context $percent% used';
  }

  @override
  String teamUiAgentContextShort(int percent) {
    return 'ctx $percent%';
  }

  @override
  String get teamUiAgentLabelBranch => 'Branch';

  @override
  String get teamUiAgentLabelHarness => 'Harness';

  @override
  String get teamUiAgentLabelModel => 'Model';

  @override
  String get teamUiAgentLabelPack => 'Pack';

  @override
  String get teamUiAgentLabelPool => 'Pool';

  @override
  String get teamUiAgentLabelSessionAge => 'Session age';

  @override
  String get teamUiAgentLabelSessionId => 'Session';

  @override
  String get teamUiAgentLabelSessionName => 'Session name';

  @override
  String get teamUiAgentLabelWorkDir => 'Working directory';

  @override
  String get teamUiAgentMissingHint =>
      'It may have been recycled. Refresh to check.';

  @override
  String get teamUiAgentMissingTitle => 'This agent is no longer on the host';

  @override
  String get teamUiAgentNeedsYou => 'Needs you';

  @override
  String get teamUiAgentOutputConnecting => 'Connecting to the session…';

  @override
  String get teamUiAgentOutputCopy => 'Copy output';

  @override
  String get teamUiAgentOutputEnded =>
      'Session ended · output no longer on the host';

  @override
  String get teamUiAgentOutputJump => 'Jump to latest';

  @override
  String get teamUiAgentOutputLive => 'Live';

  @override
  String get teamUiAgentOutputTitle => 'Live output';

  @override
  String get teamUiAgentOutputUnavailable =>
      'Live output is not available for this agent';

  @override
  String get teamUiAgentRecyclingSoon => 'Recycling soon · context nearly full';

  @override
  String teamUiAgentSessionAge(String age) {
    return 'Session $age';
  }

  @override
  String teamUiAgentTermSession(String id) {
    return 'Agent · session $id';
  }

  @override
  String get teamUiAgentValueUnknown => 'Not reported';

  @override
  String get teamUiWorkLabelAssignee => 'Assignee';

  @override
  String get teamUiWorkLabelClosedReason => 'Close reason';

  @override
  String get teamUiWorkLabelDependsOn => 'Depends on (ids)';

  @override
  String get teamUiWorkLabelId => 'Work id';

  @override
  String get teamUiWorkLabelLabels => 'Labels';

  @override
  String get teamUiWorkLabelParent => 'Parent';

  @override
  String get teamUiWorkLabelProject => 'Project';

  @override
  String get teamUiWorkLabelRawState => 'Provider status';

  @override
  String get teamUiWorkLabelRun => 'Run id';

  @override
  String get teamUiWorkLabelSession => 'Session id';

  @override
  String get teamUiWorkLabelSessionName => 'Session name';

  @override
  String get teamUiWorkLabelType => 'Type';

  @override
  String get teamUiWorkOwnerNone => 'Unassigned';

  @override
  String get teamUiWorkSheetBlocking => 'Blocks';

  @override
  String get teamUiWorkSheetBranch => 'Branch';

  @override
  String get teamUiWorkSheetClosed => 'Closed';

  @override
  String get teamUiWorkSheetCreated => 'Created';

  @override
  String get teamUiWorkSheetDependencies => 'Depends on';

  @override
  String get teamUiWorkSheetDescription => 'Description';

  @override
  String get teamUiWorkSheetMissing =>
      'This work item is no longer on the host.';

  @override
  String get teamUiWorkSheetNoTimestamps => 'The host sent no timestamps.';

  @override
  String get teamUiWorkSheetOpenSession => 'Open session';

  @override
  String get teamUiWorkSheetOutput => 'Output';

  @override
  String teamUiWorkSheetStamp(String date, String clock, String age) {
    return '$date · $clock ($age)';
  }

  @override
  String get teamUiWorkSheetTarget => 'Merge target';

  @override
  String get teamUiWorkSheetTimestamps => 'Timestamps';

  @override
  String get teamUiWorkSheetUpdated => 'Updated';

  @override
  String get teamUiWorkSheetValidation => 'Validation';

  @override
  String get teamUiWorkSheetValidationFailed => 'Failed';

  @override
  String get teamUiWorkSheetValidationPassed => 'Passed';

  @override
  String get teamUiWorkSheetValidationUnknown => 'Result recorded';

  @override
  String get teamUiWorkSheetWorktree => 'Worktree';

  @override
  String get teamUiWorkStateBlocked => 'Blocked';

  @override
  String get teamUiWorkStateCancelled => 'Cancelled';

  @override
  String get teamUiWorkStateCompleted => 'Done';

  @override
  String get teamUiWorkStateFailed => 'Failed';

  @override
  String get teamUiWorkStateNeedsInput => 'Needs input';

  @override
  String get teamUiWorkStateQueued => 'Queued';

  @override
  String get teamUiWorkStateReady => 'Ready';

  @override
  String get teamUiWorkStateReview => 'Review';

  @override
  String get teamUiWorkStateUnknown => 'Unknown';

  @override
  String get teamUiWorkStateWaiting => 'Waiting';

  @override
  String get teamUiWorkStateWorking => 'Working';

  @override
  String teamUiUsageCostEstimated(String cost) {
    return '$cost est.';
  }

  @override
  String teamUiUsageTokens(String count) {
    return '$count tokens';
  }

  @override
  String get teamUiGateAnswerOnHost =>
      'Answer this on the host. The phone can only watch for now.';

  @override
  String get teamUiGateAnswerOnHostPhone =>
      'Answer this in the host on this phone. The app can only watch for now.';

  @override
  String get teamUiGateCloseOnHost =>
      'Close this on the host. The phone can only watch for now.';

  @override
  String get teamUiGateCloseOnHostPhone =>
      'Close this in the host on this phone. The app can only watch for now.';

  @override
  String get teamUiGateDestructive => 'Destructive';

  @override
  String get teamUiGateFailureActionAgent =>
      'Restart the agent on the host; it picks the work item up again.';

  @override
  String get teamUiGateFailureActionAuthentication =>
      'Sign in again on the host (provider key or token), then retry the run.';

  @override
  String get teamUiGateFailureActionContext =>
      'Restart the agent with a fresh context on the host; it resumes from the work item.';

  @override
  String get teamUiGateFailureActionDependency =>
      'Install or update the missing dependency on the host, then retry the run.';

  @override
  String get teamUiGateFailureActionExecution =>
      'Read the step log on the host, fix the command, then retry the run.';

  @override
  String get teamUiGateFailureActionInfrastructure =>
      'Check the host and its services, then retry the run.';

  @override
  String get teamUiGateFailureActionMergeConflict =>
      'Resolve the conflict in the worktree on the host, then retry the run.';

  @override
  String get teamUiGateFailureActionTest =>
      'Fix the failing tests on the host, then retry the run.';

  @override
  String get teamUiGateFailureActionUnknown =>
      'Read the error on the host and decide there; the phone cannot act on it yet.';

  @override
  String get teamUiGateFailureAffectedNone => 'No open work item of this run.';

  @override
  String get teamUiGateFailureAffectedWork => 'Affected work';

  @override
  String get teamUiGateFailureClassAgent => 'Agent';

  @override
  String get teamUiGateFailureClassAuthentication => 'Authentication';

  @override
  String get teamUiGateFailureClassContext => 'Context';

  @override
  String get teamUiGateFailureClassDependency => 'Dependency';

  @override
  String get teamUiGateFailureClassExecution => 'Execution';

  @override
  String get teamUiGateFailureClassInfrastructure => 'Infrastructure';

  @override
  String get teamUiGateFailureClassMergeConflict => 'Merge conflict';

  @override
  String get teamUiGateFailureClassTest => 'Test';

  @override
  String get teamUiGateFailureClassUnknown => 'Unknown';

  @override
  String get teamUiGateFailureClassification => 'What went wrong';

  @override
  String get teamUiGateFailureErrorNone => 'The host sent no error text.';

  @override
  String get teamUiGateGone =>
      'This is no longer waiting on you; it was answered or closed on the host.';

  @override
  String get teamUiGateKindAgentBlocked => 'Agent blocked';

  @override
  String get teamUiGateLabelKind => 'Provider kind';

  @override
  String get teamUiGateLabelRequestId => 'Request id';

  @override
  String get teamUiGateLabelRunId => 'Run id';

  @override
  String get teamUiGateLabelSessionId => 'Session id';

  @override
  String get teamUiGateLabelWorkId => 'Work id';

  @override
  String get teamUiGateNoDescription => 'The host sent no description.';

  @override
  String get teamUiGateReviewOnHost =>
      'Review this on the host. The phone can only watch for now.';

  @override
  String get teamUiGateReviewOnHostPhone =>
      'Review this in the host on this phone. The app can only watch for now.';

  @override
  String get teamUiGateUnblocks => 'Unblocks';

  @override
  String get teamUiGateUnblocksNone => 'Nothing waits on this yet.';

  @override
  String get teamUiHostKindDesktop => 'Desktop computer';

  @override
  String get teamUiHostKindDisclaimerLaptop =>
      'Sleep and lid-close pause the team; runs resume on wake';

  @override
  String get teamUiHostKindDisclaimerWsl =>
      'Sleep and lid-close pause the team; runs resume on wake. WSL also stops when its last terminal closes.';

  @override
  String get teamUiHostKindHint =>
      'Only changes the reminder shown with the team.';

  @override
  String get teamUiHostKindLabel => 'Kind of computer';

  @override
  String get teamUiHostKindLaptop => 'Laptop';

  @override
  String get teamUiHostKindWsl => 'Windows (WSL)';

  @override
  String get teamUiReceiptSent => 'Sent · waiting for the host to confirm';

  @override
  String get teamUiReceiptAnswered => 'Answered';

  @override
  String get teamUiReceiptUnconfirmed =>
      'Sent, unconfirmed — check on the host before re-sending';

  @override
  String get teamUiGateAnswerSend => 'Send';

  @override
  String get teamUiGateAnswerApprove => 'Approve';

  @override
  String get teamUiGateAnswerDeny => 'Deny';

  @override
  String get teamUiGateAnswerMarkDone => 'Mark done';

  @override
  String get teamUiGateAnswerHint => 'Type your answer';

  @override
  String teamUiGateAnswerRunRetry(String work, String agent) {
    return 'Send $work to $agent again';
  }

  @override
  String get teamUiGateAnswerRunLogs => 'Watch the agent';

  @override
  String get teamUiGateAnswerRunCancel => 'Stop work';

  @override
  String teamUiGateAnswerRejected(String message) {
    return 'Not accepted: $message';
  }

  @override
  String get teamUiGateAnswerRejectedNoMessage =>
      'The host did not accept this answer.';

  @override
  String get teamUiGateAnswerConfirmApproveTitle =>
      'Approve this destructive action?';

  @override
  String get teamUiGateAnswerConfirmApproveBody =>
      'The host marks this as destructive. It cannot be undone from the phone.';

  @override
  String get teamUiGateAnswerConfirmCancelRunTitle => 'Stop this work?';

  @override
  String get teamUiGateAnswerConfirmCancelRunBody =>
      'The run stops and its open work stays as it is.';

  @override
  String get teamUiControlMessage => 'Message';

  @override
  String get teamUiControlNudge => 'Nudge';

  @override
  String get teamUiControlPause => 'Pause';

  @override
  String get teamUiControlResume => 'Resume';

  @override
  String get teamUiControlStop => 'Stop';

  @override
  String get teamUiControlRestart => 'Restart';

  @override
  String get teamUiControlReassign => 'Reassign work…';

  @override
  String get teamUiControlCreateWork => 'Task sent to an agent';

  @override
  String teamUiControlStopConfirmTitle(String agent) {
    return 'Stop $agent?';
  }

  @override
  String get teamUiControlStopConfirmBody =>
      'Its session ends now. Its work stays where it is; the host can wake it again later.';

  @override
  String teamUiControlRestartConfirmTitle(String agent) {
    return 'Restart $agent?';
  }

  @override
  String get teamUiControlRestartConfirmBody =>
      'Its session stops and starts again. The agent loses what it had in context and picks its work up from the host.';

  @override
  String get teamUiControlKeep => 'Keep going';

  @override
  String get teamUiControlReceiptSent => 'Sent';

  @override
  String get teamUiControlReceiptConfirmed => 'Confirmed';

  @override
  String get teamUiControlReceiptUnconfirmed => 'Unconfirmed';

  @override
  String get teamUiControlReceiptRefused => 'Refused';

  @override
  String teamUiControlReceiptLine(String control, String state) {
    return '$control · $state';
  }

  @override
  String get teamUiControlCancelRun => 'Stop run';

  @override
  String get teamUiStartRunFab => 'Give the team a task';

  @override
  String get teamUiStartRunTitle => 'Give the team a task';

  @override
  String get teamUiStartRunObjectiveLabel => 'Objective';

  @override
  String get teamUiStartRunObjectiveHint =>
      'What should the team achieve? One outcome, in your words.';

  @override
  String get teamUiStartRunObjectiveEmpty => 'Write an objective first.';

  @override
  String get teamUiStartRunProjectLabel => 'Project';

  @override
  String get teamUiStartRunProjectAny => 'Let the planner choose';

  @override
  String get teamUiStartRunSupervisionLabel => 'Supervision';

  @override
  String get teamUiStartRunSupervisionHigh => 'High';

  @override
  String get teamUiStartRunSupervisionHighHint =>
      'The team asks before every decision, before tests that change state and before any merge.';

  @override
  String get teamUiStartRunSupervisionBalanced => 'Balanced';

  @override
  String get teamUiStartRunSupervisionBalancedHint =>
      'The team decides routine matters itself and asks before merges, on failures and on design choices.';

  @override
  String get teamUiStartRunSupervisionAutonomous => 'Autonomous';

  @override
  String get teamUiStartRunSupervisionAutonomousHint =>
      'The team works to completion inside the host\'s boundaries and asks only when it cannot continue.';

  @override
  String get teamUiStartRunPlannerLabel => 'Planner';

  @override
  String get teamUiStartRunPlannerMayor => 'Mayor';

  @override
  String teamUiStartRunSend(String planner) {
    return 'Send to the $planner';
  }

  @override
  String get teamUiStartRunHostGuide => 'Host guide';

  @override
  String get teamUiStartRunWaking => 'Waking the planner…';

  @override
  String get teamUiStartRunDirectIntro =>
      'The planner is off on this host. Give one task straight to the project\'s agent.';

  @override
  String get teamUiStartRunDirectTitle => 'Task';

  @override
  String get teamUiStartRunDirectTitleHint =>
      'One line: what should the agent do?';

  @override
  String get teamUiStartRunDirectTitleRequired => 'Write a task first.';

  @override
  String get teamUiStartRunDirectDetails => 'Details (optional)';

  @override
  String get teamUiStartRunDirectSend => 'Send to an agent';

  @override
  String teamUiStartRunRefused(String reason) {
    return 'The host refused the objective: $reason';
  }

  @override
  String get teamUiMergeTitleReady => 'Ready to merge';

  @override
  String get teamUiMergeTitleNotReady => 'Not ready to merge';

  @override
  String get teamUiMergeTitleMerged => 'Merged';

  @override
  String teamUiMergeRequest(String id) {
    return 'merge request $id';
  }

  @override
  String get teamUiMergeLineWork => 'Work items';

  @override
  String get teamUiMergeLineTests => 'Tests';

  @override
  String get teamUiMergeLineBuild => 'Build';

  @override
  String get teamUiMergeLineReview => 'Review';

  @override
  String get teamUiMergeLineConflicts => 'No conflicts';

  @override
  String get teamUiMergeLineAcceptance => 'Acceptance criteria';

  @override
  String teamUiMergeFiles(int files, int additions, int deletions) {
    String _temp0 = intl.Intl.pluralLogic(
      files,
      locale: localeName,
      other: '$files files · +$additions / −$deletions',
      one: '1 file · +$additions / −$deletions',
      zero: 'No file changes',
    );
    return '$_temp0';
  }

  @override
  String get teamUiMergeReviewChanges => 'Review changes';

  @override
  String get teamUiMergeApprove => 'Approve request';

  @override
  String teamUiMergeApprovedBy(String login) {
    return 'Approved by $login';
  }

  @override
  String get teamUiMergeMerge => 'Merge';

  @override
  String teamUiMergeConfirmTitle(String branch) {
    return 'Merge into $branch?';
  }

  @override
  String get teamUiMergeConfirmMessage =>
      'This cannot be undone from the phone';

  @override
  String teamUiMergeConfirmAction(String branch) {
    return 'Merge into $branch';
  }

  @override
  String teamUiMergeDisabledReason(String line, String detail) {
    return 'Merge is off: $line — $detail';
  }

  @override
  String teamUiMergeBoundary(String text) {
    return 'Host boundary: $text';
  }

  @override
  String teamUiMergeRefused(String text) {
    return 'The host refused: $text';
  }

  @override
  String teamUiMergeMerged(String branch, String commit) {
    return 'Merged into $branch · $commit';
  }

  @override
  String teamUiMergeAlready(String branch) {
    return 'Already on $branch';
  }

  @override
  String teamUiMergeUnavailable(String reason) {
    return 'Merge readiness unavailable: $reason';
  }

  @override
  String get teamUiMergeNoRoles => 'The host has no merge roles for this run';

  @override
  String get teamUiMergeLoading => 'Checking merge readiness…';

  @override
  String get teamUiMergePending => 'running on the host';

  @override
  String get teamUiMergeChangesTitle => 'Changes';

  @override
  String get teamUiMergeChangesEmpty => 'No file changes reported by the host';

  @override
  String get teamUiMergeChangesWork => 'Work items';

  @override
  String get teamUiMergeSent => 'Sent · waiting for the host to confirm';

  @override
  String get teamUiMergeApproveConfirmed => 'Approval recorded';

  @override
  String teamUiPolicySupervision(String level) {
    return 'Supervision · $level';
  }

  @override
  String get teamUiPolicyBoundariesLabel => 'Boundaries';

  @override
  String get teamUiPolicyBoundariesNone => 'No boundaries set on the host';

  @override
  String get teamUiPolicyFromHost => 'Set on the host · read-only here';

  @override
  String teamUiPolicyRig(String rig) {
    return 'for $rig';
  }

  @override
  String teamUiPolicySemantics(String level, String boundaries) {
    return 'Supervision $level. Boundaries: $boundaries';
  }

  @override
  String get teamUiRunLabelRawTitle => 'Provider title';

  @override
  String get termuxStorageTitle => 'Storage on this phone';

  @override
  String termuxStorageRowUsed(String size) {
    return '$size used';
  }

  @override
  String get termuxStorageRowNotScanned => 'Not scanned yet';

  @override
  String get termuxStorageRowScanning => 'Measuring…';

  @override
  String get termuxStorageScanAction => 'Scan storage';

  @override
  String get termuxStorageRescanAction => 'Scan again';

  @override
  String get termuxStorageIntro =>
      'See what Termux uses on this phone. Only caches that rebuild themselves can be cleaned here; your projects, sign-ins and conversations stay.';

  @override
  String get termuxStorageScanning => 'Measuring storage';

  @override
  String get termuxStorageScanningDetail =>
      'Large caches take a minute or two. You can leave this screen; the scan keeps going.';

  @override
  String get termuxStorageCancel => 'Stop scan';

  @override
  String get termuxStorageCancelled => 'Scan stopped';

  @override
  String get termuxStorageFailed => 'The scan did not finish. Try again.';

  @override
  String termuxStorageTotal(String size) {
    return '$size measured in Termux';
  }

  @override
  String termuxStorageDeletableTotal(String size) {
    return '$size can be cleaned';
  }

  @override
  String get termuxStorageScannedJustNow => 'Scanned just now';

  @override
  String termuxStorageScannedMinutesAgo(int minutes) {
    return 'Scanned $minutes min ago';
  }

  @override
  String termuxStorageScannedHoursAgo(int hours) {
    return 'Scanned $hours h ago';
  }

  @override
  String get termuxStorageCatBuildCaches => 'Build caches';

  @override
  String get termuxStorageNoteBuildCaches =>
      'Gradle caches and npm’s downloaded content cache only. Downloads may be needed again, so offline builds can be affected. Stop builds and package installs before cleaning.';

  @override
  String get termuxStorageCatAgentScratch => 'Agent scratch';

  @override
  String get termuxStorageNoteAgentScratch =>
      'Temporary folders may contain unfinished work or files used by other tools. Their sizes are shown for reference; they cannot be removed here.';

  @override
  String get termuxStorageCatProjectBuildOutputs =>
      'Folders with build-related names';

  @override
  String get termuxStorageNoteProjectBuildOutputs =>
      'Folders named build, .dart_tool, node_modules or target may also contain your files. Names alone cannot prove they are disposable, so they cannot be removed here.';

  @override
  String get termuxStorageCatToolchains => 'Toolchains';

  @override
  String get termuxStorageNoteToolchains =>
      'Android SDK, Java and Flutter installations. These may support other projects and cannot be removed here.';

  @override
  String get termuxStorageCatAiTeam => 'AI Team';

  @override
  String get termuxStorageNoteAiTeam =>
      'Team folders, databases and tools may contain work you need to keep. They cannot be removed here, even when the team is stopped.';

  @override
  String get termuxStorageCatOpenCode => 'OpenCode itself';

  @override
  String get termuxStorageNoteOpenCode =>
      'The server, its sign-ins and conversation history. Conversations have their own screen.';

  @override
  String get termuxStorageCatProjects => 'Projects (your files)';

  @override
  String get termuxStorageNoteProjects =>
      'Listed so you can see their size. Never removed from here.';

  @override
  String get termuxStorageWillRemove => 'What Clean removes';

  @override
  String get termuxStorageNothingHere => 'Nothing here';

  @override
  String termuxStorageCleanConfirmTitle(String size, String category) {
    return 'Delete $size of $category?';
  }

  @override
  String get termuxStorageCleanConfirmBody =>
      'Delete only the listed Gradle and npm content caches? Downloads may be needed again and offline builds can be affected. Stop builds and package installs first. Scan again afterward to update the measured sizes.';

  @override
  String termuxStorageCleanConfirm(String size) {
    return 'Delete $size';
  }

  @override
  String get termuxStorageKeep => 'Keep';

  @override
  String get termuxStorageCleaning => 'Deleting…';

  @override
  String termuxStorageFreed(String size) {
    return 'Removed $size';
  }

  @override
  String get termuxStorageFreedNothing => 'Nothing was removed';

  @override
  String termuxStorageInUse(String process) {
    return 'In use by $process. Stop it under Running on this phone first.';
  }

  @override
  String termuxStorageRefusedCount(int count) {
    return '$count paths were left in place';
  }

  @override
  String termuxStorageProjectBuild(String size, String build) {
    return '$size · $build in build-related folders';
  }

  @override
  String get termuxStorageOpenRunning => 'Open Running on this phone';

  @override
  String termuxStorageBytesGb(String value) {
    return '$value GB';
  }

  @override
  String termuxStorageBytesMb(String value) {
    return '$value MB';
  }

  @override
  String termuxStorageBytesKb(String value) {
    return '$value KB';
  }

  @override
  String termuxStorageBytesB(String value) {
    return '$value B';
  }

  @override
  String get termuxProcsTitle => 'Running on this phone';

  @override
  String get termuxProcsRowLoading => 'Checking…';

  @override
  String get termuxProcsAutoRefresh => 'Refreshes every 10 seconds while open';

  @override
  String termuxProcsStopSemantics(String name) {
    return '停止 $name';
  }

  @override
  String termuxProcsStopOneTitle(String name) {
    return '停止 $name？';
  }

  @override
  String get termuxProcsStopOneBody =>
      'It gets a polite stop, then a forced one after 5 seconds.';

  @override
  String get termuxProcsProtected => 'Protected · control it from This phone';

  @override
  String termuxProcsOrphanParentGone(String elapsed) {
    return 'Its parent is gone · running for $elapsed';
  }

  @override
  String termuxProcsOrphanCpu(String cpu) {
    return '$cpu of CPU with no owner';
  }

  @override
  String get termuxProcsStopping => 'Stopping…';

  @override
  String termuxProcsStopped(int count) {
    return 'Stopped $count';
  }

  @override
  String termuxProcsStoppedForced(int count, int forced) {
    return 'Stopped $count ($forced needed a forced stop)';
  }

  @override
  String termuxProcsRemaining(int count) {
    return '$count would not stop';
  }

  @override
  String termuxProcsRefused(int count) {
    return '$count protected, not stopped';
  }

  @override
  String get termuxProcsEmpty => 'Nothing is running in the phone server';

  @override
  String get termuxProcsCommand => 'Command';

  @override
  String get termuxProcsFolder => 'Folder';

  @override
  String termuxProcsDurationSeconds(int seconds) {
    return '$seconds s';
  }

  @override
  String termuxProcsDurationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String termuxProcsDurationHours(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String termuxProcsMemoryMb(int mb) {
    return '$mb MB';
  }

  @override
  String get teamUiPhoneOptionalTag => '可选 · 实验性';

  @override
  String get teamUiPhoneChooseProjectTitle => 'Choose a project';

  @override
  String get teamUiPhoneContinue => '继续';

  @override
  String get teamUiPhoneSuccessTitle => 'AI Team is running on this phone';

  @override
  String get teamUiPhoneRetry => '重试';

  @override
  String teamUiPhoneFailedChecksum(String name) {
    return 'The downloaded $name did not match the checksum this build pins, so it was not installed. Nothing from it was kept; check the network and try again.';
  }

  @override
  String get teamUiPhoneFailedUnsupportedArch =>
      'This phone\'s processor is not 64-bit ARM, which the team runtime needs.';

  @override
  String get teamUiPhoneFailedDownload =>
      'The download did not finish. Check the connection and try again.';

  @override
  String teamUiPhoneFailedDownloadDns(String host) {
    return 'The phone could not find the download server $host. Check that the phone is online and that no private DNS or ad blocker is blocking it, then try again.';
  }

  @override
  String teamUiPhoneFailedDownloadConnect(String host) {
    return 'The phone could not reach the download server $host. Check the connection, then try again; the download continues where it stopped.';
  }

  @override
  String teamUiPhoneFailedDownloadTimeout(String host) {
    return 'The download server $host took too long to answer. Try again on a steadier connection; the download continues where it stopped.';
  }

  @override
  String teamUiPhoneFailedDownloadTls(String host) {
    return 'A secure connection to $host could not be made. Check that the phone\'s date and time are right and that no proxy is in the way, then try again.';
  }

  @override
  String teamUiPhoneFailedDownloadHttp(String host, String code) {
    return 'The download server $host refused the file (HTTP $code). Try again later; if it keeps happening, this app version\'s AI Team download is unavailable.';
  }

  @override
  String teamUiPhoneFailedDownloadInterrupted(String host) {
    return 'The connection to $host broke off during the download. Try again; the download continues where it stopped.';
  }

  @override
  String get teamUiPhoneFailedDownloadWrite =>
      'The download could not be saved on this phone. Free some space, then try again.';

  @override
  String teamUiPhoneFailedDownloadOther(String host, String code) {
    return 'The download from $host failed (error $code). Check the connection, then try again.';
  }

  @override
  String get teamUiPhoneFailedPackages =>
      'Ubuntu could not install the prerequisites (tmux, jq, lsof, procps). The output below says which.';

  @override
  String get teamUiPhoneFailedProject =>
      'The project folder is missing or is not a git repository.';

  @override
  String get teamUiPhoneFailedCity =>
      'Gas City could not create the city. The output below says why.';

  @override
  String get teamUiPhoneFailedSupervisorExited =>
      'The supervisor stopped right after starting. The output below says why.';

  @override
  String teamUiPhoneFailedHealth(String url) {
    return 'The supervisor started but never answered on $url.';
  }

  @override
  String get teamUiPhoneFailedInterrupted =>
      'The setup stopped before it finished. Android may have stopped Termux while the app was away; nothing is lost.';

  @override
  String teamUiPhoneFailedReason(String reason) {
    return 'Reason: $reason';
  }

  @override
  String get teamUiPhoneDispatchFailed =>
      'Termux did not start the step. Open Termux once, then try again.';

  @override
  String get teamUiPhoneSectionTitle => 'On this phone';

  @override
  String get teamUiPhoneStatusChecking => 'Checking…';

  @override
  String get teamUiPhoneStatusNotInstalled => 'Not installed';

  @override
  String get teamUiPhoneStatusInstalled => 'Installed · no city yet';

  @override
  String get teamUiPhoneStatusStopped => 'Stopped';

  @override
  String get teamUiPhoneStatusStarting => 'Starting…';

  @override
  String get teamUiPhoneStatusStopping => 'Stopping…';

  @override
  String teamUiPhoneStatusWorking(String verb) {
    return 'Working… ($verb)';
  }

  @override
  String teamUiPhoneStatusRunning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Running · $count agents',
      one: 'Running · 1 agent',
      zero: 'Running',
    );
    return '$_temp0';
  }

  @override
  String get teamUiPhoneStatusFailed => 'Not running · the last step failed';

  @override
  String teamUiPhoneStatusUnreachable(String url) {
    return 'Started, but not answering on $url';
  }

  @override
  String get teamUiPhoneStatusUnknown => 'Status could not be read';

  @override
  String teamUiPhoneVersions(String gc, String bd, String dolt) {
    return 'gc $gc · bd $bd · dolt $dolt';
  }

  @override
  String get teamUiPhoneStopTitle => 'Stop the team on this phone?';

  @override
  String get teamUiPhoneStopBody =>
      'Running agents stop where they are. Nothing is lost; runs resume when you start it again.';

  @override
  String get teamUiPhoneKilled =>
      'Android stopped the team while the app was away. Nothing is lost.';

  @override
  String get teamUiPhoneKeepRunningTitle => 'Keep it running';

  @override
  String get teamUiPhoneKeepRunningSubtitle =>
      'Stop Android from closing the team in the background';

  @override
  String get teamUiPhoneTipsIntro =>
      'Android stops background work it considers excessive, and the team is exactly that: dozens of short gc and bd processes and an agent at full CPU. Three things keep it alive.';

  @override
  String get teamUiPhoneTipWakeLock =>
      'Keep Termux in front, or hold its wake lock: run termux-wake-lock in Termux, or tap Acquire wakelock in its notification. Screen off without it ends the run.';

  @override
  String get teamUiPhoneTipBattery =>
      'Settings › Apps › Termux › Battery › Unrestricted, and switch off your phone maker\'s auto-clean for Termux.';

  @override
  String get teamUiPhoneTipPhantom =>
      'Android 12 and later still kill the child processes of a background app (the phantom process killer). Turn that off once, from Termux itself over Wireless debugging; no computer needed:';

  @override
  String get teamUiPhoneTipsCopy => 'Copy commands';

  @override
  String get teamUiPhoneRemoveTitle => 'Delete AI Team from this phone?';

  @override
  String teamUiPhoneActionFailed(String reason) {
    return 'That did not work: $reason';
  }

  @override
  String get teamUiPhoneNotAvailable =>
      'Not available on this phone. Running a team needs the 64-bit Linux environment; this device or build can\'t provide it.';

  @override
  String teamUiPhoneFailedNoSpace(String detail) {
    return 'Not enough space on this phone. $detail Free some space (Storage on this phone can clean build caches), then try again.';
  }

  @override
  String get phoneServerConnect => '连接';

  @override
  String get phoneServerOpen => '打开';

  @override
  String get phoneServerStart => '启动';

  @override
  String get phoneServerStop => 'Stop';

  @override
  String get phoneServerMore => 'More server actions';

  @override
  String get phoneServerForget => '忘记已保存的登录信息';

  @override
  String get phoneServerStartFailed =>
      'The server did not start. Open Manage setup to see why.';

  @override
  String get phoneServerRestartFailed =>
      'The server did not restart. Open Manage setup to see why.';

  @override
  String get phoneServerStopFailed =>
      'The server could not be stopped. Try again.';

  @override
  String get termuxStorageCatSharedCaches => 'Other caches and package data';

  @override
  String get termuxStorageNoteSharedCaches =>
      'Shared caches, package installs and download folders may support other tools or contain files worth keeping. They cannot be removed here.';

  @override
  String get termuxStorageRescanRequired =>
      'Previous scan · Scan again before cleaning more';

  @override
  String get safetyStopSharingTitle => '停止分享此对话？';

  @override
  String get safetyStopSharingBody => '任何持有该链接的人都将无法再使用它。对话本身不会改变。';

  @override
  String get safetyStopSharingKeep => '继续分享';

  @override
  String get safetyStopLocalServerTitle => '停止本地服务器？';

  @override
  String get safetyStopLocalServerBody =>
      '智能体在此手机上正在运行的任务会被中断，本应用也会与它断开连接。你的项目和对话会保留在手机上；重新启动服务器即可继续。';

  @override
  String get safetyStopLocalServerKeep => '继续运行';

  @override
  String safetyMcpDisconnectTitle(String server) {
    return '断开 $server？';
  }

  @override
  String get safetyMcpDisconnectBody =>
      '在你重新连接之前，智能体将无法使用它的工具，正在进行的工具调用可能会失败。它的配置会保留。';

  @override
  String get safetyMcpDisconnectKeep => '保持连接';

  @override
  String get safetyStopOrphanBody =>
      '没有任何东西在等待它，但它正在进行的工作会丢失。它会先收到正常停止信号，5 秒后被强制停止。';

  @override
  String get settingsHubGroupNotifications => '通知与后台';

  @override
  String get settingsHubGroupUsage => 'Usage';

  @override
  String get settingsHubGroupHelp => 'Help';

  @override
  String get settingsHubThisServer => 'This server';

  @override
  String get settingsHubAccounts => 'Accounts';

  @override
  String get settingsHubModelAndMode => 'Model and mode';

  @override
  String get settingsHubVoice => 'Voice';

  @override
  String get settingsHubPrivacyRow => '隐私与数据';

  @override
  String get settingsHubSearchServerAliases =>
      'server host url address password profile connection health status version update service';

  @override
  String get settingsHubSearchSavedServersAliases =>
      'servers profiles host url password switch add edit remove profile connection';

  @override
  String get settingsHubSearchPhoneAliases =>
      'phone termux local on-device on device android install setup storage services';

  @override
  String get settingsHubSearchAccountsAliases =>
      'account codex sign in login logout';

  @override
  String get settingsHubSearchExternalAgentsAliases =>
      'a2a external agents remote';

  @override
  String get settingsHubSearchTailscaleAliases =>
      'tailscale vpn network remote private';

  @override
  String get settingsHubSearchDisconnectAliases => 'disconnect leave server';

  @override
  String get settingsHubSearchModelModeAliases =>
      'model mode agent variant thinking default selected session chat conversation';

  @override
  String get settingsHubSearchShellAliases => 'shell terminal bash zsh command';

  @override
  String get settingsHubSearchPermissionsAliases =>
      'permissions approvals always allow allowed revoke';

  @override
  String get settingsHubSearchTranscriptAliases =>
      'transcript display thinking reasoning timestamps usage';

  @override
  String get settingsHubSearchVoiceAliases =>
      'voice speech microphone dictation model';

  @override
  String get settingsHubSearchNotificationsAliases =>
      'notifications and background keep running what runs by itself automation always allowed actions alerts quiet hours background check-in check in wi-fi wifi monitor saved servers finished runs approvals questions quota thresholds';

  @override
  String get settingsHubSearchAppearanceAliases =>
      'appearance theme dark light language arabic english colors';

  @override
  String get settingsHubSearchModelsAliases =>
      'models agents provider AI reasoning favorites recent';

  @override
  String get settingsHubSearchProvidersAliases =>
      'provider api key keys authentication connect';

  @override
  String get settingsHubSearchMcpAliases => 'mcp integrations servers tools';

  @override
  String get settingsHubSearchCommandsAliases =>
      'commands tools skills references slash capabilities';

  @override
  String get settingsHubSearchPluginsAliases =>
      'plugins plugin installed source status AI Team Gas City';

  @override
  String get settingsHubSearchUsageAliases =>
      'usage cost tokens budget quota limit spent remaining threshold quota monitoring provider plans subscriptions spending alerts';

  @override
  String get settingsHubSearchPrivacyAliases =>
      'privacy drafts queue queued prompts read state storage clear delete';

  @override
  String get settingsHubSearchGuideAliases =>
      'help guide connect tutorial start';

  @override
  String get settingsHubSearchBugAliases =>
      'bug feedback issue support report problem crash diagnostics errors log github';

  @override
  String get settingsHubSearchDiagnosticsAliases =>
      'diagnostics debug errors log';

  @override
  String get settingsHubSearchAboutAliases =>
      'about version licenses open source notices privacy data';

  @override
  String get pluginsSectionInApp => 'In this app';

  @override
  String get pluginsSectionOnServer => 'Plugins on this server';

  @override
  String get notifySectionWhat => '通知内容';

  @override
  String get notifyFinishedRuns => '运行完成';

  @override
  String get notifyFinishedRunsDetail => '已连接服务器上的某次运行完成或失败时。';

  @override
  String get notifyRequests => '批准与提问';

  @override
  String get notifyRequestsDetail => '当智能体在任何受监控的服务器上等待你回应时。';

  @override
  String get notifyQuotaAlerts => '用量提醒';

  @override
  String get notifyQuotaAlertsDetail => '要监控哪些套餐以及达到什么水平。在“用量 › 提醒”中设置。';

  @override
  String get notifyBlockedTitle => '此应用的通知已关闭';

  @override
  String get notifyBlockedMessage =>
      'Android 不允许 OpenCode 向你发送通知，因此在解决之前，你将收不到运行完成、批准和配额提醒。';

  @override
  String get notifySendTest => '发送测试通知';

  @override
  String get notifySendTestDetail => '确认 Android 此刻是否正在送达此应用的通知。';

  @override
  String get notifyQuietDetail => '在这些时段内静音通知。';

  @override
  String get notifySectionBackground => '后台';

  @override
  String get notifySectionServers => '已保存的服务器';

  @override
  String get notifyWifiOnly => '仅在 Wi-Fi 下于后台检查';

  @override
  String notifyHubBackgroundSummary(String state) {
    return 'Background: $state';
  }

  @override
  String get usageSectionSpent => 'Spent';

  @override
  String get usageSectionRemaining => 'Remaining';

  @override
  String get shellTabInbox => 'Inbox';

  @override
  String get serverSwitcherManage => '管理服务器';

  @override
  String get serverSwitcherOpen => '切换服务器';

  @override
  String get discoverSearchGoTo => 'Go to';

  @override
  String discoverSearchIn(String parent) {
    return 'In $parent';
  }

  @override
  String get discoverProjectAliases =>
      'project tools code folder files changes terminal health worktrees';

  @override
  String get discoverFilesAliases =>
      'files browse folder tree preview code open file';

  @override
  String get discoverChangesAliases =>
      'changes review changes diff uncommitted git edits working tree';

  @override
  String get discoverTerminalAliases =>
      'terminal shell console command line pty';

  @override
  String get discoverHealthAliases =>
      'project health branch changed files language services formatters lsp';

  @override
  String get discoverWorktreesAliases =>
      'worktrees branches isolated git branch';

  @override
  String get discoverSearchFilesAliases => 'search files find file name';

  @override
  String get discoverAllConversationsAliases =>
      'all conversations sessions chats history every project search';

  @override
  String get discoverTeamAliases =>
      'ai team agents runs needs you orchestration';

  @override
  String get discoverNotifyServersTitle => 'Notifications from saved servers';

  @override
  String get discoverNotifyWhatAliases =>
      'finished runs approvals questions check-ins check in quota alerts what notifies';

  @override
  String get discoverNotifyQuietAliases =>
      'quiet hours do not disturb night silence mute schedule';

  @override
  String get discoverNotifyBackgroundAliases =>
      'background connection stay connected keep alive service';

  @override
  String get discoverNotifyServersAliases =>
      'monitor saved servers attention wi-fi wifi check in the background';

  @override
  String get discoverAppearanceModeAliases =>
      'light dark mode system appearance night';

  @override
  String get discoverLanguageAliases =>
      'language arabic english locale translation rtl';

  @override
  String get discoverThemeAliases => 'theme colors palette pack accent';

  @override
  String get discoverSpentAliases => 'spent cost tokens usage statistics money';

  @override
  String get discoverRemainingAliases =>
      'plans subscriptions remaining quota limit provider plan left reset codex claude glm minimax';

  @override
  String get discoverBudgetAliases =>
      'budget budgets usd token budget spending limit';

  @override
  String get discoverQuotaMonitorAliases =>
      'usage alerts quota monitoring threshold alert warn low quiet hours wi-fi';

  @override
  String get discoverCommandsAliases => 'commands server commands slash run';

  @override
  String get discoverToolsAliases =>
      'tools tools and capabilities inventory model tools';

  @override
  String get discoverSkillsAliases => 'skills skill instructions playbook';

  @override
  String get discoverReferencesAliases =>
      'references reference docs sources context';

  @override
  String get discoverRunningNowAliases =>
      'running now running on this phone processes termux services stop busy memory background';

  @override
  String get discoverStorageAliases =>
      'storage on this phone disk space clean termux';

  @override
  String get discoverMonitorAliases =>
      'saved-server attention monitor other servers waiting server attention';

  @override
  String get discoverConnectionHelpAliases =>
      'add server computer connect pair pairing code connection help cannot connect troubleshooting network refused timeout';

  @override
  String gestureEquivFileRowActions(String name) {
    return '$name 的操作';
  }

  @override
  String get gestureEquivShortcutFindMatch =>
      'Next / previous match while finding in a conversation';

  @override
  String get gestureEquivShortcutPromptHistory =>
      'Earlier / later prompt, with the cursor at the start or end of the message box';

  @override
  String get emptyTeachInboxMessage =>
      'Nothing needs you. Approvals and questions from running work appear here.';

  @override
  String get emptyTeachWorkTitle => 'No conversations yet';

  @override
  String get emptyTeachWorkMessage =>
      'Conversations you start in this project are listed here, with the ones that need you first. Start one with New conversation.';

  @override
  String get emptyTeachChangesTitle => 'No changes yet';

  @override
  String get emptyTeachChangesMessage =>
      'Edits the agent makes show up here to review.';

  @override
  String get emptyTeachWorktreesMessage =>
      'A worktree is a separate copy of this project on its own branch, so parallel work does not mix. Worktrees of this project appear here.';

  @override
  String get emptyTeachAllowedMessage =>
      'When you choose Always allow on an approval in this project, it is listed here so you can take it back.';

  @override
  String get emptyTeachTeamRunsMessage =>
      'Say what you need, and the team splits it into steps and shows its progress here.';

  @override
  String get emptyTeachSkillsMessage =>
      'Skills are reusable instructions the agent can follow. Skills from this project and this server appear here.';

  @override
  String get emptyTeachToolsMessage =>
      'Tools the agent can call with this model appear here. This model has none.';

  @override
  String get capabilityScreenTitle => 'Available on this server';

  @override
  String get capabilityScreenAliases =>
      'available supported not available missing feature hidden why can\'t capabilities server support shell';

  @override
  String capabilityScreenIntro(String server) {
    return '$server decides what appears in this app. Anything it cannot do is left out of the menus and tabs instead of being shown greyed out.';
  }

  @override
  String get capabilityAllAvailable =>
      'This server supports everything the app offers.';

  @override
  String get capabilityFiles => 'Files';

  @override
  String get capabilityFilesDetail =>
      'Browse, search and preview the project\'s files';

  @override
  String get capabilityChanges => 'Changes';

  @override
  String get capabilityChangesDetail => 'Review what the agent edited';

  @override
  String get capabilityTerminal => 'Terminal';

  @override
  String get capabilityTerminalDetail => 'Run commands in the project';

  @override
  String get capabilityShell => 'Default shell';

  @override
  String get capabilityShellDetail =>
      'Choose the shell that commands and terminals use';

  @override
  String get capabilityAttachments => 'Attachments';

  @override
  String get capabilityAttachmentsDetail =>
      'Send files and photos with a prompt';

  @override
  String get capabilitySubagents => 'Delegate to a subagent';

  @override
  String get capabilitySubagentsDetail => 'Mention an agent with @ in a prompt';

  @override
  String get capabilityCompact => 'Compact';

  @override
  String get capabilityCompactDetail =>
      'Summarize a long conversation to free up context';

  @override
  String get capabilityShare => 'Share';

  @override
  String get capabilityShareDetail => 'Publish a link to a conversation';

  @override
  String get capabilityFork => 'Fork';

  @override
  String get capabilityForkDetail =>
      'Branch a conversation from an earlier message';

  @override
  String get capabilityRevert => 'Revert';

  @override
  String get capabilityRevertDetail => 'Undo a prompt and the edits it made';

  @override
  String get capabilityArchive => 'Archive';

  @override
  String get capabilityArchiveDetail =>
      'Put finished conversations away without deleting them';

  @override
  String get capabilityTodos => 'Todos';

  @override
  String get capabilityTodosDetail =>
      'See the agent\'s task list for a conversation';

  @override
  String get capabilityNotes => 'Note for the agent';

  @override
  String get capabilityNotesDetail =>
      'Keep standing instructions with a conversation';

  @override
  String get capabilityImportExport => 'Import and export';

  @override
  String get capabilityImportExportDetail =>
      'Move a conversation between servers as a file';

  @override
  String get capabilitySearchAll => 'All conversations';

  @override
  String get capabilitySearchAllDetail =>
      'Search conversations across every project';

  @override
  String get capabilityAlwaysAllow => 'Always allowed actions';

  @override
  String get capabilityAlwaysAllowDetail =>
      'Remember an approval so it is not asked again';

  @override
  String get capabilityModels => 'Models and providers';

  @override
  String get capabilityModelsDetail =>
      'Browse models and sign in to providers from the app';

  @override
  String get capabilitySkills => 'Skills and commands';

  @override
  String get capabilitySkillsDetail =>
      'List the server\'s skills, commands and references';

  @override
  String get capabilityMcp => 'MCP';

  @override
  String get capabilityMcpDetail => 'See and connect MCP servers';

  @override
  String get capabilityPlugins => 'Plugins';

  @override
  String get capabilityPluginsDetail =>
      'See the plugins installed on the server';

  @override
  String get capabilityCloud => 'Cloud environments';

  @override
  String get capabilityCloudDetail => 'Run a project in a managed environment';

  @override
  String get capabilityProjects => 'Projects';

  @override
  String get capabilityProjectsDetail =>
      'Switch projects and check a project\'s health';

  @override
  String get capabilityWorktrees => 'Worktrees';

  @override
  String get capabilityWorktreesDetail => 'Give a task its own isolated branch';

  @override
  String get capabilityUsage => 'Usage';

  @override
  String get capabilityUsageDetail => 'See what conversations have cost';

  @override
  String get capabilityOfflineQueue => 'Send later';

  @override
  String get capabilityOfflineQueueDetail =>
      'Queue a prompt while offline and send it on reconnect';

  @override
  String get capabilityContinueOnComputer => 'Continue on computer';

  @override
  String get capabilityContinueOnComputerDetail =>
      'Get a command that reopens the conversation at your desk';

  @override
  String get capabilityServerUpdates => 'Server updates';

  @override
  String get capabilityServerUpdatesDetail => 'Update the server from the app';

  @override
  String get capabilityBackgroundNotifications =>
      'Notifications in the background';

  @override
  String get capabilityBackgroundNotificationsDetail =>
      'Be told when work finishes or needs you while the app is closed';

  @override
  String get capabilityOnThisPhone => 'On this phone';

  @override
  String get capabilityOnThisPhoneDetail =>
      'Run the agent\'s server on this device';

  @override
  String get capabilityVoice => 'Voice';

  @override
  String get capabilityVoiceDetail =>
      'Dictate prompts with on-device speech models';

  @override
  String get discoverShowTipsAgain => 'Show tips again';

  @override
  String get discoverShowTipsSubtitle =>
      'One-time tips will appear again at their moment';

  @override
  String get discoverShowTipsAliases =>
      'tips hints nudges help reset show again tutorial';

  @override
  String get discoverShowTipsDone => 'Tips will show again.';

  @override
  String nudgeApprovals(String action) {
    return 'Asked for “$action” 3 times: this conversation can approve requests for you.';
  }

  @override
  String get nudgeReviewChanges =>
      'OpenCode changed files. Look them over before you go on.';

  @override
  String get nudgeLeave =>
      'You can leave: this phone tells you when the run is done.';

  @override
  String nudgeCompact(String percent) {
    return 'The context is $percent% full: compact to keep going.';
  }

  @override
  String get nudgePin =>
      'Pin conversations you return to from their menu; they stay at the top of Work.';

  @override
  String get nudgeDismiss => 'Hide tip';

  @override
  String get firstRunWhereQuestion => '你的编程智能体在哪里运行？';

  @override
  String get firstRunOnComputer => '在我的电脑上';

  @override
  String get firstRunOnComputerDetail => '连接到在那里运行的智能体。';

  @override
  String get firstRunOnPhoneDetail => '在这里设置一个，无需电脑。';

  @override
  String get firstRunJustShowMe => '先看看演示';

  @override
  String get firstRunAgentOpenCode => 'OpenCode';

  @override
  String get firstRunAgentCodex => 'Codex';

  @override
  String get firstRunRunOnComputer => '在你的电脑上运行：';

  @override
  String get firstRunPairingNextScan => '它会显示一个代码。扫描它，或复制后粘贴到这里。';

  @override
  String get firstRunPairingNextPaste => '然后粘贴它输出的代码。';

  @override
  String get firstRunNotSameNetwork => '不在同一网络？';

  @override
  String get firstRunShowCommands => '显示命令';

  @override
  String get firstRunCommandsPaseoNetwork => '若要从此手机通过私有网络访问，请监听该地址并设置密码：';

  @override
  String get firstRunCommandsCodexToken => '启动前先创建连接令牌：';

  @override
  String get firstRunCommandsCodexUsb => '通过 USB 线连接的手机可用以下命令访问：';

  @override
  String get firstRunNotifyTitle => '当智能体需要你时通知你？';

  @override
  String get firstRunNotifyBody =>
      'Leave the app while the agent works. You get a notification when it needs your answer. Android shows a small ongoing notification while it stays connected.';

  @override
  String get firstRunNotifyAccept => '通知我';

  @override
  String get firstRunNotifyDecline => '暂不';

  @override
  String get localAgentTitle => '此手机上的 Claude Code';

  @override
  String get localAgentOfferBody =>
      '无需电脑，直接在这里运行 Claude Code。应用会把 Node.js、Paseo 守护进程和 Claude Code 安装到它已管理的 Ubuntu 中，且只能在此手机上访问。';

  @override
  String get localAgentOfferSize =>
      'Node.js 约需下载 60 MB，另加软件包；安装后约占 1 GB。需要 2 GB 可用空间。';

  @override
  String get localAgentOfferWarning =>
      'Android 可能会在后台停止 Termux。让 OpenCode 服务器保持运行的电池设置同样适用于它。';

  @override
  String get localAgentSetUp => '设置 Claude Code';

  @override
  String get localAgentNotNow => '暂不';

  @override
  String get localAgentNeedsUbuntuBody =>
      'Claude Code 运行在本应用设置的 Ubuntu 中。请先完成“在这部手机上”的设置，再回到这里。';

  @override
  String get localAgentOpenSetup => '打开手机设置向导';

  @override
  String get localAgentNeedsTermuxBody =>
      'Claude Code 目前需要 Termux；应用内置的 Linux 还不能运行它。请设置 Termux 以在此使用。';

  @override
  String get localAgentSetUpWithTermux => '使用 Termux 设置';

  @override
  String get localAgentStepNode => 'Node.js';

  @override
  String get localAgentStepPaseo => 'Paseo 守护进程';

  @override
  String get localAgentStepClaude => 'Claude Code';

  @override
  String get localAgentStepSignIn => '登录 Claude';

  @override
  String get localAgentStepStart => '在此手机上启动';

  @override
  String get localAgentInstalling => '正在设置 Claude Code';

  @override
  String get localAgentLeaveNote => '你可以离开此屏幕。安装会在 Termux 中继续进行。';

  @override
  String get localAgentSignInBody =>
      'Termux 会打开，Claude Code 会显示一个链接。请在浏览器中批准，将代码粘贴回 Termux，然后返回这里。本应用从不查看或保存你的 Claude 登录信息。';

  @override
  String get localAgentSignInAlready => '我已登录';

  @override
  String localAgentSignInOpenFailed(String command) {
    return '无法打开 Termux。请自行打开 Termux 并运行：$command';
  }

  @override
  String get localAgentSignInMissing => '尚未找到 Claude 登录信息。';

  @override
  String get localAgentReadyTitle => 'Claude Code 正在此手机上运行';

  @override
  String get localAgentReadyBody => '它只在此手机上监听（127.0.0.1），并由本应用保管的密码保护。';

  @override
  String localAgentVersions(String claude, String paseo, String node) {
    return 'Claude Code $claude · Paseo $paseo · Node.js $node';
  }

  @override
  String get localAgentInstalledTitle => 'Claude Code 已安装但未运行';

  @override
  String get localAgentKilled => '应用在后台时，Android 停止了 Claude Code。没有丢失任何内容。';

  @override
  String get localAgentFailedTitle => 'Claude Code 设置已停止';

  @override
  String localAgentFailedNoSpace(String detail) {
    return '此手机空间不足。$detail请释放一些空间后重试。';
  }

  @override
  String get localAgentFailedDownload => '无法下载 Node.js。请检查网络后重试。';

  @override
  String get localAgentFailedChecksum =>
      'Node.js 下载内容与固定的校验和不一致，因此未安装任何内容。请重试；如果再次发生，说明网络中有东西在篡改该文件。';

  @override
  String get localAgentFailedNativeBuild =>
      '某个软件包需要原生模块，而此手机没有现成的构建。未编译任何内容；下方输出中指出了该模块。';

  @override
  String get localAgentFailedPackages => '无法安装软件包。请检查网络后重试。';

  @override
  String get localAgentFailedPortInUse => '此手机的 6767 端口已被其他程序占用。请停止该程序后重试。';

  @override
  String get localAgentFailedTimeout => 'Claude Code 在两分钟内没有响应。下方输出显示了它打印的内容。';

  @override
  String get localAgentFailedInterrupted => 'Android 在该步骤完成前将其中断。请重试，它会从中断处继续。';

  @override
  String get localAgentFailedUnsupported => 'Claude Code 需要 64 位手机。';

  @override
  String get localAgentFailedDaemon => 'Claude Code 已停止或没有响应。请重新启动它。';

  @override
  String localAgentFailedReason(String detail) {
    return '已停止：$detail';
  }

  @override
  String get localAgentProjectTitle => '选择项目文件夹';

  @override
  String get localAgentProjectBody => 'Claude Code 在此手机 Ubuntu 的某个文件夹内工作。';

  @override
  String get localAgentProjectPathLabel => '或输入 Ubuntu 内的路径';

  @override
  String get localAgentProjectPathInvalid =>
      '请输入完整路径，例如 /root/projects/my-app。';

  @override
  String localAgentConnectFailed(String detail) {
    return '无法连接到此手机上的 Claude Code。$detail';
  }

  @override
  String localAgentCardActionFailed(String detail) {
    return '操作失败。$detail';
  }

  @override
  String get localAgentRestartTitle => '在此手机上重启 Claude Code？';

  @override
  String get localAgentRestartBody =>
      'Claude Code 会短暂不可用，它当前正在做的事情会被中断。你的对话会保留在手机上。';

  @override
  String get localAgentStopTitle => '在此手机上停止 Claude Code？';

  @override
  String get localAgentStopBody =>
      'Claude Code 在此手机上正在做的事情会被中断，本应用也会与它断开连接。你的项目、对话和 Claude 登录信息会保留；重新启动即可继续。';

  @override
  String get localAgentRemove => '从此手机移除';

  @override
  String get localAgentRemoveTitle => '从此手机移除 Claude Code？';

  @override
  String get localAgentRemoveBody =>
      '停止它，并从 Ubuntu 中删除 Node.js、Paseo 和 Claude Code，约 1 GB。你的项目和 Claude 登录信息会保留。';

  @override
  String get localAgentRemoveKeep => '保留';

  @override
  String get localAgentMore => '更多 Claude Code 操作';

  @override
  String get firstRunAgentsSideBySide =>
      '它们在同一台电脑上并行运行。先从一个开始，之后随时可从顶部的服务器名称添加其他的。';

  @override
  String get firstRunPaseoTitle => '通过 Paseo 使用智能体';

  @override
  String get approvalsUiEverythingTitle => 'Approve everything on this server';

  @override
  String get approvalsUiEverythingDetail =>
      'Dangerous. Every conversation on this server, new ones and subagents included, is approved automatically while this app is connected. A conversation set to “Ask each time” still asks.';

  @override
  String get approvalsUiEverythingConfirmBody =>
      'Agents on this server will run commands and change files without asking you, in every conversation. Turn this on only for a server and projects you can afford to break.';

  @override
  String get approvalsUiEverythingActive =>
      'Following “Approve everything on this server”';

  @override
  String get approvalsUiServerRulesNoteEverything =>
      'The server’s own deny rules still apply, and automatic approval stops whenever this app disconnects.';

  @override
  String get agentErrorConnectionDropped => '与模型的连接已断开。';

  @override
  String get agentErrorConnectionDroppedHint =>
      '请检查运行 OpenCode 的设备的网络。如果回复已停止，请先查看对话，再重新发送。';

  @override
  String get agentErrorTimedOut => '模型响应时间过长。';

  @override
  String get agentErrorTimedOutHint => '如果回复已停止，请尝试更小的请求或其他模型。';

  @override
  String get agentErrorProviderUnreachable => '服务器无法连接到模型提供商。';

  @override
  String get agentErrorProviderUnreachableHint =>
      '请检查运行 OpenCode 的电脑的网络连接，然后重试。';

  @override
  String get agentErrorRequestTooLarge => '此请求过大，无法发送给模型。';

  @override
  String get agentErrorRequestTooLargeHint => '请减少附件数量或缩小附件，或压缩对话，然后重试。';

  @override
  String get agentErrorRateLimited => '模型提供商正在限制你的发送速度。';

  @override
  String get agentErrorRateLimitedHint => '请稍等。如果回复已停止，请重试或选择其他模型。';

  @override
  String get agentErrorProviderBusy => '模型提供商目前负载过高。';

  @override
  String get agentErrorProviderBusyHint => '如果回复已停止，请稍后重试或选择其他模型。';

  @override
  String get agentErrorOutOfCredit => '提供商账户的额度或配额已用完。';

  @override
  String get agentErrorOutOfCreditHint => '请为账户充值，或切换到其他提供商或模型。';

  @override
  String get agentErrorServerDiskFull => '运行 OpenCode 的电脑磁盘空间已满。';

  @override
  String get agentErrorServerDiskFullHint => '请在那台电脑上释放一些空间，然后重试。';

  @override
  String get agentErrorRecovered => '智能体在此之后继续运行了。';

  @override
  String chatUiRetryingSoon(String attempt) {
    return '正在重试$attempt…';
  }

  @override
  String chatUiRetryingCountdown(String attempt, String time) {
    return '$time 后重试$attempt';
  }

  @override
  String get chatUiCompactAgain => '再次压缩';

  @override
  String get chatUiCompactionFailedHint => '对话对模型来说仍然太长，所以下一轮会再次尝试。';

  @override
  String get chatStripContextPending => '上下文待处理';

  @override
  String get chatStripAutoApprove => '自动批准';

  @override
  String get chatStripAutoApprovePaused => '自动批准已暂停';

  @override
  String get chatStripApprovalAsk => '先询问';

  @override
  String get approvalModeMenuLabel => '批准模式';

  @override
  String get approvalModeAskTitle => '先询问';

  @override
  String get approvalModeAutoTitle => '自动批准此对话';

  @override
  String get approvalModeAutoDetail => '请求到达时逐次允许一次。';

  @override
  String get approvalModeEverythingTitle => '批准全部';

  @override
  String get approvalModeEverythingDetail => '此服务器上的所有对话。';

  @override
  String approvalModeEverythingAgentDetail(String agent) {
    return '这部手机上 $agent 的所有对话。';
  }

  @override
  String get approvalModeSettings => '批准设置…';

  @override
  String get approvalModeConfirmEverythingTitle => '要批准全部吗？';

  @override
  String get approvalModeConfirmEverythingAction => '全部批准';

  @override
  String get approvalModeNowAsk => '此对话将先询问。';

  @override
  String get approvalModeNowAuto => '此对话将自动批准。';

  @override
  String get approvalModeNowEverything => '正在批准此服务器上的全部请求。';

  @override
  String get approvalModeChange => '更改批准模式';

  @override
  String get chatStripBackground => '后台';

  @override
  String chatAttachmentOfficeHeader(String name) {
    return '$name 的内容，在手机上读取：仅包含数值和文字，不含格式、图表或公式。';
  }

  @override
  String get chatAttachmentOfficeTruncated => '文件超出了一条提示词可容纳的大小，因此下方内容已被截断。';

  @override
  String chatAttachmentOfficeUnreadable(String name) {
    return '无法读取 $name。它可能受密码保护、已损坏，或为旧版 Excel 或 Word 格式；请另存为 .xlsx、.docx 或 CSV 后重试。';
  }

  @override
  String chatAttachmentOfficeEmpty(String name) {
    return '$name 中没有可附加的内容。';
  }

  @override
  String chatAttachmentDocumentAttached(String name) {
    return '已将 $name 作为文字附加。';
  }

  @override
  String chatAttachmentSheetAttached(String name, int sheets, int rows) {
    String _temp0 = intl.Intl.pluralLogic(
      sheets,
      locale: localeName,
      other: '$sheets 个工作表',
      one: '1 个工作表',
    );
    String _temp1 = intl.Intl.pluralLogic(
      rows,
      locale: localeName,
      other: '$rows 行',
      one: '1 行',
    );
    return '已将 $name 作为文字附加 · $_temp0，$_temp1';
  }

  @override
  String get otherProjectsForget => 'Remove from recent projects';

  @override
  String get otherProjectsUntitled => 'Untitled conversation';

  @override
  String get localAgentUpdate => '更新 Claude Code';

  @override
  String get localAgentUpdateAvailable => '更新后将加入最新的 Claude 模型，例如 Opus 5.5。';

  @override
  String get localAgentUpdateNow => '更新';

  @override
  String get modelNewBadge => '新';

  @override
  String get modelEffortNone => '不思考';

  @override
  String get modelEffortMinimal => '最低';

  @override
  String get modelEffortLow => '低';

  @override
  String get modelEffortMedium => '中';

  @override
  String get modelEffortHigh => '高';

  @override
  String get modelEffortExtraHigh => '极高';

  @override
  String get modelEffortMax => '最大';

  @override
  String get setupStoppedByRestart => '手机已重启，因此本地服务器已停止。需要时请再次启动。';

  @override
  String get phoneServerStoppedTitle => '此手机上的服务器已停止';

  @override
  String get phoneServerStoppedBody =>
      '手机重启或 Android 为省电关闭 Termux 时，它会停止。你的对话会保留；请重新启动以继续。';

  @override
  String get phoneServerStartAndConnect => '启动并连接';

  @override
  String get otherServersTitle => 'On your other servers';

  @override
  String otherServerWorking(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个进行中',
    );
    return '$_temp0';
  }

  @override
  String chatUiAskAgent(String agent) {
    return '向 $agent 提问…';
  }

  @override
  String terminalShowEarlier(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '显示前 $countString 行',
      one: '显示前 1 行',
    );
    return '$_temp0';
  }

  @override
  String terminalOpenFull(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return '打开全部 $countString 行';
  }

  @override
  String get setupProgressViewOverallLabel => '设置进度';

  @override
  String get setupProgressViewGettingStarted => '正在开始…';

  @override
  String setupProgressViewMinutesLeft(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '剩余约 $minutes 分钟',
      one: '剩余约 1 分钟',
    );
    return '$_temp0';
  }

  @override
  String get setupProgressViewUnderMinute => '不到一分钟';

  @override
  String get setupProgressViewDone => '全部完成';

  @override
  String get setupProgressViewFailedTitle => '设置未完成';

  @override
  String get setupProgressViewInterrupted => '设置被中断。已完成的部分会保留。';

  @override
  String get setupProgressViewCancelled => '设置已停止。已完成的部分仍保持安装。';

  @override
  String setupProgressViewBytes(String done, String total) {
    return '$done / $total';
  }

  @override
  String setupProgressViewPercent(int percent) {
    return '$percent%';
  }

  @override
  String setupProgressViewStageMeasured(String stage, String measured) {
    return '$stage · $measured';
  }

  @override
  String get setupProgressViewChecking => '检查中';

  @override
  String get setupProgressViewStarting => '启动中';

  @override
  String setupProgressViewFailedDuring(String stage) {
    return '停止于：$stage。出错原因见“详情”。';
  }

  @override
  String get setupProgressViewFailedUnknown => '设置在完成前停止了。出错原因见“详情”。';

  @override
  String get setupProgressViewNoInternet => '无网络连接 — 恢复联网后再继续';

  @override
  String get setupProgressViewContinue => '继续设置';

  @override
  String get setupProgressViewCancel => '停止设置';

  @override
  String get setupProgressViewNoLog => '暂无日志。';

  @override
  String get phoneSetupProgressTitle => '正在这部手机上设置 OpenCode';

  @override
  String get phoneSetupProgressLeaveHint => '你可以离开应用，准备好后我们会通知你。';

  @override
  String get phoneSetupProgressFirstSetupNote =>
      '第 1 步，共 3 步：安装。之后为项目命名，然后开始对话。你可以离开应用，准备好后我们会通知你。';

  @override
  String get phoneSetupProgressLeaveHintQuiet =>
      'You can leave the app. Setup keeps going. Open OpenCode again to see how far it got.';

  @override
  String get phoneSetupProgressFirstSetupNoteQuiet =>
      'Step 1 of 3: install. Then name a project and start a conversation. You can leave the app. Setup keeps going. Open OpenCode again to see how far it got.';

  @override
  String get phoneSetupProgressStopTitle => '要停止设置吗？';

  @override
  String get phoneSetupProgressStopMessage => '已完成的部分会保留。';

  @override
  String get phoneSetupProgressStopConfirm => '停止设置';

  @override
  String get phoneSetupProgressKeepGoing => '继续进行';

  @override
  String get builtinServerChooseRuntime => 'Which OpenCode';

  @override
  String get builtinServerStopped => '未在运行。';

  @override
  String builtinServerStartFailed(String reason) {
    return 'OpenCode 没有响应：$reason。打开日志查看原因。';
  }

  @override
  String get builtinServerExited => '服务器已停止';

  @override
  String builtinServerTimedOut(int seconds) {
    return '$seconds 秒内无响应';
  }

  @override
  String builtinServerConnectFailed(String reason) {
    return '无法连接：$reason';
  }

  @override
  String builtinServerProfileName(String runtime) {
    return '此手机，内置（$runtime）';
  }

  @override
  String get phoneSetupProfileName => '此手机';

  @override
  String get phoneSetupLinuxTitle => 'Linux 基础环境';

  @override
  String get phoneSetupLinuxWhy => '其他所有内容都在其中运行。';

  @override
  String get phoneSetupEssentialsTitle => 'Git、SSH 和证书';

  @override
  String get phoneSetupEssentialsShort => 'Git 和 SSH';

  @override
  String get phoneSetupEssentialsWhy => '智能体通过 Git 和 SSH 处理你的项目。';

  @override
  String get phoneSetupNodeWhy => 'OpenCode 基于 Node.js 运行。';

  @override
  String get phoneSetupOpenCodeWhy => '编程智能体本身。';

  @override
  String get phoneSetupStartTitle => '启动 OpenCode';

  @override
  String get phoneSetupStartWhy => '设置完成时 OpenCode 已在运行。';

  @override
  String get phoneSetupStageDownloadingLinux => '正在下载 Linux 基础系统';

  @override
  String get phoneSetupStageUnpackingLinux => '正在解压 Linux 基础系统';

  @override
  String get phoneSetupStageStarting => '正在启动 OpenCode';

  @override
  String get phoneSetupNotificationChannel => '手机设置';

  @override
  String get phoneSetupNotificationTitle => '正在此手机上设置 OpenCode';

  @override
  String phoneSetupNotificationProgress(String percent) {
    return '已完成 $percent%';
  }

  @override
  String get phoneSetupNotificationDone => 'OpenCode 已在此手机上就绪';

  @override
  String get phoneSetupNotificationStopped => '设置已停止。打开应用以继续。';

  @override
  String get phoneSetupErrorNoInternet => '没有网络连接。恢复联网后再继续。';

  @override
  String phoneSetupErrorOffline(String name) {
    return '无法下载 $name：没有网络连接';
  }

  @override
  String phoneSetupErrorInstall(String name) {
    return '无法安装 $name';
  }

  @override
  String phoneSetupErrorChecksum(String name) {
    return '$name 的下载已损坏。继续以重新下载。';
  }

  @override
  String get phoneSetupErrorOpenCodeNoProgram =>
      'OpenCode 已下载，但下载内容中没有它的程序。继续以重新下载。';

  @override
  String get phoneSetupErrorOpenCodeWontRun =>
      'OpenCode 已下载，但其程序无法在此手机上运行。详情会显示它的输出。';

  @override
  String get phoneSetupErrorOpenCodeNoStart =>
      'OpenCode 已安装，但没有启动。继续以重试；详情会显示它的输出。';

  @override
  String phoneSetupErrorNoSpace(String name) {
    return '可用空间不足，无法安装 $name。请释放一些存储空间，然后继续设置。';
  }

  @override
  String phoneSetupErrorStart(String reason) {
    return 'Could not start OpenCode: $reason';
  }

  @override
  String get phoneSetupErrorCannotStart =>
      'OpenCode 已安装但没有响应。继续设置以重试。详情会显示停止的原因。';

  @override
  String get builtinServerLogTitle => '服务器日志';

  @override
  String get phoneSetupReadyTitle => 'OpenCode 已准备就绪';

  @override
  String get phoneSetupReadyNameTitle => '给你的第一个项目起个名字';

  @override
  String get phoneSetupReadyNameLabel => '项目名称';

  @override
  String get phoneSetupReadyNameHelp => '字母、数字、- _ .';

  @override
  String get phoneSetupReadyCreating => '正在创建项目';

  @override
  String get phoneSetupReadyCreateOpen => '创建并打开';

  @override
  String get phoneSetupReadyOpenFolderInstead => '改为打开文件夹';

  @override
  String get phoneSetupReadyNameEmpty => '请输入名称。';

  @override
  String get phoneSetupReadyNameOneFolder => '请使用一个不含斜杠的名称。';

  @override
  String get phoneSetupReadyNameInvalid =>
      '请使用字母、数字、- _ 或 .，并以字母或数字开头（最多 64 个字符）。';

  @override
  String phoneSetupReadyCreateFailed(String reason) {
    return '无法创建项目：$reason';
  }

  @override
  String phoneSetupReadyOpenFailed(String reason) {
    return '无法打开项目：$reason';
  }

  @override
  String get phoneServerCardTitle => '应用内 Ubuntu';

  @override
  String get phoneServerCardRunning => '运行中';

  @override
  String get phoneServerCardStopped => '已停止';

  @override
  String get phoneServerCardStarting => '正在启动';

  @override
  String get phoneServerCardStopping => '正在停止';

  @override
  String get phoneServerCardRemoving => '正在移除';

  @override
  String get phoneServerCardChecking => '检查中';

  @override
  String get phoneServerCardNotSetUp => '未设置';

  @override
  String get phoneServerCardSettingUp => '正在设置';

  @override
  String phoneServerCardVersion(String version) {
    return 'OpenCode $version';
  }

  @override
  String get phoneServerCardSetUp => '设置';

  @override
  String get phoneServerCardShowProgress => '查看进度';

  @override
  String get phoneServerCardContinueSetup => '继续设置';

  @override
  String get phoneServerCardLogTitle => '日志';

  @override
  String get phoneServerCardLogEmpty => '日志中暂无内容。';

  @override
  String get phoneServerCardMore => '更多';

  @override
  String phoneServerCardSwitchTo(String runtime) {
    return 'Switch to $runtime';
  }

  @override
  String get phoneServerCardAddTools => '添加工具（Python、AI Team…）';

  @override
  String get phoneServerCardUpdate => '更新 OpenCode';

  @override
  String get phoneServerCardRemove => '从此手机移除…';

  @override
  String get phoneServerCardRemoveTitle => '从此手机移除 OpenCode？';

  @override
  String phoneServerCardActionFailed(String reason) {
    return '操作失败：$reason';
  }

  @override
  String get serverEditorMoreOptions => '更多选项';

  @override
  String get inAppServerStoppedTitle => '应用内的 OpenCode 已停止';

  @override
  String get inAppServerStoppedBody => '应用关闭一段时间或更新后，它会停止。你的对话会保留；请重新启动以继续。';

  @override
  String get inAppServerNotRespondingTitle => '应用内的 OpenCode 没有响应';

  @override
  String get inAppServerNotRespondingBody => '重新启动通常即可解决。你的对话会保留。';

  @override
  String get inAppServerStartFailedTitle => '应用内的 OpenCode 未能启动';

  @override
  String get inAppServerStartFailedBody => '打开其设置查看服务器日志，或再次尝试启动。';

  @override
  String get inAppServerStarting => '正在应用内启动 OpenCode…';

  @override
  String get inAppServerStartingBody => '这需要几秒钟。';

  @override
  String get inAppServerOpenSetup => '打开设置向导';

  @override
  String get projectFolderInAppTitle => 'Open a project';

  @override
  String get projectFolderNewProject => '新项目';

  @override
  String get projectFolderProjectNameLabel => '项目名称';

  @override
  String projectFolderNewProjectHelp(String directory) {
    return 'The app makes the folder in $directory and opens it.';
  }

  @override
  String get projectFolderEnterPath => '输入路径';

  @override
  String get projectFolderMissing => 'That folder does not exist yet.';

  @override
  String get projectFolderCreateIt => 'Create it';

  @override
  String projectFolderCreateFailed(String reason) {
    return 'The folder could not be created: $reason';
  }

  @override
  String projectFolderCheckFailed(String reason) {
    return 'The folder could not be checked: $reason';
  }

  @override
  String get folderBrowserUp => '返回上一级文件夹';

  @override
  String folderBrowserCurrent(String path) {
    return '当前文件夹：$path';
  }

  @override
  String folderBrowserOpen(String name) {
    return '打开 $name';
  }

  @override
  String get folderBrowserGit => 'Git 仓库';

  @override
  String get folderBrowserProject => 'OpenCode 项目';

  @override
  String folderBrowserShowInside(String name) {
    return '显示 $name 中的文件夹';
  }

  @override
  String get folderBrowserProjectsHere => '你的项目都在这里。点按一个即可打开。';

  @override
  String get folderBrowserHomeHere => '主目录和根目录不能作为项目。请打开其中的某个文件夹。';

  @override
  String get folderBrowserNoProjectsTitle => '还没有项目';

  @override
  String get folderBrowserNoProjectsBody => '新建一个，它会出现在这里。';

  @override
  String get folderBrowserEmptyTitle => '这里没有文件夹';

  @override
  String get folderBrowserEmptyBody => '将其作为项目打开，或返回上一级文件夹。';

  @override
  String get folderBrowserErrorTitle => '无法显示此文件夹';

  @override
  String get folderBrowserErrorNotInstalled => '应用内尚未安装 Ubuntu。';

  @override
  String get folderBrowserErrorMissing => '它已不存在。';

  @override
  String get folderBrowserErrorDenied => '应用无权读取它。';

  @override
  String get folderBrowserErrorLinked => '它是一个链接。请改为输入它的路径。';

  @override
  String get folderBrowserErrorFailed => '请重试，或改为输入它的路径。';

  @override
  String get folderBrowserErrorTimedOut => '响应时间过长。请重试。';

  @override
  String get folderBrowserRetry => '重试';

  @override
  String get phoneSetupStartScreenTitle => '在这部手机上';

  @override
  String get phoneSetupStartHeadline => '直接在这里运行编程智能体';

  @override
  String phoneSetupStartPromise(String size) {
    return '无需电脑，也无需其他应用。首次需下载约 $size。';
  }

  @override
  String get phoneSetupStartPromiseNoSize => '无需电脑，也无需其他应用。';

  @override
  String phoneSetupStartSteps(String time) {
    return '安装、为项目命名、开始对话 · $time';
  }

  @override
  String phoneSetupStartStepsTime(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '约 $minutes 分钟',
    );
    return '$_temp0';
  }

  @override
  String phoneSetupStartAboutMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '大约 $minutes 分钟',
    );
    return '$_temp0';
  }

  @override
  String phoneSetupStartMegabytes(String value) {
    return '$value MB';
  }

  @override
  String phoneSetupStartGigabytes(String value) {
    return '$value GB';
  }

  @override
  String get phoneSetupStartSetUp => '在这部手机上设置 OpenCode';

  @override
  String phoneSetupStartIncludes(String tools) {
    return '包含 $tools。';
  }

  @override
  String phoneSetupStartListPair(String first, String last) {
    return '$first和$last';
  }

  @override
  String get phoneSetupStartListSeparator => '、';

  @override
  String get phoneSetupStartCustomize => '选择要安装的内容';

  @override
  String get phoneSetupStartOtherWays => '其他方式';

  @override
  String get phoneSetupStartUseTermux => '改用 Termux';

  @override
  String get phoneSetupStartByAddress => '通过地址连接到电脑';

  @override
  String get phoneSetupStartSetUpHere => '改为在本应用内设置';

  @override
  String phoneSetupStartProgressHeadline(int percent) {
    return '设置已完成 $percent%';
  }

  @override
  String get phoneSetupStartRunningBody => '你使用其他应用时它也会继续进行。';

  @override
  String get phoneSetupStartStoppedBody => '在完成前停止了。继续后会从中断的地方接着进行。';

  @override
  String get phoneSetupStartContinue => '继续设置';

  @override
  String get phoneSetupStartReadyHeadline => 'OpenCode 已在这部手机上准备就绪';

  @override
  String get phoneSetupStartReadyBody => '打开它，开始一次对话。';

  @override
  String get phoneSetupStartOpen => '打开';

  @override
  String get phoneSetupStartTermuxHeadline => 'OpenCode 已在 Termux 中设置好';

  @override
  String get phoneSetupStartTermuxBody => '你之前用 Termux 设置过。连接后即可继续使用。';

  @override
  String get phoneSetupStartConnect => '连接';

  @override
  String phoneSetupStartFailed(String reason) {
    return '出了点问题：$reason';
  }

  @override
  String get phoneSetupStartEntryDetail => '直接在这里运行编程智能体，无需电脑。';

  @override
  String get phoneSetupStartCustomizeTitle => '选择要安装的内容';

  @override
  String get phoneSetupStartAddTitle => '添加工具';

  @override
  String get phoneSetupStartInstalled => '已安装';

  @override
  String phoneSetupStartTotals(String time, String size) {
    return '$time · ~$size';
  }

  @override
  String phoneSetupStartApproxSize(String size) {
    return '~$size';
  }

  @override
  String get phoneSetupStartNothingChosen => '尚未选择任何内容';

  @override
  String get phoneSetupStartDone => '完成';

  @override
  String get phoneSetupStartAdd => '添加';

  @override
  String get phoneSetupStartChecking => '正在检查已安装的内容…';

  @override
  String get phoneSetupPreflightUnsupportedHeadline => '这部手机无法运行';

  @override
  String phoneSetupPreflightUnsupportedBody(String abi) {
    return '本应用的 Ubuntu 只能在 64 位 Arm 或 Intel 手机上运行，而这部手机报告的是 $abi。';
  }

  @override
  String get phoneSetupPreflightLowMemoryHeadline => '这部手机的内存不够';

  @override
  String phoneSetupPreflightLowMemoryBody(int minimum, int actual) {
    final intl.NumberFormat minimumNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minimumString = minimumNumberFormat.format(minimum);
    final intl.NumberFormat actualNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String actualString = actualNumberFormat.format(actual);

    return 'OpenCode 需要至少 $minimumString MB 内存的手机，而这部手机只有 $actualString MB。请改在电脑上运行，并让这部手机连接到它。';
  }

  @override
  String phoneSetupPreflightMayBeSlow(int memory) {
    final intl.NumberFormat memoryNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String memoryString = memoryNumberFormat.format(memory);

    return '这部手机只有 $memoryString MB 内存，运行可能会比较慢。';
  }

  @override
  String get phoneSetupPreflightLowSpaceHeadline => '可用空间不足';

  @override
  String phoneSetupPreflightLowSpaceBody(String size) {
    return '请先在这部手机上腾出约 $size 空间，然后回来继续设置。';
  }

  @override
  String get phoneSetupPreflightOpenStorage => '打开存储设置';

  @override
  String phoneSetupOpenWelcomeRunning(int percent) {
    return '正在这部手机上设置 OpenCode · $percent%';
  }

  @override
  String phoneSetupOpenWelcomeStopped(int percent) {
    return '这部手机上的设置已完成 $percent%';
  }

  @override
  String get phoneSetupOpenWelcomeStoppedDetail => '继续后会从中断的地方接着进行。';

  @override
  String get phoneSetupOpenWelcomeShowProgress => '查看进度';

  @override
  String get phoneSetupOpenWelcomeContinue => '继续';

  @override
  String phoneSetupOpenPhoneRuntime(String name, String runtime) {
    return '$name · $runtime';
  }

  @override
  String get chatStartBuildWebPage => '做一个小网页';

  @override
  String get chatStartPythonScript => '写一个 Python 脚本，实现……';

  @override
  String get chatStartNodeProject => '创建一个 Node.js 项目';

  @override
  String get chatStartReadme => '写一个 README';

  @override
  String get chatStartExplainProject => '解释一下这个项目';

  @override
  String get chatStartWhatChanged => '最近有什么改动？';

  @override
  String get chatStartFindBug => '找出并修复一个 bug';

  @override
  String get chatStartAddTests => '添加测试';

  @override
  String get chatStartListFolder => '列出这个文件夹里有什么';

  @override
  String get chatStartEmptyFolder => '空文件夹';

  @override
  String chatStartItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 项',
    );
    return '$_temp0';
  }

  @override
  String get chatStartGit => 'Git';

  @override
  String chatStartChangeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 处更改',
    );
    return '$_temp0';
  }

  @override
  String get chatStartLooking => '正在查看文件夹…';

  @override
  String get chatStartServerFolder => '服务器文件夹';

  @override
  String get chatStartTip => '输入 / 使用命令 · 长按消息查看操作';

  @override
  String get chatLoadingConversation => '正在加载对话';

  @override
  String get chatLoadFailedTitle => '无法打开这个对话';

  @override
  String get chatLoadFailedBody => '没有丢失任何内容。OpenCode 恢复响应后请重试。';

  @override
  String get chatSendFailed => '你的消息没有发送出去';

  @override
  String get chatSendFailedKept => '它已放回输入框。';

  @override
  String get chatStartSuggestionsLabel => '开始方式';

  @override
  String get perfTraceTitle => 'Performance';

  @override
  String get perfTraceBody =>
      'How long each step took while the app has been open: connecting, loading, every request to the server. Kept in memory only and cleared when the app closes. The report holds names and timings, never messages or passwords.';

  @override
  String get perfTraceCopy => 'Copy timing report';

  @override
  String get perfTraceCopied => 'Performance report copied';

  @override
  String get perfTraceEmpty => 'Nothing measured yet.';

  @override
  String get perfTraceSlowest => 'Slowest steps';

  @override
  String get perfTraceRecent => 'Latest steps';

  @override
  String perfTraceStatLine(int count, String p50, String p95, String max) {
    return '$count× · typical $p50 · slow $p95 · longest $max';
  }

  @override
  String perfTraceFailed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count failed',
      one: '1 failed',
    );
    return '$_temp0';
  }

  @override
  String perfTraceAt(String time) {
    return 'at $time';
  }

  @override
  String perfTraceWithin(String parent) {
    return 'in $parent';
  }

  @override
  String get aiteamComponentTitle => 'AI Team';

  @override
  String aiteamComponentStageDownloading(String index, String total) {
    return '正在下载 AI Team · 第 $index 个，共 $total 个';
  }

  @override
  String get aiteamComponentStagePreparing => '正在准备 AI Team';

  @override
  String aiteamComponentAddingTitle(String names) {
    return '正在添加 $names';
  }

  @override
  String get aiteamComponentNotice => 'OpenCode 和 AI Team 正在此手机上运行';

  @override
  String get aiteamComponentSectionTitle => 'AI Team on this phone';

  @override
  String aiteamComponentOfferBody(String size) {
    return 'Several agents share the work on one project, right here. About $size to download.';
  }

  @override
  String get aiteamComponentAdd => 'Add AI Team';

  @override
  String aiteamComponentTurnOn(String project) {
    return 'Turn on AI Team for $project';
  }

  @override
  String get aiteamComponentTurnOnBody =>
      'The team works on its own branches and keeps a copy of the project\'s history on this phone.';

  @override
  String get aiteamComponentNoProject =>
      'Open a project first, then turn AI Team on for it.';

  @override
  String get aiteamComponentStageTeam => 'Getting the team ready';

  @override
  String aiteamComponentStageProject(String project) {
    return 'Adding $project';
  }

  @override
  String get aiteamComponentStageStarting => 'Starting AI Team';

  @override
  String get aiteamComponentStageWaiting => 'Waiting for AI Team to answer';

  @override
  String get aiteamComponentTurnOnExpectation =>
      'This takes about 5 to 10 minutes the first time. You can leave this screen; it keeps going.';

  @override
  String get aiteamComponentStartExpectation =>
      'This takes a few minutes. You can leave this screen; it keeps going.';

  @override
  String aiteamComponentStageSoFar(String time) {
    return '$time so far';
  }

  @override
  String aiteamComponentStageTook(String time) {
    return 'Took $time';
  }

  @override
  String get aiteamComponentRunning => 'AI Team · Running';

  @override
  String get aiteamComponentStopped => 'AI Team · Stopped';

  @override
  String aiteamComponentProjects(String projects) {
    return 'Works on $projects';
  }

  @override
  String get aiteamComponentStart => 'Start AI Team';

  @override
  String aiteamComponentFailed(String reason) {
    return 'AI Team could not start: $reason';
  }

  @override
  String get aiteamComponentFailedExited => 'it stopped on its own';

  @override
  String get aiteamComponentFailedTimeout => 'it did not answer in time';

  @override
  String get aiteamComponentShowDetails => 'Show details';

  @override
  String get aiteamComponentChildProcesses =>
      'Android stops an app\'s extra programs when it runs many at once, and a team runs several. If the team stops while it works, turn on Developer options › Disable child process restrictions.';

  @override
  String get workUnreviewed => 'Unreviewed';

  @override
  String get workMarkReviewed => 'Mark as reviewed';

  @override
  String get workMarkReviewedFailed =>
      'Couldn\'t mark it as reviewed. Try again.';

  @override
  String get workOtherProjects => 'Other projects';

  @override
  String get workAllProjects => 'All projects';

  @override
  String workOpenLiveConversation(String title) {
    return 'Open “$title”';
  }

  @override
  String workRunningCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Running · $count',
      one: 'Running',
    );
    return '$_temp0';
  }

  @override
  String get workLoadingLabel => '正在加载';

  @override
  String agentNotAnsweringPhone(String agent) {
    return '此手机上的 $agent 没有响应';
  }

  @override
  String get workServerNotAnsweringPhone => '此手机上的 OpenCode 没有响应';

  @override
  String workServerNotAnswering(String server) {
    return '$server 没有响应';
  }

  @override
  String get workServerKeepsTrying => '应用会在后台继续尝试。';

  @override
  String get workServerRestart => '重启';

  @override
  String get workServerRestartTitle => '在此手机上重启 OpenCode？';

  @override
  String get workServerRestartBody => '正在进行的智能体回合将会停止。你的对话会保留。';

  @override
  String get workStale => 'This may be out of date';

  @override
  String workRunaway(String duration) {
    return 'OpenCode 已空转忙碌 $duration';
  }

  @override
  String workRunawayInProject(String project, String duration) {
    return 'OpenCode 在 $project 中已空转忙碌 $duration';
  }

  @override
  String get connectStartingPhone => '正在这部手机上启动 OpenCode…';

  @override
  String get connectStartingBody => '你的对话会保留。这可能需要一分钟。';

  @override
  String aiteamBringInDone(String project, String commit) {
    return '$project has the team\'s latest work ($commit).';
  }

  @override
  String aiteamBringInDirty(String commit, String project, String files) {
    return 'The team\'s work ($commit) is not in $project yet: $project has changes of its own ($files), so it was left as it is.';
  }

  @override
  String aiteamBringInDiverged(String commit, String project) {
    return 'The team\'s work ($commit) is not in $project: $project has commits of its own. Merge the two with git.';
  }

  @override
  String aiteamBringInFailed(String project, String reason) {
    return 'The team\'s work could not be brought into $project: $reason';
  }

  @override
  String aiteamBringInAction(String project) {
    return 'Bring the team\'s work into $project';
  }

  @override
  String get teamUiHostPhrasePhone => 'On this phone';

  @override
  String teamUiHostPhraseComputerNamed(String name) {
    return 'On $name';
  }

  @override
  String get teamUiHostPhraseComputer => 'On your computer';

  @override
  String get teamUiHostPhrasePaused => 'Paused';

  @override
  String get teamUiHostPhraseNotAnswering => 'Not answering';

  @override
  String teamUiTaskSteps(int done, int total) {
    String _temp0 = intl.Intl.pluralLogic(
      total,
      locale: localeName,
      other: '$done of $total steps done',
      one: '$done of 1 step done',
    );
    return '$_temp0';
  }

  @override
  String teamUiTaskDoneAgo(String when) {
    return 'Done $when';
  }

  @override
  String teamUiTaskMergedAgo(String when) {
    return 'Done · merged $when';
  }

  @override
  String teamUiTaskCancelledAgo(String when) {
    return 'Cancelled $when';
  }

  @override
  String teamUiHomeDoneMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Show $count more',
      one: 'Show 1 more',
    );
    return '$_temp0';
  }

  @override
  String get teamUiHomeSearchClose => 'Close search';

  @override
  String get teamUiHomeNeedsYouAnswer => 'Answer';

  @override
  String get teamUiHomeNeedsYouFallbackTitle => 'The team has a question';

  @override
  String teamUiHomeNeedsYouAnnouncement(String question) {
    return 'Needs you: $question';
  }

  @override
  String get teamUiAgentRoleWorker => 'Worker';

  @override
  String get teamUiAgentRoleReviewer => 'Reviewer';

  @override
  String get teamUiAgentRolePlanner => 'Planner';

  @override
  String get teamUiAgentRoleSupervisor => 'Supervisor';

  @override
  String get teamUiAgentRoleHelper => 'Helper';

  @override
  String get teamUiAgentRoleOther => 'Agent';

  @override
  String get teamUiRunStageWaiting => 'Planned';

  @override
  String get teamUiRunStageWorking => 'Working';

  @override
  String get teamUiRunStageReviewing => 'In review';

  @override
  String get teamUiRunStageDone => 'Merged';

  @override
  String teamUiRunStageSemantics(int position, String stage) {
    return 'Stage $position of 4: $stage';
  }

  @override
  String get teamUiRunStepsHeading => 'Steps';

  @override
  String get teamUiRunDetailsUsage => 'Usage';

  @override
  String get serverRowConnected => '已连接';

  @override
  String phoneServerRowStatus(String runtime, String state) {
    return '$runtime · $state';
  }

  @override
  String get phoneServerRowRestarting => '正在重启';

  @override
  String get phoneServerRowNotAnswering => '没有响应';

  @override
  String get phoneServerRowNotRunning => '未运行';

  @override
  String get phoneServerRowDetails => '详情';

  @override
  String get localAgentRowOptional => 'Optional';

  @override
  String get localAgentPageTitle => 'Claude Code';

  @override
  String get managedRecoveryRowTitle => 'Restart after a crash';

  @override
  String get managedRecoveryRowDetail =>
      'Up to 3 tries, only while this app is open. It never installs or updates.';

  @override
  String get pluginsTeamRowTitle => 'AI Team';

  @override
  String pluginsTeamRowFound(String server) {
    return 'Found on $server';
  }

  @override
  String get pluginsLoading => 'Loading plugins';

  @override
  String get pluginsBuiltinGroup => 'Built in';

  @override
  String pluginsBuiltinActive(int count) {
    return '$count active';
  }

  @override
  String pluginsBuiltinFailed(int count) {
    return '$count failed to load';
  }

  @override
  String get pluginsStatusFailedToLoad => 'Failed to load';

  @override
  String get pluginsDetailsId => 'ID';

  @override
  String get localTerminalSourcePhone => '内置 Linux';

  @override
  String get localTerminalSourceServer => 'OpenCode 服务器';

  @override
  String localTerminalShellName(int number) {
    return 'Shell $number';
  }

  @override
  String localTerminalShellEnded(String name) {
    return '$name · ended';
  }

  @override
  String get localTerminalNewShell => 'New shell';

  @override
  String get localTerminalStopShell => 'Stop this shell';

  @override
  String get localTerminalCloseShell => 'Close this shell';

  @override
  String get localTerminalStopBody => 'Programs running in it stop too.';

  @override
  String get localTerminalStop => 'Stop';

  @override
  String get localTerminalStarting => '正在启动 shell';

  @override
  String get localTerminalNotSetUpTitle => 'Linux isn\'t set up on this phone';

  @override
  String get localTerminalNotSetUpBody =>
      'The terminal runs in the Linux that phone setup installs.';

  @override
  String get localTerminalEndedTitle => 'The shell ended';

  @override
  String localTerminalEndedBody(int code) {
    return 'It exited with code $code.';
  }

  @override
  String get localTerminalRestart => 'Restart';

  @override
  String get localTerminalFailedTitle => 'shell 未能启动';

  @override
  String get localTerminalFailedBody => '请重试。如果仍然失败，可在“详情”中查看原因。';

  @override
  String get localTerminalTryAgain => 'Try again';

  @override
  String localTerminalCost(int perShell, int limit) {
    return 'Each shell runs $perShell programs. With AI Team on, Android may stop the app\'s programs past $limit.';
  }

  @override
  String localTerminalCostNow(int perShell, int count, int limit) {
    return 'Each shell runs $perShell programs. With AI Team on, the app runs $count; Android may stop them past $limit.';
  }

  @override
  String get localTerminalKeysLabel => '终端按键';

  @override
  String get localTerminalKeyCtrl => 'Control';

  @override
  String get localTerminalKeyAlt => 'Alt';

  @override
  String get localTerminalKeyPageUp => '向上翻页';

  @override
  String get localTerminalKeyPageDown => '向下翻页';

  @override
  String get localTerminalSemantics => '此手机上的终端。点按即可输入；长按可选择文字。';

  @override
  String get phoneServerTermuxTitle => 'Termux';

  @override
  String get workNotAnsweringListTitle => 'Your conversations will be back';

  @override
  String get workNotAnsweringListBody =>
      'They show here again as soon as the server answers.';

  @override
  String get globalSessionsLoadFailedTitle => 'Couldn\'t load conversations';

  @override
  String get filesLoadFailedTitle => '无法打开此文件夹';

  @override
  String get filesSymbolsFailedTitle => '无法搜索符号';

  @override
  String get terminalListFailedTitle => '无法列出终端';

  @override
  String get addServerConnectTo => '连接到';

  @override
  String get addServerTypeOpenCode => '电脑上的 OpenCode';

  @override
  String get addServerTypeOpenCodeDetail => '使用配对码，或输入其地址';

  @override
  String get addServerTypeCodex => 'Codex';

  @override
  String get addServerTypeCodexDetail => '你电脑上的 Codex app-server';

  @override
  String get addServerTypePaseo => 'Claude Code 或 Pi';

  @override
  String get addServerTypePaseoDetail => '通过你电脑上的 Paseo';

  @override
  String get addServerScan => '扫描代码';

  @override
  String get addServerPaste => '粘贴代码';

  @override
  String get addServerManual => '改为输入地址';

  @override
  String get addServerChecking => '正在检查连接…';

  @override
  String addServerCheckingHost(String host) {
    return '正在检查 $host…';
  }

  @override
  String addServerConnectingHost(String host) {
    return '正在连接到 $host…';
  }

  @override
  String get addServerSaveAnyway => '仍然保存';

  @override
  String get appearanceDisplaySection => '显示';

  @override
  String get effectsSection => '效果';

  @override
  String get effectsAnimations => '动效';

  @override
  String get effectsMotionFull => '完整';

  @override
  String get effectsMotionFullHint => '图形会动，等待页面会有呼吸效果，完成时会有庆祝效果';

  @override
  String get effectsMotionCalm => '平静';

  @override
  String get effectsMotionCalmHint => '图形直接出现，没有持续的动效，也没有庆祝效果';

  @override
  String get effectsMotionOff => '关闭';

  @override
  String get effectsMotionOffHint => '所有内容立即显示';

  @override
  String get effectsMotionSystemOff => '你手机的“移除动画”已开启，因此无论在此如何选择，都不会有动效';

  @override
  String get effectsActivityGlow => '回复时边框发光';

  @override
  String get effectsActivityGlowHint => '生成回复时，输入框周围会有发光的边框环绕';

  @override
  String get effectsSaveFailed => '无法在此设备上保存该选项。请重试。';

  @override
  String get teamDiscoverEntryTitle => 'Give a bigger job to a team';

  @override
  String get teamDiscoverIntroBody =>
      'Describe what you want done. A team of agents splits it into steps, works on them side by side and brings the finished work into your project.';

  @override
  String get teamDiscoverHowHeading => 'How it works';

  @override
  String get teamDiscoverStepPlanTitle => 'It plans';

  @override
  String get teamDiscoverStepPlanBody =>
      'A planner splits your job into steps.';

  @override
  String get teamDiscoverStepWorkTitle => 'It works';

  @override
  String get teamDiscoverStepWorkBody =>
      'Workers take the steps, each on its own copy of the project.';

  @override
  String get teamDiscoverStepCheckTitle => 'It checks';

  @override
  String get teamDiscoverStepCheckBody =>
      'A reviewer looks over each step\'s work.';

  @override
  String get teamDiscoverStepMergeTitle => 'It merges';

  @override
  String get teamDiscoverStepMergeBody =>
      'Finished work lands in your project. When it needs a decision, it asks you.';

  @override
  String get teamDiscoverNeedsPhone => 'What it needs on this phone';

  @override
  String teamDiscoverNeedsServer(String server) {
    return 'What it needs on $server';
  }

  @override
  String teamDiscoverDownloadTitle(String size) {
    return 'About $size to download';
  }

  @override
  String get teamDiscoverInAppDownloadBody =>
      'Installed once, next to OpenCode on this phone.';

  @override
  String get teamDiscoverTermuxDownloadBody =>
      'Installed into Termux, next to OpenCode.';

  @override
  String get teamDiscoverBatteryTitle => 'More battery while it works';

  @override
  String get teamDiscoverInAppBatteryBody =>
      'Several agents run at once, and Android may stop some if it runs too many.';

  @override
  String get teamDiscoverTermuxBatteryBody =>
      'Keep Termux open while it works; Android may stop it in the background. Nothing is lost.';

  @override
  String get teamDiscoverProjectTitle => 'You choose the projects';

  @override
  String get teamDiscoverProjectBody =>
      'Turn it on for each project you want it to work on.';

  @override
  String teamDiscoverComputerTitle(String server) {
    return 'Runs on $server';
  }

  @override
  String get teamDiscoverComputerBody =>
      'Install Gas City there once; the app finds it by itself.';

  @override
  String get teamDiscoverSpeedTitle => 'As fast as your computer';

  @override
  String get teamDiscoverSpeedBody => 'Keep it awake while the team works.';

  @override
  String teamDiscoverLooking(String server) {
    return 'Looking for it on $server…';
  }

  @override
  String get teamDiscoverFoundBody => 'It is ready to turn on.';

  @override
  String get teamDiscoverEnterAddress => 'Enter its address';

  @override
  String get teamDiscoverOnComputer => 'Run it on a computer';

  @override
  String get teamDiscoverTurningOn => 'Turning on…';

  @override
  String get teamDiscoverComputerChoiceTitle => 'A team on a computer';

  @override
  String get teamDiscoverComputerChoiceBody =>
      'Use Gas City on a computer instead';

  @override
  String get teamNowChecksEveryMinute => 'the team checks every minute';

  @override
  String teamNowChecksEvery(String minutes) {
    return 'the team checks every $minutes min';
  }

  @override
  String get teamNowNextCheck => 'a worker starts at the team\'s next check';

  @override
  String get teamNowNoWorkerStarted => 'no worker has started';

  @override
  String get teamNowPausedLine =>
      'The team is paused · nothing starts until you resume it';

  @override
  String get teamNowStartWorker => 'Start a worker';

  @override
  String get teamNowWhy => 'Why?';

  @override
  String get teamAgentDidNotStartTitle => 'The worker didn\'t start';

  @override
  String get teamAgentDidNotStartBody =>
      'A task is waiting, but this worker isn\'t running.';

  @override
  String get teamAgentStartIt => 'Start it';

  @override
  String teamOutputNotRunning(String name) {
    return '$name isn\'t running, so there is no output';
  }

  @override
  String get teamOutputSilent =>
      'No output yet · it can take a minute to start';

  @override
  String teamAgentTitle(String role, String name) {
    return '$role · $name';
  }

  @override
  String teamAgentWorksOn(String title) {
    return 'On “$title”';
  }

  @override
  String teamOutputStartingPhone(String age) {
    return 'Starting up · $age so far · this can take a few minutes on a phone';
  }

  @override
  String get teamNewModeSolo => 'Solo';

  @override
  String get teamNewModeTeam => 'Team';

  @override
  String get teamNewTask => 'New team task';

  @override
  String get teamTaskMark => 'Team';

  @override
  String get chatWatchEmptyTitle => 'Nothing here yet';

  @override
  String get chatWatchEmptyBody =>
      'This conversation fills in as the agent works.';

  @override
  String teamWatchBanner(String name, String role, String state) {
    return 'Watching $name · $role · $state';
  }

  @override
  String teamWatchBannerRole(String role, String state) {
    return 'Watching $role · $state';
  }

  @override
  String get teamWatchFallbackUnreadable =>
      'Its conversation can\'t be read from the server this app is connected to, so this is the team\'s live output.';

  @override
  String get teamWatchFallbackNotFound =>
      'Its conversation isn\'t on the server this app is connected to yet (it may still be starting, or the team runs on another computer), so this is the team\'s live output.';

  @override
  String get teamOpenConversation => 'Open conversation';

  @override
  String teamOpenConversationHint(String name) {
    return 'Watch $name\'s work in the chat';
  }

  @override
  String get teamOpenConversationFinding => 'Finding its conversation…';

  @override
  String get teamChatUntitled => 'Team task';

  @override
  String teamChatSubtitle(String host) {
    return 'AI Team · $host';
  }

  @override
  String get teamChatOpenTeam => 'AI Team';

  @override
  String get teamChatTaskDetails => 'Task details';

  @override
  String get teamChatStopTask => 'Stop task';

  @override
  String get teamChatStopConfirmTitle => 'Stop this task?';

  @override
  String teamChatStopConfirmBody(String task) {
    return '“$task” stops on the team\'s computer. Its workers still running stop now; work already finished stays. This cannot be undone from the phone.';
  }

  @override
  String get teamChatStopKeepRunning => 'Keep running';

  @override
  String get teamChatLoading => 'Loading the task';

  @override
  String get teamChatLeadName => 'The team';

  @override
  String get teamChatLeadSent => 'Sent to the team';

  @override
  String get teamChatLeadNothingYet =>
      'Nothing yet. The team has not planned this task.';

  @override
  String teamChatLeadPlanned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Planned $count steps',
      one: 'Planned 1 step',
    );
    return '$_temp0';
  }

  @override
  String teamChatLeadRouted(String title) {
    return 'Sent “$title” to the workers';
  }

  @override
  String teamChatLeadStarting(String title) {
    return 'Worker started on “$title”';
  }

  @override
  String teamChatLeadClaimedWorker(String title) {
    return 'Worker took “$title”';
  }

  @override
  String teamChatLeadPushed(String title) {
    return 'Changes for “$title” are on a branch';
  }

  @override
  String teamChatLeadReview(String title) {
    return 'Handed “$title” to review';
  }

  @override
  String teamChatLeadMerged(String title) {
    return 'Merged “$title”';
  }

  @override
  String teamChatLeadStepFailed(String title) {
    return '“$title” failed';
  }

  @override
  String teamChatLeadStepCancelled(String title) {
    return '“$title” was cancelled';
  }

  @override
  String teamChatLeadNeedsYou(String question) {
    return 'Needs you: $question';
  }

  @override
  String get teamChatLeadTaskMerged => 'Merged. The task is done.';

  @override
  String get teamChatLeadTaskFinished => 'The task is done.';

  @override
  String get teamChatLeadTaskFailed => 'The task failed.';

  @override
  String get teamChatLeadTaskCancelled => 'The task was cancelled.';

  @override
  String get teamChatAWorker => 'A worker';

  @override
  String teamChatStepsSummary(int count, int done) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count steps',
      one: '1 step',
    );
    return '$_temp0 · $done done';
  }

  @override
  String get teamChatComposerHint => 'Message the team…';

  @override
  String teamChatComposerGoesTo(String name) {
    return 'Your message goes to $name';
  }

  @override
  String get teamChatComposerNobody =>
      'No agent is on this task to message yet.';

  @override
  String get teamChatComposerCannot =>
      'This team can\'t be messaged from here.';

  @override
  String get teamBoardTitle => 'Board';

  @override
  String get teamBoardOpenTooltip => 'Board';

  @override
  String get teamBoardColumnBacklog => 'Backlog';

  @override
  String get teamBoardColumnReady => 'Ready';

  @override
  String get teamBoardColumnWorking => 'Working';

  @override
  String get teamBoardColumnReview => 'Review';

  @override
  String get teamBoardColumnDone => 'Done';

  @override
  String get teamBoardEmptyBacklogTitle => 'Nothing waiting';

  @override
  String get teamBoardEmptyBacklogBody =>
      'Tasks you add but haven\'t started wait here.';

  @override
  String get teamBoardEmptyReadyTitle => 'Nothing queued';

  @override
  String get teamBoardEmptyReadyBody =>
      'Tasks given to the team wait here for a worker.';

  @override
  String get teamBoardEmptyWorkingTitle => 'Nobody is working';

  @override
  String get teamBoardEmptyWorkingBody =>
      'A task moves here when a worker picks it up.';

  @override
  String get teamBoardEmptyReviewTitle => 'Nothing to review';

  @override
  String get teamBoardEmptyReviewBody =>
      'Finished work waits here for its check and merge.';

  @override
  String get teamBoardEmptyDoneTitle => 'Nothing finished this week';

  @override
  String get teamBoardEmptyDoneBody =>
      'Merged, done and cancelled tasks from the last 7 days show here.';

  @override
  String get teamBoardEmptyTitle => 'No tasks yet';

  @override
  String get teamBoardEmptyBody =>
      'Tasks you give the team show up here, by where they stand.';

  @override
  String get teamBoardPriorityUrgent => 'Urgent';

  @override
  String get teamBoardPriorityHigh => 'High';

  @override
  String get teamBoardPriorityNormal => 'Normal';

  @override
  String get teamBoardPriorityLow => 'Low';

  @override
  String get teamBoardPrioritySomeday => 'Someday';

  @override
  String get teamBoardTypeBug => 'Bug';

  @override
  String get teamBoardTypeFeature => 'Feature';

  @override
  String get teamBoardTypeEpic => 'Epic';

  @override
  String get teamBoardTypeChore => 'Chore';

  @override
  String teamBoardEpicProgress(int done, int total) {
    return '$done of $total done';
  }

  @override
  String get teamBoardFlagNeedsYou => 'Needs you';

  @override
  String get teamBoardFlagBlocked => 'Blocked';

  @override
  String teamBoardFlagBlockedBy(String title) {
    return 'Blocked by $title';
  }

  @override
  String teamBoardFlagBlockedByMore(String title, int count) {
    return 'Blocked by $title + $count more';
  }

  @override
  String get teamBoardFlagFailed => 'Stopped with an error';

  @override
  String teamBoardFlagInEpic(String epic) {
    return 'In $epic';
  }

  @override
  String teamBoardFlagMoving(String column) {
    return 'Moving to $column…';
  }

  @override
  String get teamBoardFlagCancelled => 'Cancelled';

  @override
  String get teamBoardMoveMenuTooltip => 'Move or change';

  @override
  String teamBoardMoveSheetWhere(String column) {
    return 'In $column';
  }

  @override
  String get teamBoardMoveStartNow => 'Start now';

  @override
  String get teamBoardMoveStartNowHint => 'Give it to the team\'s workers';

  @override
  String get teamBoardMoveBackToBacklog => 'Move back to Backlog';

  @override
  String get teamBoardMoveBackToBacklogHint =>
      'The team won\'t pick it up until you start it';

  @override
  String get teamBoardMovePriority => 'Priority';

  @override
  String get teamBoardMoveCancel => 'Cancel task';

  @override
  String get teamBoardMoveCancelHint => 'Moves it to Done as cancelled';

  @override
  String get teamBoardMoveReopen => 'Put back in Backlog';

  @override
  String get teamBoardMoveReopenHint => 'Nobody works on it until you start it';

  @override
  String get teamBoardOpenConversation => 'Open conversation';

  @override
  String get teamBoardOpenDetails => 'Open details';

  @override
  String get teamBoardTeamMoves =>
      'The team moves this task. Open its conversation to message the team or stop it.';

  @override
  String get teamBoardReadOnlyNote =>
      'This host doesn\'t let the app change tasks, so the board is read-only here.';

  @override
  String get teamBoardStatusReadOnly =>
      'Read-only here · this host doesn\'t let the app change tasks';

  @override
  String teamBoardCancelTitle(String title) {
    return 'Cancel “$title”?';
  }

  @override
  String get teamBoardCancelBody =>
      'The team won\'t work on it. It moves to Done as cancelled, and you can put it back in the Backlog later.';

  @override
  String get teamBoardCancelKeep => 'Keep it';

  @override
  String teamBoardMoveFailedTitle(String title) {
    return 'Couldn\'t change “$title”';
  }

  @override
  String get teamBoardMoveFailedBody =>
      'The team\'s host said no, so it stays where it was.';

  @override
  String get teamBoardPriorityTitle => 'Priority';

  @override
  String get teamBoardAddFailed =>
      'Couldn\'t add it. The team\'s host said no.';

  @override
  String get teamBoardProjectTooltip => 'Choose project';

  @override
  String appExitForceStopped(String time) {
    return 'OpenCode Mobile 已关闭 $time';
  }

  @override
  String appExitLowMemory(String time) {
    return 'Android 为释放内存关闭了 OpenCode Mobile $time';
  }

  @override
  String appExitCrashed(String time) {
    return 'OpenCode Mobile 意外停止 $time';
  }

  @override
  String appExitKilled(String time) {
    return 'Android 已停止 OpenCode Mobile $time';
  }

  @override
  String appExitServerStopped(String what) {
    return '$what。手机上的 OpenCode 随之停止，正在重新启动。';
  }

  @override
  String appExitServerAndTeamStopped(String what) {
    return '$what。手机上的 OpenCode 和 AI Team 随之停止，正在重新启动。';
  }

  @override
  String appExitServerStoppedManual(String what) {
    return '$what。手机上的 OpenCode 随之停止。准备好后请再次启动。';
  }

  @override
  String appExitServerAndTeamStoppedManual(String what) {
    return '$what。手机上的 OpenCode 和 AI Team 随之停止。准备好后请再次启动它们。';
  }

  @override
  String appExitServerBack(String what) {
    return '$what。手机上的 OpenCode 随之停止，现已重新运行。';
  }

  @override
  String appExitServerBackTeam(String what) {
    return '$what。手机上的 OpenCode 和 AI Team 随之停止；OpenCode 现已重新运行。';
  }

  @override
  String appExitAtTime(String time) {
    return '于 $time';
  }

  @override
  String appExitOnDay(String day, String time) {
    return '于 $day $time';
  }

  @override
  String get appExitSwitchToPhone => '切换到此手机';

  @override
  String get appExitKeepRunning => '保持运行';

  @override
  String get keepRunningTitle => '在后台保持运行';

  @override
  String get keepRunningRowSubtitle =>
      'What to allow so your phone doesn\'t close the app';

  @override
  String get keepRunningIntro =>
      '手机上的 OpenCode 和 AI Team 都在此应用内运行，因此 Android 关闭应用时它们也会停止。在这部手机上，请允许以下项：';

  @override
  String get keepRunningSwipeWarning =>
      '这部手机会关闭你从最近任务中划掉的应用，即使它正在工作。请在那里锁定它，而不是划掉。';

  @override
  String get keepRunningBatteryTitle => '不优化电池';

  @override
  String get keepRunningBatteryDetail => '让应用在你使用其他应用时继续运行。';

  @override
  String get keepRunningBatteryDone => '已允许';

  @override
  String get keepRunningLockTitle => '在最近任务中锁定';

  @override
  String get keepRunningLockNubia =>
      '打开“最近任务”，将 OpenCode Mobile 的卡片向下拉，直到出现锁图标。';

  @override
  String get keepRunningLockSamsung =>
      '打开“最近任务”，点按卡片上方的 OpenCode Mobile 图标，然后选择“保持打开”。';

  @override
  String get keepRunningLockOther => '打开“最近任务”，长按 OpenCode Mobile 的卡片，然后点按锁图标。';

  @override
  String get keepRunningAutostartTitle => '允许自启动';

  @override
  String get keepRunningAutostartDetail => '为 OpenCode Mobile 开启，避免手机在后台将其停止。';

  @override
  String get keepRunningAutostartHuawei =>
      '在“应用启动管理”中，将 OpenCode Mobile 设为“手动管理”，并开启全部三个开关。';

  @override
  String get keepRunningBackgroundTitle => '允许后台活动';

  @override
  String get keepRunningBackgroundXiaomi => '在“应用信息 › 省电策略”中，选择“无限制”。';

  @override
  String get keepRunningBackgroundOppo => '在“应用信息 › 耗电管理”中，允许后台活动。';

  @override
  String get keepRunningBackgroundVivo => '在“应用信息 › 电池”中，允许后台高耗电。';

  @override
  String get keepRunningBackgroundSamsung =>
      '在“应用信息 › 电池”中，选择“无限制”，并确保应用不在“休眠应用”中。';

  @override
  String get keepRunningBackgroundOther => '在“应用信息 › 电池”中，选择“无限制”或允许后台运行。';

  @override
  String get keepRunningOpen => '打开';

  @override
  String get keepRunningOpenFailed =>
      '这部手机没有该界面。请改为打开“设置 › 应用 › OpenCode Mobile”。';

  @override
  String get keepRunningFootnote =>
      '如果 Android 仍然关闭应用，下次打开时它会重新启动你手机上的 OpenCode。';

  @override
  String get keepRunningThisPhone => '手机';

  @override
  String teamAgentLastStep(String step) {
    return 'Last step: $step';
  }

  @override
  String teamAgentLastActive(String elapsed) {
    return 'active $elapsed ago';
  }

  @override
  String teamChatLeadEarlier(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count earlier updates',
      one: '1 earlier update',
    );
    return '$_temp0';
  }

  @override
  String get thermalPausedNotice => '手机过热，已暂停 AI Team 以降温。它会自动恢复。';

  @override
  String get thermalStoppedNotice =>
      '手机非常烫，已停止 AI Team 以保护设备。其工作会保留，手机降温后会再次启动。';

  @override
  String get thermalResumedNotice => '已恢复 AI Team，手机已降温。';

  @override
  String get thermalGuardSetting => '手机过热时暂停 AI Team';

  @override
  String get thermalGuardSettingDetail => '团队会暂停并保留已完成的工作，待手机降温后自动恢复。';

  @override
  String get kitSheetClose => '关闭';

  @override
  String get kitSheetDismiss => '关闭';

  @override
  String get kitSheetLoading => '正在加载';

  @override
  String get kitConfirmCancel => '取消';

  @override
  String get kitConfirmKeepRunning => '保持运行';

  @override
  String get kitConfirmKeepEditing => '继续编辑';

  @override
  String kitConfirmTypeName(String name) {
    return '输入 $name 以确认';
  }

  @override
  String get kitConfirmTypeNameReason => '请按所示原样输入名称以启用。';

  @override
  String get kitConfirmFailed => '没有完成，你可以再试一次。';

  @override
  String get kitTryAgain => '重试';

  @override
  String get kitDetails => '详情';

  @override
  String get kitDiscardTitle => '要丢弃你的更改吗？';

  @override
  String get kitDiscardBody => '你在这里所做的更改尚未保存。丢弃后无法恢复。';

  @override
  String get kitDiscardConfirm => '丢弃更改';

  @override
  String get kitCopied => '已复制';

  @override
  String get kitMore => '更多';

  @override
  String kitChipRemove(String label) {
    return '移除 $label';
  }

  @override
  String get kitCopy => '复制';

  @override
  String get kitWorking => '处理中';

  @override
  String get kitImageUnavailable => 'Can\'t show this image';

  @override
  String get kitZoomIn => 'Zoom in';

  @override
  String get kitZoomOut => 'Zoom out';

  @override
  String get kitZoomReset => 'Reset zoom';

  @override
  String get kitZoomFit => 'Fit to screen';

  @override
  String get kitZoomAtStart => 'Already at full view';

  @override
  String get kitZoomAtMax => 'Largest zoom';

  @override
  String kitZoomLevel(String percent) {
    return '$percent %';
  }

  @override
  String kitZoomShortcut(String action, String key) {
    return '$action · Ctrl+$key';
  }

  @override
  String get kitMenu => '菜单';

  @override
  String get kitCopyDetails => '复制详情';

  @override
  String get kitReportProblem => '报告问题';

  @override
  String kitProgressStep(int step, int of) {
    final intl.NumberFormat stepNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String stepString = stepNumberFormat.format(step);
    final intl.NumberFormat ofNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String ofString = ofNumberFormat.format(of);

    return '第 $stepString 步，共 $ofString 步';
  }

  @override
  String kitProgressEtaSeconds(int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    String _temp0 = intl.Intl.pluralLogic(
      seconds,
      locale: localeName,
      other: '约剩 $secondsString 秒',
    );
    return '$_temp0';
  }

  @override
  String kitProgressEtaMinutes(int minutes) {
    final intl.NumberFormat minutesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '约剩 $minutesString 分钟',
    );
    return '$_temp0';
  }

  @override
  String kitProgressEtaHours(int hours) {
    final intl.NumberFormat hoursNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String hoursString = hoursNumberFormat.format(hours);

    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '约剩 $hoursString 小时',
    );
    return '$_temp0';
  }

  @override
  String get kitQrTooLong => '内容太长，无法生成二维码。请改为复制链接。';

  @override
  String kitSinceStillWaiting(int seconds) {
    final intl.NumberFormat secondsNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String secondsString = secondsNumberFormat.format(seconds);

    return 'Still waiting after $secondsString s';
  }

  @override
  String kitSinceWaitingFor(int minutes) {
    final intl.NumberFormat minutesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Waiting $minutesString min',
      one: 'Waiting 1 min',
      zero: 'Waiting less than a minute',
    );
    return '$_temp0';
  }

  @override
  String kitSinceAge(int minutes) {
    final intl.NumberFormat minutesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString min',
      one: '1 min',
      zero: 'less than a minute',
    );
    return '$_temp0';
  }

  @override
  String get kitMarkWaiting => '等待中';

  @override
  String get kitMarkWorking => '工作中';

  @override
  String get kitMarkDone => '已完成';

  @override
  String get kitMarkFailed => '失败';

  @override
  String get kitMarkPaused => '已暂停';

  @override
  String get kitTaskNeedsYou => '需要你处理';

  @override
  String get kitTaskStopped => '已停止';

  @override
  String get kitSwatchInUse => '使用中';

  @override
  String get kitThemePreviewTitle => '修复登录错误';

  @override
  String get kitThemePreviewWorking => '进行中 · 2 分钟';

  @override
  String get kitThemePreviewNeedsYou => '需要你处理';

  @override
  String get kitThemePreviewPrimary => '发送';

  @override
  String get kitThemePreviewSecondary => '附加';

  @override
  String get kitThemePreviewSegment => '开';

  @override
  String get kitThemePreviewCode => 'final ready = true;';

  @override
  String get kitTerminalViewKeySlash => '斜杠键';

  @override
  String get kitTerminalViewKeyDash => '连字符键';

  @override
  String get kitTerminalViewKeyPipe => '竖线键';

  @override
  String get kitTerminalViewKeyTilde => '波浪号键';

  @override
  String get kitTerminalViewKeyHome => 'Home 键';

  @override
  String get kitTerminalViewKeyEnd => 'End 键';

  @override
  String kitTerminalViewShowingLast(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '显示最后 $countString 行',
      one: '显示最后一行',
    );
    return '$_temp0';
  }

  @override
  String get kitUndoAction => '撤销';

  @override
  String kitUndoFailed(String message) {
    return '无法撤销。$message';
  }

  @override
  String get kitUndoWorking => '正在撤销';

  @override
  String get kitTermHint => 'Explanation available';

  @override
  String get kitTermShow => 'Show explanation';

  @override
  String get kitTermClose => 'Close explanation';

  @override
  String kitFieldShowNamed(String label) {
    return '显示$label';
  }

  @override
  String kitFieldHideNamed(String label) {
    return '隐藏$label';
  }

  @override
  String get kitFieldPaste => '粘贴';

  @override
  String get kitFieldSaved => '已保存';

  @override
  String get kitFieldReplace => '替换';

  @override
  String get kitFieldChecking => '正在检查…';

  @override
  String kitFieldStillChecking(int seconds) {
    return '已检查 $seconds 秒，仍在进行';
  }

  @override
  String kitFieldCount(int count, int max) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);
    final intl.NumberFormat maxNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String maxString = maxNumberFormat.format(max);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString/$maxString',
      one: '1/$maxString',
    );
    return '$_temp0';
  }

  @override
  String get kitFieldLimitReached => '已达上限';

  @override
  String get kitFieldErrorLabel => '错误';

  @override
  String get kitTappableShowActions => '显示操作';

  @override
  String kitWorkRead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '读取了 $count 个文件',
    );
    return '$_temp0';
  }

  @override
  String kitWorkSearched(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '搜索了 $count 次',
    );
    return '$_temp0';
  }

  @override
  String kitWorkListed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '列出了 $count 个文件夹',
    );
    return '$_temp0';
  }

  @override
  String kitWorkEdited(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '编辑了 $count 个文件',
    );
    return '$_temp0';
  }

  @override
  String kitWorkRan(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '运行了 $count 条命令',
    );
    return '$_temp0';
  }

  @override
  String kitWorkFetched(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '获取了 $count 个网页',
    );
    return '$_temp0';
  }

  @override
  String kitWorkDelegated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '委派了 $count 个任务',
    );
    return '$_temp0';
  }

  @override
  String kitWorkOther(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '其他 $count 个步骤',
    );
    return '$_temp0';
  }

  @override
  String kitWorkNotRun(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个未运行',
    );
    return '$_temp0';
  }

  @override
  String kitWorkSteps(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个步骤',
    );
    return '$_temp0';
  }

  @override
  String get kitWorkSeparator => ' · ';

  @override
  String get kitWorkWaitingForYou => '等待你处理';

  @override
  String get kitWorkStopped => '已停止';

  @override
  String get kitWorkDidntFinish => '未完成';

  @override
  String get kitWorkWorking => '工作中';

  @override
  String kitWorkEarlierSteps(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '显示更早的 $count 个步骤',
    );
    return '$_temp0';
  }

  @override
  String get kitReceiptSending => '正在发送…';

  @override
  String get kitReceiptSent => '已发送';

  @override
  String get kitReceiptConfirmed => '已完成';

  @override
  String get kitReceiptNotConfirmed => '尚未确认';

  @override
  String get kitReceiptRefused => '未被接受';

  @override
  String kitReceiptRefusedReason(String reason) {
    return '未被接受：$reason';
  }

  @override
  String kitReceiptAnsweredElsewhere(String where) {
    return '已在 $where 上回答';
  }

  @override
  String get kitReceiptAnsweredElsewhereUnknown => '已在另一台设备上回答';

  @override
  String kitReceiptActRefusedReason(String act, String reason) {
    return '$act：$reason';
  }

  @override
  String kitReceiptAt(String time) {
    return '于 $time';
  }

  @override
  String get kitDetailsHide => '隐藏详情';

  @override
  String get kitCopyAll => '全部复制';

  @override
  String kitCopyValue(String label) {
    return '复制$label';
  }

  @override
  String kitDetailsShowAll(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '显示全部 $count 行',
    );
    return '$_temp0';
  }

  @override
  String kitDetailsValueSpoken(String label, String value) {
    return '$label：$value';
  }

  @override
  String get kitProgressRowLoading => '加载中';

  @override
  String kitProgressRowPercent(int percent) {
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return '$percentString%';
  }

  @override
  String get kitProgressRowNearLimit => '接近上限';

  @override
  String get kitProgressRowAtLimit => '已达上限';

  @override
  String kitProgressRowAsOf(String time) {
    return '截至 $time';
  }

  @override
  String get kitProgressRowOther => '其他';

  @override
  String get kitModelServerDefault => '服务器默认';

  @override
  String get kitModelSignIn => '登录以使用模型';

  @override
  String get kitModelChoose => '选择模型';

  @override
  String get kitModelChange => '更换模型';

  @override
  String get kitModelActions => '模型快捷操作';

  @override
  String kitModelContext(String percent) {
    return '$percent %';
  }

  @override
  String get kitModelContextFull => 'Context almost full';

  @override
  String kitModelContextLabel(String percent) {
    return 'Context $percent % full';
  }

  @override
  String kitAttachmentOpen(String label) {
    return '预览 $label';
  }

  @override
  String kitAttachmentImage(String label) {
    return '图片，$label';
  }

  @override
  String kitAttachmentFile(String label) {
    return '文件，$label';
  }

  @override
  String kitAttachmentFolder(String label) {
    return '文件夹，$label';
  }

  @override
  String kitAttachmentReference(String label) {
    return '引用，$label';
  }

  @override
  String get kitSuggestionsShowAll => '显示全部';

  @override
  String get kitSuggestionsLabel => '建议';

  @override
  String get kitNeedsYouReasonDecision => '需要你来决定';

  @override
  String get kitNeedsYouReasonBlocked => '卡住了：需要你处理';

  @override
  String get kitNeedsYouReasonConsent => '需要你确认';

  @override
  String kitNeedsYouSpan(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString 项需要你处理 · ',
    );
    return '$_temp0';
  }

  @override
  String kitNeedsYouBadgeSuffix(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '，$countString 项需要你处理',
    );
    return '$_temp0';
  }

  @override
  String kitNeedsYouWaiting(String age) {
    return '已等待 $age';
  }

  @override
  String kitNeedsYouWaitingSpoken(int minutes) {
    final intl.NumberFormat minutesNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '已等待 $minutesString 分钟',
      one: '已等待 1 分钟',
      zero: '已等待不到一分钟',
    );
    return '$_temp0';
  }

  @override
  String kitNeedsYouWhoOnServer(String who, String server) {
    return '$server 上的 $who';
  }

  @override
  String get kitWorkGraph => 'Work graph';

  @override
  String get kitWorkGraphEmpty => 'No work items yet';

  @override
  String kitWorkGraphNode(String title, String state) {
    return '$title, $state';
  }

  @override
  String kitWorkGraphNeeds(String title) {
    return 'needs $title';
  }

  @override
  String kitWorkGraphNeedsMore(String title, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count',
      one: '1',
    );
    return 'needs $title and $_temp0 more';
  }

  @override
  String get kitJumpLatest => '跳到最新';

  @override
  String kitJumpNewLatest(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条新内容 · 跳到最新',
    );
    return '$_temp0';
  }

  @override
  String get kitChoiceCurrent => '当前';

  @override
  String get kitChoiceRecommended => '推荐';

  @override
  String get kitChoiceOtherSend => '发送回答';

  @override
  String kitChoiceSelectedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count selected',
      one: '1 selected',
      zero: 'None selected',
    );
    return '$_temp0';
  }

  @override
  String get kitComposerField => '消息';

  @override
  String get kitComposerSend => '发送';

  @override
  String get kitComposerSending => '正在发送';

  @override
  String get kitComposerSendOffline => '联网后发送';

  @override
  String get kitComposerSendAfter => '回复结束后发送';

  @override
  String get kitComposerAddToTurn => '补充到当前任务';

  @override
  String get kitComposerStop => '停止回复';

  @override
  String get kitComposerSendsAfter => '将在回复结束后发送';

  @override
  String get kitComposerStopAndSend => '停止并发送';

  @override
  String get kitComposerStopAndSendNote => '停止当前回复，并用你的消息重新开始。';

  @override
  String get kitComposerCannotSendYet => '回复结束后即可发送';

  @override
  String get kitComposerOffline => '离线 · 恢复联网后发送';

  @override
  String get kitComposerTools => '附件及更多';

  @override
  String get kitComposerVoice => '语音输入';

  @override
  String get kitComposerEditor => '打开全屏编辑器';

  @override
  String get kitVoiceLeave => '退出语音模式';

  @override
  String get kitVoiceStarting => '正在准备麦克风…';

  @override
  String get kitVoiceListening => '正在聆听…';

  @override
  String get kitVoiceTranscribing => '正在转写你说的话…';

  @override
  String get kitVoiceWaitingReply => '正在等待回复…';

  @override
  String get kitVoiceSpeaking => '正在朗读回复';

  @override
  String get kitVoiceReplyReady => '回复已就绪';

  @override
  String get kitVoicePaused => '已暂停 · 智能体需要你';

  @override
  String get kitVoiceMicDenied => '此应用的麦克风已关闭';

  @override
  String get kitVoiceFailed => '语音已停止';

  @override
  String get kitVoiceSend => '发送';

  @override
  String get kitVoiceDone => '完成';

  @override
  String get kitVoiceStopReading => '停止朗读';

  @override
  String get kitVoiceReadReply => '朗读';

  @override
  String get kitVoiceListen => '聆听';

  @override
  String get kitVoiceReadAloud => '朗读回复';

  @override
  String kitVoiceElapsed(String minutes, String seconds) {
    return '$minutes:$seconds';
  }

  @override
  String get kitSearchClear => '清除搜索';

  @override
  String get kitSearchFilter => '筛选';

  @override
  String kitSearchFilterActive(String name) {
    return '筛选：$name';
  }

  @override
  String kitSearchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个结果',
      one: '1 个结果',
      zero: '无结果',
    );
    return '$_temp0';
  }

  @override
  String kitSearchPartial(int count) {
    return '已加载 $count 项 · 正在搜索服务器…';
  }

  @override
  String kitSearchNoMatch(String query) {
    return '没有与$query匹配的内容';
  }

  @override
  String kitSearchNoMatchIn(String what, String query) {
    return '$what中没有与$query匹配的内容';
  }

  @override
  String get kitTopBarBack => '返回';

  @override
  String get kitTopBarClose => '关闭';

  @override
  String get kitTopBarSearch => '搜索';

  @override
  String get kitTopBarSwitchServer => '切换服务器';

  @override
  String get kitTopBarSwitchProject => '切换项目';

  @override
  String get kitTopBarMore => '更多操作';

  @override
  String get kitAgentStripLabel => '此任务的智能体';

  @override
  String kitAgentOpen(String name) {
    return '打开 $name 的对话';
  }

  @override
  String kitAgentLabel(String hasRole, String name, String role, String state) {
    String _temp0 = intl.Intl.selectLogic(hasRole, {
      'yes': '$name，$role，$state',
      'other': '$name，$state',
    });
    return '$_temp0';
  }

  @override
  String get kitBreadcrumb => 'Folder path';

  @override
  String kitBreadcrumbOpen(String folder) {
    return 'Open folder $folder';
  }

  @override
  String kitBreadcrumbOpenRoot(String root) {
    return 'Open $root';
  }

  @override
  String kitBreadcrumbCurrent(String folder) {
    return 'Current folder: $folder';
  }

  @override
  String kitBreadcrumbMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count more folders',
      one: '1 more folder',
    );
    return '$_temp0';
  }

  @override
  String get kitCodeCopyCode => 'Copy code';

  @override
  String get kitCodeCopyCommand => 'Copy command';

  @override
  String get kitCodeCopyOutput => 'Copy output';

  @override
  String get kitCodeCopyFailedCode => 'Could not copy code. Try again.';

  @override
  String get kitCodeCopyFailedCommand =>
      'Could not copy the command. Try again.';

  @override
  String get kitCodeCopyFailedOutput => 'Could not copy the output. Try again.';

  @override
  String kitCodeShowAll(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '显示全部 $count 行',
    );
    return '$_temp0';
  }

  @override
  String get kitCodeOpenFull => 'Open full output';

  @override
  String get kitWrapLines => '自动换行';

  @override
  String kitCodeChanges(int added, int removed) {
    return '新增 $added，删除 $removed';
  }

  @override
  String get kitCodeEmpty => 'Empty';

  @override
  String kitTabLabel(String label, int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return '$label, $countString';
  }

  @override
  String kitQueuedTitle(int count) {
    return '等待发送 · $count';
  }

  @override
  String get kitQueuedOffline => '恢复联网后发送';

  @override
  String get kitQueuedWaiting => '等待发送';

  @override
  String get kitQueuedReachedServer => '已送达服务器';

  @override
  String get kitQueuedAfterReply => '在此回复后发送';

  @override
  String get kitQueuedAddToTurn => '将加入当前轮次';

  @override
  String get kitQueuedUpdate => '更新等待中';

  @override
  String kitQueuedAttachments(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个附件',
      one: '1 个附件',
    );
    return '$_temp0';
  }

  @override
  String kitQueuedItemLabel(int index, int count, String text, String state) {
    return '第 $index 条等待中的消息，共 $count 条：$text。$state';
  }

  @override
  String get kitQueuedActions => '消息操作';

  @override
  String get kitLogTitle => 'Output';

  @override
  String get kitLogShowOutput => 'Show output';

  @override
  String get kitLogLive => 'Live';

  @override
  String kitLogQuiet(String age) {
    return 'Last line $age ago';
  }

  @override
  String kitLogQuietSeconds(int seconds) {
    return 'Last line $seconds s ago';
  }

  @override
  String get kitLogEnded => 'Ended';

  @override
  String kitLogEndedExit(String code) {
    return 'Ended · exit $code';
  }

  @override
  String get kitLogFailed => 'Failed';

  @override
  String kitLogFailedExit(String code) {
    return 'Failed · exit $code';
  }

  @override
  String get kitLogEmpty => 'No output yet';

  @override
  String kitLogNewLines(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count new lines',
      one: '1 new line',
    );
    return '$_temp0';
  }

  @override
  String kitLogDropped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count earlier lines not shown',
      one: '1 earlier line not shown',
    );
    return '$_temp0';
  }

  @override
  String get kitLogReadFailed => 'Couldn\'t read the output';

  @override
  String kitLogWarningLine(String line) {
    return 'Warning: $line';
  }

  @override
  String kitLogErrorLine(String line) {
    return 'Error: $line';
  }

  @override
  String get kitUntilOff => '直到我关闭';

  @override
  String get kitUntilConversation => '本次对话期间';

  @override
  String get kitUntilHour => '一小时';

  @override
  String get kitRiskTurnOn => '开启';

  @override
  String get kitRiskNotNow => '暂不';

  @override
  String get kitRiskTurnOff => '关闭';

  @override
  String get safetyDisconnectBody => '实时更新将停止，你会返回服务器列表。服务器继续运行，其上的内容不会有任何改变。';

  @override
  String get safetyDisconnectBodyPhone =>
      '实时更新将停止，你会返回服务器列表。OpenCode 会继续在此手机上运行并消耗电量，直到你停止它。';

  @override
  String safetyDisconnectWaiting(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '有 $count 条待发送的消息会保留在此手机上，直到你重新连接。',
      one: '有 1 条待发送的消息会保留在此手机上，直到你重新连接。',
    );
    return '$_temp0';
  }

  @override
  String get quotaMonitorThreshold => 'Alert when used reaches';

  @override
  String get quotaMonitorSaving => 'Saving…';

  @override
  String get folderBrowserSlowTitle => '仍在读取此文件夹';

  @override
  String get folderBrowserSlowBody => '列出此手机上的文件夹最多可能需要 15 秒。';

  @override
  String get folderBrowserFirstProject => '为你的第一个项目命名';

  @override
  String kitChecklistNext(String step) {
    return 'next: $step';
  }

  @override
  String kitChecklistNeedsYou(String action) {
    return 'needs you, $action';
  }

  @override
  String get kitChecklistShowSteps => 'Show steps';

  @override
  String get kitChecklistHideSteps => 'Hide steps';

  @override
  String get kitRequestAllowOnce => '允许一次';

  @override
  String get kitRequestReject => '拒绝';

  @override
  String get kitRequestApprove => '批准';

  @override
  String get kitRequestSendBack => '退回';

  @override
  String get kitRequestAnswer => '回答';

  @override
  String get kitRequestSend => '发送';

  @override
  String get kitRequestReplyEmptyReason => '请先输入回复。';

  @override
  String kitRequestMoreAnswers(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '还有 $countString 个回答',
    );
    return '$_temp0';
  }

  @override
  String get kitRequestExpired => '已过期 · 智能体不再等待';

  @override
  String kitRequestAge(String age) {
    return '已等待 $age';
  }

  @override
  String kitDiffFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String kitDiffChangeOf(int index, int count) {
    final intl.NumberFormat indexNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String indexString = indexNumberFormat.format(index);
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return 'Change $indexString of $countString';
  }

  @override
  String get kitDiffPreviousChange => 'Previous change';

  @override
  String get kitDiffNextChange => 'Next change';

  @override
  String kitDiffLines(int start, int end) {
    final intl.NumberFormat startNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String startString = startNumberFormat.format(start);
    final intl.NumberFormat endNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String endString = endNumberFormat.format(end);

    return 'Lines $startString–$endString';
  }

  @override
  String kitDiffShowUnchanged(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Show $count unchanged lines',
      one: 'Show 1 unchanged line',
    );
    return '$_temp0';
  }

  @override
  String get kitDiffHideUnchanged => 'Hide unchanged lines';

  @override
  String kitDiffUnchangedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count unchanged lines',
    );
    return '$_temp0';
  }

  @override
  String get kitDiffNoChanges => 'No changes';

  @override
  String get kitDiffBinary => 'Binary file · not shown';

  @override
  String kitDiffRenamed(String path) {
    return 'Renamed from $path';
  }

  @override
  String get kitDiffAddedFile => 'New file';

  @override
  String get kitDiffDeletedFile => 'Deleted';

  @override
  String kitDiffTooBig(int shown, int total) {
    final intl.NumberFormat shownNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String shownString = shownNumberFormat.format(shown);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return 'Showing $shownString of $totalString lines';
  }

  @override
  String get kitDiffOpenAll => 'Open all';

  @override
  String kitDiffLineAdded(int number) {
    return 'Line $number added';
  }

  @override
  String kitDiffLineRemoved(int number) {
    return 'Line $number removed';
  }

  @override
  String get kitDiffComment => 'Comment';

  @override
  String get kitDiffAddToPrompt => 'Add to prompt';

  @override
  String get kitDiffCopyLines => 'Copy lines';

  @override
  String get kitDiffClearSelection => 'Clear selection';

  @override
  String kitDiffSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines selected',
      one: '1 line selected',
    );
    return '$_temp0';
  }

  @override
  String kitDiffCounts(int added, int removed) {
    return '$added added, $removed removed';
  }

  @override
  String get kitDiffLoadFailed => 'Couldn\'t load the changes';

  @override
  String kitDiffLine(int number) {
    return 'Line $number';
  }

  @override
  String kitBoardLane(String column, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks',
      one: '1 task',
      zero: 'no tasks',
    );
    return '$column, $_temp0';
  }

  @override
  String kitBoardLaneLoading(String column) {
    return 'Loading $column';
  }

  @override
  String get kitMarkdownOpenFile => 'Open file';

  @override
  String kitMarkdownTable(int rows) {
    String _temp0 = intl.Intl.pluralLogic(
      rows,
      locale: localeName,
      other: 'Table, $rows rows',
      one: 'Table, 1 row',
    );
    return '$_temp0';
  }

  @override
  String get kitToolNotRun => '未运行';

  @override
  String get kitToolWaiting => '等待中';

  @override
  String get kitToolRunning => '运行中';

  @override
  String get kitToolWaitingForYou => '等待你操作';

  @override
  String get kitToolDone => '完成';

  @override
  String get kitToolFailed => '失败';

  @override
  String get kitToolDeclined => '你已拒绝';

  @override
  String get kitToolStopped => '已停止';

  @override
  String get kitToolBackground => '已在后台启动';

  @override
  String kitToolTookSeconds(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString 秒',
      one: '1 秒',
    );
    return '$_temp0';
  }

  @override
  String kitToolTookMinutes(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString 分钟',
      one: '1 分钟',
    );
    return '$_temp0';
  }

  @override
  String get kitToolOpenConversation => '打开其对话';

  @override
  String get kitViewerFind => 'Find in file';

  @override
  String kitViewerFindCount(int index, int count) {
    final intl.NumberFormat indexNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String indexString = indexNumberFormat.format(index);
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return '$indexString of $countString';
  }

  @override
  String get kitViewerFindNone => 'No matches';

  @override
  String get kitViewerFindPrevious => 'Previous match';

  @override
  String get kitViewerFindNext => 'Next match';

  @override
  String get kitViewerFindClose => 'Close find';

  @override
  String get kitViewerCopyContents => 'Copy contents';

  @override
  String get kitViewerShowSource => 'Show source';

  @override
  String get kitViewerEmpty => 'This file is empty';

  @override
  String kitViewerTruncated(int shown, int total) {
    final intl.NumberFormat shownNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String shownString = shownNumberFormat.format(shown);
    final intl.NumberFormat totalNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String totalString = totalNumberFormat.format(total);

    return 'Showing the first $shownString of $totalString lines';
  }

  @override
  String get kitViewerPartial => 'Showing part of this file';

  @override
  String get kitViewerOpenAll => 'Open all';

  @override
  String get kitViewerCantShow => 'Can\'t show this file';

  @override
  String kitViewerCantShowBody(String type, String size) {
    return '$type · $size';
  }

  @override
  String get kitViewerUnknownType => 'Unknown type';

  @override
  String get kitViewerUnknownSize => 'size unknown';

  @override
  String kitViewerLoadFailed(String name) {
    return 'Couldn\'t open $name';
  }

  @override
  String kitViewerPage(int page, int count) {
    final intl.NumberFormat pageNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String pageString = pageNumberFormat.format(page);
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    return 'Page $pageString of $countString';
  }

  @override
  String kitViewerPageFailed(int page) {
    final intl.NumberFormat pageNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String pageString = pageNumberFormat.format(page);

    return 'Couldn\'t show page $pageString';
  }

  @override
  String get kitCapServerAnyTitle => 'Server to work on';

  @override
  String get kitCapServerAnyWhy =>
      'There\'s no server yet. Set one up on this phone or connect a computer.';

  @override
  String get kitCapServerAnyEnable => 'Add a server';

  @override
  String get kitCapServerAnyOffer =>
      'Add a server to start working with an agent.';

  @override
  String get kitCapServerOc2Title => 'OpenCode 2 server';

  @override
  String get kitCapServerOc2Why => 'Needs a server running OpenCode 2.';

  @override
  String get kitCapServerOc2Enable => 'Connect OpenCode 2';

  @override
  String get kitCapServerOc2Offer =>
      'This needs OpenCode 2. Switch this phone\'s server to it?';

  @override
  String get kitCapServerCodexTitle => 'Codex server';

  @override
  String get kitCapServerCodexWhy => 'Needs a computer running Codex.';

  @override
  String get kitCapServerCodexEnable => 'Connect Codex';

  @override
  String get kitCapServerCodexOffer =>
      'Connect a computer running Codex to use it here.';

  @override
  String get kitCapServerPaseoTitle => 'Claude Code or Pi';

  @override
  String get kitCapServerPaseoWhy =>
      'Needs Paseo, on a computer or on this phone.';

  @override
  String get kitCapServerPaseoEnable => 'Connect Paseo';

  @override
  String get kitCapServerPaseoOffer =>
      'Work with Claude Code or Pi. Connect Paseo?';

  @override
  String get kitCapPhoneBuiltinTitle => 'Server on this phone';

  @override
  String get kitCapPhoneBuiltinWhy =>
      'This phone has no server of its own yet.';

  @override
  String get kitCapPhoneBuiltinEnable => 'Set up this phone';

  @override
  String get kitCapPhoneBuiltinOffer =>
      'Run agents right on this phone. Set it up?';

  @override
  String get kitCapPhoneTermuxTitle => 'Server in Termux';

  @override
  String get kitCapPhoneTermuxWhy => 'Needs Termux on this phone.';

  @override
  String get kitCapPhoneTermuxEnable => 'Set up with Termux';

  @override
  String get kitCapPhoneTermuxOffer =>
      'Run this phone\'s server in Termux instead?';

  @override
  String get kitCapPhoneAnyTitle => 'Server on this phone';

  @override
  String get kitCapPhoneAnyWhy => 'Needs a server running on this phone.';

  @override
  String get kitCapModelAuthTitle => 'Model sign-in';

  @override
  String get kitCapModelAuthWhy =>
      'Sign in to a model provider so the agent can reply.';

  @override
  String get kitCapModelAuthEnable => 'Sign in to a model';

  @override
  String get kitCapModelAuthOffer =>
      'The agent needs a model to reply. Sign in to one?';

  @override
  String get kitCapTeamOnTitle => 'AI Team';

  @override
  String get kitCapTeamOnWhy => 'AI Team is off on this server.';

  @override
  String get kitCapTeamOnEnable => 'Turn on AI Team';

  @override
  String get kitCapTeamOnOffer =>
      'This server can also run an AI team. Turn it on?';

  @override
  String get kitCapTeamPhoneTitle => 'AI Team on this phone';

  @override
  String get kitCapTeamPhoneWhy => 'Runs only on this phone\'s own server.';

  @override
  String get kitCapTeamControlTitle => 'Team controls';

  @override
  String get kitCapTeamControlWhy =>
      'Answer this on the computer that runs the team.';

  @override
  String get kitCapTeamControlEnable => 'See how to set it up';

  @override
  String get kitCapTeamControlOffer =>
      'Control the team from here once the computer is set up. See how?';

  @override
  String get kitCapClaudeLocalTitle => 'Claude Code on this phone';

  @override
  String get kitCapClaudeLocalWhy =>
      'Needs Termux on this phone and a Claude subscription.';

  @override
  String get kitCapClaudeLocalEnable => 'Add Claude Code';

  @override
  String get kitCapClaudeLocalOffer =>
      'Add Claude Code to this phone? It needs a Claude subscription.';

  @override
  String get kitCapVoiceModelTitle => 'Voice typing';

  @override
  String get kitCapVoiceModelWhy => 'Needs a voice model on this phone.';

  @override
  String get kitCapVoiceModelEnable => 'Download voice model';

  @override
  String get kitCapVoiceModelOffer =>
      'Type by voice on this phone. Download a voice model?';

  @override
  String get kitCapMcpAnyTitle => 'Extra tools';

  @override
  String get kitCapMcpAnyWhy =>
      'This server can\'t add extra tools from the app.';

  @override
  String get kitCapMcpAnyEnable => 'Add a tool';

  @override
  String get kitCapMcpAnyOffer => 'Give the agent more tools. Add one?';

  @override
  String get kitCapProjectOpenTitle => 'Project';

  @override
  String get kitCapProjectOpenWhy => 'Choose a folder to work in first.';

  @override
  String get kitCapProjectOpenEnable => 'Choose a project';

  @override
  String get kitCapProjectOpenOffer =>
      'Choose a project folder to start working.';

  @override
  String get kitCapProjectGitTitle => 'Git project';

  @override
  String get kitCapProjectGitWhy => 'This folder isn\'t a Git project yet.';

  @override
  String get kitCapProjectGitEnable => 'Make this a Git project';

  @override
  String get kitCapProjectGitOffer =>
      'This needs a Git project. Make this folder one?';

  @override
  String get kitCapPermNotificationsTitle => 'Notifications';

  @override
  String get kitCapPermNotificationsWhy =>
      'Notifications are off for this app.';

  @override
  String get kitCapPermNotificationsEnable => 'Allow notifications';

  @override
  String get kitCapPermNotificationsOffer =>
      'Hear when an agent needs you or finishes. Allow notifications?';

  @override
  String get kitCapPermBatteryTitle => 'Running in the background';

  @override
  String get kitCapPermBatteryWhy =>
      'Android may stop the app while it\'s in the background.';

  @override
  String get kitCapPermBatteryEnable => 'Allow background running';

  @override
  String get kitCapPermBatteryOffer =>
      'Keep agents running when the app is closed?';

  @override
  String get kitCapPermCameraTitle => 'Camera';

  @override
  String get kitCapPermCameraWhy => 'Camera access is off for this app.';

  @override
  String get kitCapPermCameraEnable => 'Allow camera';

  @override
  String get kitCapPermCameraOffer =>
      'Scan pairing codes and add photos. Allow the camera?';

  @override
  String get kitCapPermMicTitle => 'Microphone';

  @override
  String get kitCapPermMicWhy => 'Microphone access is off for this app.';

  @override
  String get kitCapPermMicEnable => 'Allow microphone';

  @override
  String get kitCapPermMicOffer => 'Speak your prompts. Allow the microphone?';

  @override
  String get kitCapNetworkTailscaleTitle => 'Reach from anywhere';

  @override
  String get kitCapNetworkTailscaleWhy =>
      'Your phone and computer aren\'t on the same network.';

  @override
  String get kitCapNetworkTailscaleEnable => '设置 Tailscale';

  @override
  String get kitCapNetworkTailscaleOffer =>
      'Reach your computer from anywhere with Tailscale. Set it up?';

  @override
  String get kitCapQuotaCollectorTitle => 'Remaining usage';

  @override
  String get kitCapQuotaCollectorWhy =>
      'This server doesn\'t report what\'s left of your plan.';

  @override
  String get kitCapQuotaCollectorEnable => 'See how to add it';

  @override
  String get kitCapQuotaCollectorOffer =>
      'See what\'s left of your plan here. Add it on the server?';

  @override
  String get kitCapAgentA2aTitle => 'Other agents';

  @override
  String get kitCapAgentA2aWhy => 'No other agents are added yet.';

  @override
  String get kitCapAgentA2aEnable => 'Add an agent';

  @override
  String get kitCapAgentA2aOffer =>
      'Work with agents from other apps. Add one?';

  @override
  String get kitCapFlagFileBrowsingTerminalTitle => 'Files and terminal';

  @override
  String get kitCapFlagFileBrowsingTerminalWhy =>
      'This server doesn\'t share its files or terminal.';

  @override
  String get kitCapFlagSessionDiffTitle => 'Review changes';

  @override
  String get kitCapFlagSessionDiffWhy =>
      'This server doesn\'t show the changes an agent made.';

  @override
  String get kitCapFlagServerCatalogTitle => 'Server settings';

  @override
  String get kitCapFlagServerCatalogWhy =>
      'This server doesn\'t share its providers, tools or commands.';

  @override
  String get kitCapFlagUsageStatisticsTitle => 'Spending';

  @override
  String get kitCapFlagUsageStatisticsWhy =>
      'This server doesn\'t report what was spent.';

  @override
  String get kitCapFlagStagedRevertSessionNotesTitle =>
      'Notes and step-by-step undo';

  @override
  String get kitCapFlagStagedRevertSessionNotesWhy =>
      'This server can\'t take notes for the agent or undo step by step.';

  @override
  String get kitCapFlagWorktreeCreateSessionShareManagedWorkspacesTitle =>
      'Isolated tasks and sharing';

  @override
  String get kitCapFlagWorktreeCreateSessionShareManagedWorkspacesWhy =>
      'This server can\'t run isolated tasks or share conversations.';

  @override
  String get kitCapFlagDevelopmentServicesTitle => 'Development services';

  @override
  String get kitCapFlagDevelopmentServicesWhy =>
      'This server can\'t start or stop development services.';

  @override
  String get kitCapFlagRemoteUpgradeTitle => 'Updating the server';

  @override
  String get kitCapFlagRemoteUpgradeWhy =>
      'This server can\'t be updated from the app.';

  @override
  String get kitCapFlagPromptAttachmentsTitle => 'Attach photos and files';

  @override
  String get kitCapFlagPromptAttachmentsWhy =>
      'This server can\'t take photos or files with a prompt.';

  @override
  String get kitHostThisPhone => 'this phone';

  @override
  String get kitHostTermux => 'Termux';

  @override
  String get kitHostOpenCode2 => 'computers with OpenCode 2';

  @override
  String get kitHostCodex => 'Codex';

  @override
  String get kitHostPaseo => 'Paseo';

  @override
  String get kitHostDemo => 'the offline demo';

  @override
  String get kitHostOpenCode => 'computers with OpenCode';

  @override
  String kitCapNotOnHost(int count, String feature, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$feature aren\'t available on $host',
      one: '$feature isn\'t available on $host',
    );
    return '$_temp0';
  }

  @override
  String kitCapWorksOn(String hosts) {
    return 'Works on $hosts';
  }

  @override
  String kitCapWhyElsewhere(String notHere, String worksOn) {
    return '$notHere. $worksOn.';
  }

  @override
  String kitCapAnd(String first, String last) {
    return '$first and $last';
  }

  @override
  String kitCapComma(String first, String next) {
    return '$first, $next';
  }

  @override
  String kitCapServerOnHost(String server, String host) {
    return '$server ($host)';
  }

  @override
  String get kitCapNotNow => 'Not now';

  @override
  String get desktopDropHint => 'Drop to attach';

  @override
  String get searchClaudeCodeGateTitle => 'Not on this device';

  @override
  String get searchClaudeCodeGateDevice =>
      'Claude Code runs on a phone only through Termux, which this device doesn\'t have. Run it on a computer with Paseo and add that computer as a server.';

  @override
  String get searchClaudeCodeGateDesktop =>
      'Claude Code on this phone is for Android phones with Termux. On a computer, run Claude Code with Paseo and add it as a server.';

  @override
  String get searchClaudeCodeGateServers => 'Open servers';

  @override
  String get activityDigestHidden => 'Digest hidden';

  @override
  String get activityOpenFailedTitle => 'Couldn\'t open conversation';

  @override
  String get activityLoading => 'Loading the Inbox';

  @override
  String get activityPickRequest => 'Pick a request';

  @override
  String get activityPickRequestDetail =>
      'Choose one from the list to answer it here.';

  @override
  String activityAllowOnceFailed(String reason) {
    return 'Not sent: $reason';
  }

  @override
  String get activitySendOffline => '请重新连接服务器后再回答。';

  @override
  String get activityLastSeenRunning => 'Last seen running';

  @override
  String get activityIfIgnored => 'The agent waits; nothing is lost.';

  @override
  String activityPermissionAnnouncement(String title) {
    return 'Permission needed: $title';
  }

  @override
  String activityFormAnnouncement(String title) {
    return 'Input requested: $title';
  }

  @override
  String get activityAnswerEveryQuestion => '请先回答所有问题。';

  @override
  String get activityQuestionOptional => '可选。可以留空。';

  @override
  String get activitySending => '正在发送…';

  @override
  String activityQuestionProgress(int index, int total) {
    return '问题 $index/$total';
  }

  @override
  String get activityOwnAnswer => '或者写下你自己的回答';

  @override
  String get shortcutsPaletteSearch => 'Search commands and settings';

  @override
  String get shortcutsHelpAnywhere => 'Anywhere';

  @override
  String get shortcutsHelpConversation => 'In a conversation';

  @override
  String get homeShellProjectUnavailable => '文件不可用';

  @override
  String homeShellProjectUnavailableReason(String server) {
    return '$server 不提供文件、变更或代码搜索。请连接到 OpenCode 服务器以使用这些功能。';
  }

  @override
  String homeShellProjectUnavailableShort(String server) {
    return '$server 没有项目工具。';
  }

  @override
  String get workspaceDetailEmptyTitle => 'Choose a conversation';

  @override
  String get workspaceDetailEmptyBody =>
      'Open a conversation from the list to read and reply here.';

  @override
  String workspaceContextOn(String server) {
    return 'On $server';
  }

  @override
  String get workspaceContextCurrent => 'In use';

  @override
  String get workspaceContextNewProject => 'New project';

  @override
  String get workspaceContextRunsOn => 'Runs on';

  @override
  String get workspaceContextFolder => 'Folder';

  @override
  String get workspaceSessionSharedLink => 'Shared link';

  @override
  String workspaceArchiveFailed(String title) {
    return 'Couldn\'t archive “$title”. It is back in the list.';
  }

  @override
  String get workspaceShareCopiesLink =>
      'The link is copied once sharing starts.';

  @override
  String get workspaceDeleteSharedLink => 'Its shared link stops working.';

  @override
  String get workspaceChooserEnterPath => 'Enter a folder path';

  @override
  String get workspaceChooserRecentProjects => 'Open a project you used before';

  @override
  String get workspaceChooserLoadFailedTitle => 'Couldn\'t load your projects';

  @override
  String get workspaceChooserLoadFailedBody =>
      'You can still open a folder by its path.';

  @override
  String get managedWorkspacesRefresh => 'Refresh';

  @override
  String get managedWorkspacesDiscovered => 'Discovery finished';

  @override
  String get managedWorkspacesDiscoverFailed =>
      'Couldn’t discover environments';

  @override
  String get managedWorkspacesCreateFailed => 'Couldn’t create the environment';

  @override
  String managedWorkspacesOpenFailed(String name) {
    return 'Couldn’t open $name';
  }

  @override
  String managedWorkspacesRemoveTitle(String name) {
    return 'Remove $name?';
  }

  @override
  String managedWorkspacesRemoveBody(String provider) {
    return 'The server asks $provider to delete this environment and what is in it.';
  }

  @override
  String get managedWorkspacesRemoveLeavesFirst =>
      'It is open now, so the app goes back to the project folder first.';

  @override
  String get managedWorkspacesRemoveHistoryStays =>
      'Conversations stay in history but can no longer open it.';

  @override
  String get managedWorkspacesRemoveAction => 'Remove';

  @override
  String managedWorkspacesRemoved(String name) {
    return '$name was removed';
  }

  @override
  String get managedWorkspacesProvider => 'Provider';

  @override
  String get managedWorkspacesProvidersFailed => 'Couldn’t load providers';

  @override
  String get managedWorkspacesNoProviderTitle => 'No provider set up';

  @override
  String get managedWorkspacesNoProviderBody =>
      'This server has no cloud environment provider. Add one to OpenCode’s config on the server, then refresh.';

  @override
  String managedWorkspacesEmptyBody(String project) {
    return 'Environments for $project appear here. Create one, or discover the ones a provider already has.';
  }

  @override
  String get managedWorkspacesLoadFailed => 'Couldn’t load cloud environments';

  @override
  String get managedWorkspacesCreating => 'Creating a cloud environment';

  @override
  String get managedWorkspacesCreatingBody =>
      'This usually takes a few minutes. It opens here when it’s ready.';

  @override
  String get managedWorkspacesCreateTakes =>
      'Creating one usually takes a few minutes. It opens here when it’s ready.';

  @override
  String get managedWorkspacesBranchLabel => 'Branch';

  @override
  String get managedWorkspacesBranchHelper =>
      'Leave empty to use the provider’s default branch.';

  @override
  String get managedWorkspacesInUse => 'In use';

  @override
  String get managedWorkspacesCopyId => 'Copy ID';

  @override
  String get projectHealthGitInitSupporting =>
      'Runs git init here. Nothing is committed.';

  @override
  String get projectHealthSetUp => 'Set up';

  @override
  String get projectHealthRunning => 'Running';

  @override
  String get projectHealthNotRunning => 'Not running';

  @override
  String projectHealthLineCounts(int added, int removed) {
    return '$added lines added, $removed removed';
  }

  @override
  String projectFolderCreateHelper(String directory) {
    return 'Made in $directory on this phone and opened as the project.';
  }

  @override
  String get projectFolderMissingTitle => 'Create this folder?';

  @override
  String get projectFolderCreateFailedTitle => 'Couldn’t create the folder';

  @override
  String get projectFolderOpenFailedTitle => 'Couldn’t open the folder';

  @override
  String get projectsOneFolderTitle => 'Server uses one folder';

  @override
  String servicesStarted(String name) {
    return '$name started';
  }

  @override
  String servicesRemoved(String name) {
    return '$name removed';
  }

  @override
  String servicesStopTitle(String name) {
    return 'Stop $name?';
  }

  @override
  String servicesRestartTitle(String name) {
    return 'Restart $name?';
  }

  @override
  String servicesForgetTitle(String name) {
    return 'Forget $name\'s last run?';
  }

  @override
  String servicesRemoveTitle(String name) {
    return 'Remove $name?';
  }

  @override
  String get servicesRemoveRunningHint =>
      'Its command keeps running on the server, and this app can no longer stop it. Stop it first to end it.';

  @override
  String get servicesEmptyTitle => 'No dev commands yet';

  @override
  String get servicesOffline =>
      'The server is not answering. Commands cannot be started or checked until it reconnects.';

  @override
  String get servicesLogFailed => 'Could not read the log.';

  @override
  String get servicesProjectFolder => 'Project folder';

  @override
  String get servicesWorkspace => 'Environment';

  @override
  String get servicesNameRequired => 'Enter a name.';

  @override
  String get servicesDuplicateName =>
      'A service with this name already exists.';

  @override
  String get servicesCommandRequired => 'Enter a command, such as npm run dev.';

  @override
  String get servicesUrlInvalid =>
      'Enter an http or https address without a user name or password.';

  @override
  String get isolatedTaskProjectFolder => 'Project folder';

  @override
  String get isolatedTaskStageCreate => 'Making the copy';

  @override
  String get isolatedTaskStagePrepare => 'Running the project setup';

  @override
  String get isolatedTaskStageOpen => 'Opening the conversation';

  @override
  String get isolatedTaskUsually => 'Usually 1–3 minutes';

  @override
  String get savedPermissionsIntro =>
      'Actions the agent may take in this project without asking you first. Revoke one and the agent asks again.';

  @override
  String get savedPermissionsLoadFailed =>
      'Could not load the always allowed actions';

  @override
  String get savedPermissionsRevokeBody =>
      'The agent will ask you again the next time it wants to do this. Work that is already running keeps going.';

  @override
  String savedPermissionsRevokedDetail(String action) {
    return '$action now asks you first again.';
  }

  @override
  String get savedPermissionsDismiss => 'Dismiss';

  @override
  String get savedPermissionsCopyPattern => 'Copy pattern';

  @override
  String get savedPermissionsBusy => 'Wait for the current change to finish';

  @override
  String get savedPermissionsLoading => 'Loading always allowed actions';

  @override
  String get savedPermissionsAllResources =>
      'Anything this kind of action touches';

  @override
  String get settingsHubDetailEmpty => '选择一组设置';

  @override
  String get notifyQuietStartPicker => '设置静默时段的开始时间';

  @override
  String get notifyQuietEndPicker => '设置静默时段的结束时间';

  @override
  String get notifyQuietSet => '设置';

  @override
  String get notifyQuietAllDay => '开始和结束时间相同，因此通知全天保持静默。';

  @override
  String get notifySendingTest => '正在发送测试通知…';

  @override
  String get notifyNoServersTitle => '没有可监控的服务器';

  @override
  String get notifyNoServersDetail => '你保存的服务器可以在这里监控，这样其中任何一个的请求都会通知到你。';

  @override
  String get notifyDismiss => '忽略';

  @override
  String get notifySaving => '正在保存';

  @override
  String get notifyMonitorDetails => '服务器监控的工作方式';

  @override
  String get notifyRestartBackground => '重启实时连接';

  @override
  String get appearanceModeSystem => '跟随系统';

  @override
  String get privacySharedSection => '与你的服务器共享';

  @override
  String get privacySaving => 'Saving…';

  @override
  String get privacyDeleting => '正在删除';

  @override
  String privacyDeleteQueuedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '删除 $count 条排队的提示词',
      one: '删除 1 条排队的提示词',
      zero: '删除排队的提示词',
    );
    return '$_temp0';
  }

  @override
  String privacyDeleteDraftsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '删除 $count 份草稿',
      one: '删除 1 份草稿',
      zero: '删除草稿',
    );
    return '$_temp0';
  }

  @override
  String get kitMessageYou => '你说';

  @override
  String get kitMessageThinking => '思考中…';

  @override
  String get kitMessageThought => '已思考';

  @override
  String kitMessageThoughtForSeconds(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 秒',
      one: '1 秒',
    );
    return '思考了 $_temp0';
  }

  @override
  String kitMessageThoughtForMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 分钟',
      one: '1 分钟',
    );
    return '思考了 $_temp0';
  }

  @override
  String get kitMessageActions => '消息操作';

  @override
  String get kitMessageNoticeFailed => '失败';

  @override
  String get kitRequestChooseOneReason => '请至少选择一个回答。';

  @override
  String get kitRequestSendAnswers => 'Send answers';

  @override
  String get serversRemoveBody => '此手机将忘记该服务器：其密码、所选模型和智能体，以及项目和小组件对话。';

  @override
  String serversRemoveDrafts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '将删除 $count 份未发送的草稿',
      one: '将删除 1 份未发送的草稿',
    );
    return '$_temp0';
  }

  @override
  String get serversRemoveActiveNext => '你当前已连接到它：应用将断开连接并显示你的服务器列表';

  @override
  String get serversRemoveServerKeeps => '服务器和你的 AI 服务商处不会删除任何内容';

  @override
  String get guideStepTwoScan =>
      'Tap Add server, then Scan code and point the camera at the QR, or Paste code.';

  @override
  String get guideStepTwoPaste =>
      'Copy the printed code, then tap Add server and Paste code.';

  @override
  String get guidePhonePathTitle => 'Use this phone instead';

  @override
  String get guidePhonePathBody =>
      'Install OpenCode on this phone and use it here, no computer needed';

  @override
  String get pairingScannerAllowCamera => '允许使用相机';

  @override
  String get pairingScannerStarting => '正在打开相机…';

  @override
  String profileMonitorSwitchBody(String current, String target) {
    return 'A run is going on $current. Switching shows $target in this app; the run on $current keeps going.';
  }

  @override
  String get profileMonitorOpenFailedTitle => 'Couldn\'t open it';

  @override
  String get profileMonitorIfIgnored => 'The agent waits until you answer';

  @override
  String get serverSettingsRestartCommandLabel =>
      'Start OpenCode 2 on this computer';

  @override
  String get serverSettingsRestartedIt => 'I restarted it';

  @override
  String serverSettingsUpgradeBody(
    String target,
    String server,
    String current,
  ) {
    return 'Installs OpenCode $target on $server (now $current) with the server’s own installer.';
  }

  @override
  String serverSettingsUpgradeKeepsRunning(String current) {
    return 'The server keeps running $current while it installs';
  }

  @override
  String serverSettingsUpgradeRestartAfter(String target) {
    return 'Restart the OpenCode process on its computer to use $target';
  }

  @override
  String get serverSettingsUpgradeKeepsData => 'Server data stays in place';

  @override
  String serverSettingsCopyUpdateCommands(String server) {
    return 'Copy update commands for $server';
  }

  @override
  String get serverSettingsAddressLabel => 'Address';

  @override
  String get tailscaleSetupAppTitle => '此手机上的 Tailscale';

  @override
  String get tailscaleSetupVpnTitle => '登录并连接';

  @override
  String get tailscaleSetupVpnSupporting => '登录并连接。OpenCode 无法检查这一步。';

  @override
  String get tailscaleSetupOpenFailed => 'Tailscale 未能打开。请从启动器中打开它，然后返回。';

  @override
  String get tailscaleSetupAddressHelper => '粘贴 Tailscale Serve 输出的 HTTPS 地址。';

  @override
  String get tailscaleSetupGetApp => '获取 Tailscale';

  @override
  String get tailscaleSetupContinueReason => '请先输入服务器地址。';

  @override
  String languagePickerPartlyTranslated(int percent) {
    return '部分已翻译（$percent%）';
  }

  @override
  String appearancePickerPreviewLabel(String name) {
    return '$name 预览';
  }

  @override
  String get appearancePickerPreviewIn => '预览模式';

  @override
  String get appearancePickerInUse => '当前使用';

  @override
  String appearancePickerThemeApplied(String name) {
    return '主题已设为 $name';
  }

  @override
  String get teamDiscoveryCardTurnOnFailed =>
      'Could not turn the AI team on. Nothing changed. Try again.';

  @override
  String get teamDiscoveryCardTurningOn => 'Turning the AI team on…';

  @override
  String get serverSwitcherTitle => '服务器';

  @override
  String get serverSwitcherCurrentMenu => '服务器操作';

  @override
  String get localAgentEntryStillStarting => '仍在启动 · 可能需要一分钟';

  @override
  String get localAgentEntryDidNotStart => '未能启动';

  @override
  String get localAgentEntryRemoving => '正在移除';

  @override
  String localAgentEntrySignedOut(String state) {
    return '$state · 未登录 Claude';
  }

  @override
  String get formRendererFinishLater => 'Finish later';

  @override
  String get formRendererSending => 'Sending your answers…';

  @override
  String get formRendererChoose => 'Choose';

  @override
  String get formRendererChooseDate => 'Choose a date';

  @override
  String get formRendererChooseDateTime => 'Choose a date and time';

  @override
  String formRendererDateAndTime(String date, String time) {
    return '$date at $time';
  }

  @override
  String get formRendererUseDate => 'Use date';

  @override
  String get formRendererUseTime => 'Use time';

  @override
  String get filePreviewPdfIsolated =>
      'PDF pages don\'t render in this isolated view. Save the file to read it in a PDF app.';

  @override
  String get filePreviewCopyOriginal => 'Copy original file';

  @override
  String get filePreviewOpenInFiles => 'Open in Files';

  @override
  String get filePreviewViewMode => 'Show file as';

  @override
  String get filePreviewAttachFailed => 'Couldn\'t attach file';

  @override
  String get filePreviewSaveFailed => 'Couldn\'t save file';

  @override
  String get kitTurnStarting => '正在启动模型…';

  @override
  String kitTurnStillStarting(int seconds) {
    return '仍在等待模型 · $seconds 秒';
  }

  @override
  String get kitTurnStopped => '你已停止此回复。';

  @override
  String get kitTurnInterrupted => '回复完成前连接中断了。';

  @override
  String get kitTurnCopy => '复制回复';

  @override
  String get kitTurnMore => '此回复的更多操作';

  @override
  String get kitTurnActions => '回复操作';

  @override
  String serverSettingsDisconnectTitle(String serverName) {
    return 'Disconnect from $serverName';
  }

  @override
  String serverSettingsDisconnectDetail(String serverName) {
    return 'Stops live updates from $serverName. Conversations stay on $serverName; unsent messages stay on this phone until you reconnect.';
  }

  @override
  String get kitScannerStarting => '正在打开相机…';

  @override
  String get kitScannerSlow => '相机仍在打开';

  @override
  String get kitScannerPaused => '相机已暂停';

  @override
  String get kitScannerPreview => '相机画面';

  @override
  String get kitDateSet => '设置日期';

  @override
  String get kitTimeSet => '设置时间';

  @override
  String get kitDateTimeSet => '设置';

  @override
  String get kitDateType => '输入日期';

  @override
  String get kitDateCalendar => '显示日历';

  @override
  String kitDateFormatHint(String example) {
    return '例如 $example';
  }

  @override
  String get kitDateField => '日期';

  @override
  String get kitDateInvalid => '不是有效日期';

  @override
  String kitDateOutOfRange(String first, String last) {
    return '请选择 $first 到 $last 之间的日期';
  }

  @override
  String get kitTimeHour => '小时';

  @override
  String get kitTimeMinute => '分钟';

  @override
  String get kitTimePeriod => '上午或下午';

  @override
  String get kitTimeInvalid => '不是有效时间';

  @override
  String get kitDateTimeNotSet => '未设置';

  @override
  String kitDateTimeClear(String title) {
    return '清除$title';
  }

  @override
  String get kitDateUnavailable => '无法选择该日期';

  @override
  String get filesLoadingFolder => '正在打开文件夹…';

  @override
  String get filesSearching => '正在搜索…';

  @override
  String get filesShowHidden => '显示隐藏文件';

  @override
  String get filesOnlyHidden => '此文件夹只有隐藏的文件和文件夹。';

  @override
  String get filesCopyName => '复制名称';

  @override
  String globalSessionsMoveTitle(String project) {
    return 'Move to $project?';
  }

  @override
  String globalSessionsMoveBody(String title, String from, String to) {
    return '“$title” moves from $from to $to through the server’s sync system.';
  }

  @override
  String get globalSessionsMoveWhileWorking =>
      'It is working now. Moving it may interrupt the current step.';

  @override
  String globalSessionsMoveBack(String project) {
    return 'To move it back, open $project and choose Continue here in All conversations.';
  }

  @override
  String get globalSessionsFilterLabel => 'Show';

  @override
  String get globalSessionsFilterActive => 'Active';

  @override
  String get globalSessionsArchivedNoMatchMessage =>
      'No archived conversation has that title. Try a shorter search.';

  @override
  String get globalSessionsArchivedEmptyTitle => 'No archived conversations';

  @override
  String get globalSessionsArchivedEmptyMessage =>
      'Conversations you archive in Work appear here.';

  @override
  String get globalSessionsShowActive => 'Show active conversations';

  @override
  String globalSessionsProjectInUse(String project) {
    return '$project · In use';
  }

  @override
  String get globalSessionsCopyFolder => 'Copy folder path';

  @override
  String get worktreesStartConversation => 'New conversation here';

  @override
  String get worktreesCreateHelper =>
      'A separate branch and folder are made and the project’s startup tasks run. Spaces become dashes.';

  @override
  String get worktreesFolder => 'Folder';

  @override
  String get worktreesMainCopy => 'Main copy';

  @override
  String get worktreesCopyFolder => 'Copy folder path';

  @override
  String get worktreesLoadFailedTitle => 'Couldn\'t load worktrees';

  @override
  String get worktreesSetupFailedWord => 'Setup failed';

  @override
  String get importNeedsFile => 'Choose a JSON file first.';

  @override
  String get importNeedsDestination => 'Choose where to import it first.';

  @override
  String get importFileLabel => 'File';

  @override
  String get importPreviewLabel => 'Conversation';

  @override
  String importMessages(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count messages',
      one: '1 message',
    );
    return '$_temp0';
  }

  @override
  String get importNoDestinationsTitle => 'Nowhere to import';

  @override
  String importOnServer(String server) {
    return 'On $server';
  }

  @override
  String get importChangeDestinationShort => 'Change';

  @override
  String get importConversationId => 'Conversation ID';

  @override
  String get importParentId => 'Parent conversation ID';

  @override
  String get importFolder => 'Folder';

  @override
  String get importEnvironmentId => 'Cloud environment ID';

  @override
  String get phoneSetupStartUseTermuxOne => '使用 Termux 里的那个';

  @override
  String get phoneSetupStartUseTermuxOneDetail =>
      'Termux 中也设置了 OpenCode。改为连接到它。';

  @override
  String get phoneSetupStartTermuxNotAllowed =>
      '已安装 Termux，但它还没有允许本应用访问。请先完成它的设置。';

  @override
  String get phoneSetupCustomizeAllInstalled => '所有可选工具都已在这部手机上。';

  @override
  String get phoneSetupCustomizeIncluded => '必需';

  @override
  String get termuxProcsLoadFailedTitle => 'Couldn\'t read what\'s running';

  @override
  String get termuxProcsEmptyBody =>
      'When OpenCode, the AI Team or a build runs here, it shows up in this list.';

  @override
  String get termuxProcsNotStoppedTitle => 'Not everything stopped';

  @override
  String get termuxProcsCopyCommand => 'Copy command';

  @override
  String get termuxProcsOpenControls => 'Open This phone';

  @override
  String get termuxProcsProcessId => 'Process ID';

  @override
  String get termuxProcsParentId => 'Parent process ID';

  @override
  String get termuxProcsAboutOpenCode =>
      'Part of the OpenCode server on this phone.';

  @override
  String get termuxProcsAboutAiTeam =>
      'Part of the AI Team. Stopping it stops the work the team is doing.';

  @override
  String get termuxProcsAboutBuild =>
      'A build helper. The next build starts it again when it needs it.';

  @override
  String get termuxProcsAboutOrphan =>
      'Nothing is waiting on it, so stopping it is safe.';

  @override
  String get termuxProcsAboutOther =>
      'Started by something else on this phone.';

  @override
  String get termuxProcsNoRestart => '无法从这里重新启动。';

  @override
  String get termuxProcsStopGroupTeamLost =>
      'Any task the team is working on stops too.';

  @override
  String get termuxProcsStopGroupTeamRestart =>
      'You can start the team again from AI Team.';

  @override
  String get phoneSetupProgressStopContinueLater => '随时可以从“在这部手机上”继续。';

  @override
  String teamMergeConfirmTask(String title) {
    return 'Task: $title';
  }

  @override
  String get teamMergeFailedNext =>
      'Nothing was merged. Fix what the host says, then try again, or review the changes.';

  @override
  String get teamStartRunRefusedKept =>
      'Your task is still here. Edit it and send it again.';

  @override
  String get transcriptTogglesReasoningOn =>
      'When on, the model\'s reasoning opens under each answer.';

  @override
  String get transcriptTogglesUsageOn =>
      'When on, each message shows its time, tokens and cost.';

  @override
  String get transcriptTogglesScope =>
      'These apply to every conversation on this device.';

  @override
  String get handoffSheetCopyCommand => 'Copy command';

  @override
  String get handoffSheetReloadConversation => 'Try again';

  @override
  String get handoffSheetPhoneServerNote =>
      'If the other phone does not have this server saved yet, it says so and offers to open Servers so you can add it.';

  @override
  String get modelPickerChooseFirst => '请先选择一个模型。';

  @override
  String get modelPickerThinking => '思考';

  @override
  String get modelPickerAgentBuild => '编辑文件并运行命令';

  @override
  String get modelPickerAgentPlan => '只读取和规划，不修改文件';

  @override
  String modelPickerDetailsOutput(String count) {
    return '每次回答最多 $count 个 token';
  }

  @override
  String modelPickerDetailsPrice(String input, String output) {
    return '每百万 token：读取 $input，写入 $output';
  }

  @override
  String get modelPickerCanThink => '回答前会先思考';

  @override
  String get modelPickerCanUseTools => '可使用工具';

  @override
  String get modelPickerCanReadAttachments => '可读取你附加的图片和文件';

  @override
  String get modelPickerCopyId => '复制模型 id';

  @override
  String get modelPickerInUse => '使用中';

  @override
  String get modelPickerUnavailableReason => '此服务器目前不可用。';

  @override
  String get modelPickerCollections => '要显示的模型';

  @override
  String get modelPickerSignInTitle => '需要登录服务商';

  @override
  String get modelPickerSignInBody => '此服务器上还没有任何服务商提供模型。请先登录其中一个，再回来选择模型。';

  @override
  String modelPickerShowMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '再显示 $count 个模型',
    );
    return '$_temp0';
  }

  @override
  String get modelPickerAgentBuildName => 'Build';

  @override
  String get modelPickerAgentPlanName => 'Plan';

  @override
  String phoneServerCardDisconnect(String server) {
    return '断开与 $server 的连接';
  }

  @override
  String get phoneServerCardStartOpenCode => '启动 OpenCode';

  @override
  String get phoneServerCardStopOpenCode => '停止此手机上的 OpenCode';

  @override
  String get phoneServerCardShowServerLog => '显示服务器日志';

  @override
  String get phoneServerCardOpenTerminal => '打开终端';

  @override
  String get phoneServerCardFailedTitle => '未能完成';

  @override
  String get phoneServerRestartFailedTitle => 'Restart failed';

  @override
  String get setupTerminalTitle => 'Setup output';

  @override
  String get teamPhoneStopTeam => 'Stop the team';

  @override
  String get teamPhoneStartTeam => 'Start the team';

  @override
  String get teamPhoneStartTeamAgain => 'Start the team again';

  @override
  String get teamPhoneDeleteTeam => 'Delete the team from this phone';

  @override
  String get teamPhoneRemoveBody =>
      'The team stops, and the AI Team turns off for this server.';

  @override
  String get teamPhoneRemoveLost =>
      'The team\'s programs, its files and its task list are deleted';

  @override
  String get teamPhoneRemoveKept =>
      'Your project files and their git history stay';

  @override
  String teamPhoneRemoveFrees(int size) {
    return 'Frees about $size MB';
  }

  @override
  String get teamPhoneRemoveConfirm => 'Delete the team';

  @override
  String get productStatesActionFailedTitle => '无法完成';

  @override
  String get productStatesSwitchServer => '切换服务器';

  @override
  String get externalLinkBlockedTitle => '链接已被阻止';

  @override
  String get externalLinkBlockedBody =>
      '本应用只打开 https:// 链接，http:// 链接需经你确认后才会打开。';

  @override
  String externalLinkOpensHost(String host) {
    return '将在本应用之外打开 $host。';
  }

  @override
  String get externalLinkDontOpen => '不打开';

  @override
  String get externalLinkCopy => '复制链接';

  @override
  String get externalLinkAddress => '完整地址';

  @override
  String get externalLinkOpenFailedTitle => '无法打开链接';

  @override
  String get runCommandReconnecting =>
      'OpenCode is reconnecting. Try again in a moment.';

  @override
  String runCommandArgumentsHelper(String command) {
    return 'Text passed to /$command. Leave it empty if the command takes none.';
  }

  @override
  String get runCommandRunsIn => 'Runs in';

  @override
  String runCommandFailedTitle(String command) {
    return 'Couldn\'t run /$command';
  }

  @override
  String get teamNowWakeRefusedNoReason => 'The host didn\'t say why.';

  @override
  String get teamHostFormTeamLabel => 'Team name (optional)';

  @override
  String get teamHostFormTeamHelper =>
      'Leave it empty to use the team the computer runs.';

  @override
  String get teamHostFormHowAction => 'How to set up the computer';

  @override
  String get teamHostFormCancelTest => 'Cancel test';

  @override
  String get teamHostFormSaveAnyway => 'Save the address anyway';

  @override
  String get teamHostFormSaveAnywayNote =>
      'AI Team shows the team as not answering until the computer answers.';

  @override
  String get teamHostFormConnectionDetails => 'Connection details';

  @override
  String teamAgentScreenPause(String agent) {
    return 'Pause $agent';
  }

  @override
  String teamAgentScreenPaused(String agent) {
    return 'Paused $agent';
  }

  @override
  String teamAgentScreenResume(String agent) {
    return 'Start $agent again';
  }

  @override
  String teamAgentScreenNudge(String agent) {
    return 'Nudge $agent';
  }

  @override
  String teamAgentScreenRestart(String agent) {
    return 'Restart $agent';
  }

  @override
  String teamAgentScreenStop(String agent) {
    return 'Stop $agent';
  }

  @override
  String teamAgentScreenStopBody(String agent, String task) {
    return '$agent stops working on “$task” now. The task stays on the host, and you can start $agent again from this page.';
  }

  @override
  String teamAgentScreenStoppedTitle(String agent) {
    return '$agent is stopped';
  }

  @override
  String get teamAgentScreenStoppedBody =>
      'Its work stays where it is. Start it again when you want it back.';

  @override
  String teamAgentScreenCrashedTitle(String agent) {
    return '$agent stopped unexpectedly';
  }

  @override
  String get teamAgentScreenCrashedBody =>
      'Its session ended on its own. Start it again to pick its work up from the host.';

  @override
  String get teamAgentScreenRecyclingBody =>
      'It starts a fresh session soon and picks its work up from the host.';

  @override
  String teamAgentScreenModelFrom(String model, String provider) {
    return '$model from $provider';
  }

  @override
  String teamAgentScreenGateIfIgnored(String agent) {
    return '$agent waits until you answer';
  }

  @override
  String teamAgentScreenControlsElsewhere(String agent) {
    return 'This phone can\'t pause, stop or message $agent on this host yet. Run the team\'s host front on the computer to control it from here.';
  }

  @override
  String get gateSheetDestructiveBody =>
      'The host marks this action as destructive. Approving it can\'t be undone from the phone.';

  @override
  String get gateSheetAnswerLabel => 'Your answer';

  @override
  String get gateSheetAfterAnswer =>
      'The team carries on as soon as the host confirms your answer.';

  @override
  String get gateSheetFixIt => 'Ask the team to fix it';

  @override
  String gateSheetFixItDetail(String agent) {
    return 'Sends the error to $agent and asks it to find the cause and carry on.';
  }

  @override
  String gateSheetFixRequest(String task, String error) {
    return 'The task “$task” failed with this error:\n$error\nPlease find the cause, fix it and carry on.';
  }

  @override
  String gateSheetOpenAgent(String agent) {
    return 'Open $agent\'s page';
  }

  @override
  String get teamIntroTurnOnPhone => 'Turn on AI Team on this phone';

  @override
  String get teamIntroInstalledTitle => 'Installed on this phone';

  @override
  String get teamIntroInstalledBody =>
      'It is not turned on yet. Turning it on starts the team for your project; nothing more to download.';

  @override
  String get teamIntroSetUpPhone => 'Set up AI Team on this phone';

  @override
  String teamIntroSetUpOn(String server) {
    return 'Set up AI Team on $server';
  }

  @override
  String teamIntroTurnOn(String server) {
    return 'Turn on AI Team on $server';
  }

  @override
  String get teamIntroCostTitle => 'Before you set it up';

  @override
  String get teamIntroCostTime => 'About 8–10 minutes the first time';

  @override
  String get teamIntroCostMemory => 'About 550 MB of memory for each worker';

  @override
  String get teamAgentScreenLabelId => 'Agent id';

  @override
  String get gateSheetSendNeedsText => 'Type an answer first';

  @override
  String teamAgentsChecked(String age) {
    return 'checked $age ago';
  }

  @override
  String get teamWorkSheetMissingTitle => 'Work item gone';

  @override
  String get teamWorkSheetMissingBody =>
      'It may have been finished or removed. Close this sheet to see the task as it is now.';

  @override
  String get teamWorkSheetNotOnHost => 'No longer listed';

  @override
  String get teamWorkSheetOpenStepConversation =>
      'Open this step\'s conversation';

  @override
  String teamWorkSheetOpenAgentConversation(String name) {
    return 'Open $name\'s conversation';
  }

  @override
  String get usageRangeLabel => 'Time range';

  @override
  String get usageAboutNumbers => 'About these numbers';

  @override
  String get usageBudgetHelperUsd =>
      'In US dollars for this range. You’re told when the report reaches it; nothing is stopped.';

  @override
  String get usageBudgetHelperTokens =>
      'Whole tokens for this range. You’re told when the report reaches it; nothing is stopped.';

  @override
  String get usageBudgetClearConfirm => 'Clear budgets';

  @override
  String get usageBudgetNotSet => 'Not set';

  @override
  String get usageBudgetWaitReason => 'Available once usage has loaded.';

  @override
  String get usageBudgetUsdTitle => 'USD budget';

  @override
  String get usageBudgetTokensTitle => 'Token budget';

  @override
  String get agentAccountScopeLostTitle => 'This server changed';

  @override
  String get agentAccountBackToServers => 'Back to Servers';

  @override
  String get agentAccountNotConnected =>
      'Connect to this server to see its Codex account.';

  @override
  String get agentAccountSignInMethod => 'Signed in with';

  @override
  String get agentAccountPlanTitle => 'Plan';

  @override
  String get agentAccountCopyCode => 'Copy sign-in code';

  @override
  String agentAccountLimitReached(String reset) {
    return 'You’ve reached a Codex limit. $reset';
  }

  @override
  String get agentAccountResetDue => 'Resets any moment';

  @override
  String agentAccountResetInDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Resets in $days days',
      one: 'Resets in 1 day',
    );
    return '$_temp0';
  }

  @override
  String agentAccountResetInHours(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: 'Resets in $hours h',
      one: 'Resets in 1 h',
    );
    return '$_temp0';
  }

  @override
  String agentAccountResetInMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: 'Resets in $minutes min',
      one: 'Resets in 1 min',
    );
    return '$_temp0';
  }

  @override
  String agentAccountResetWhen(String relative, String time) {
    return '$relative ($time)';
  }

  @override
  String get reviewWorkspaceScopes => 'Changes to show';

  @override
  String get reviewWorkspaceRefreshFailed => 'Couldn\'t refresh the changes';

  @override
  String get reviewWorkspaceSlowTitle => 'Still reading the changes';

  @override
  String get reviewWorkspaceSlowBody =>
      'The server runs git to compare the files. A big project can take a minute.';

  @override
  String get reviewWorkspaceAllViewedTitle => 'You\'ve seen every file';

  @override
  String reviewWorkspaceAllViewedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count notes are on the prompt, ready to send from the conversation.',
      one: '1 note is on the prompt, ready to send from the conversation.',
    );
    return '$_temp0';
  }

  @override
  String get reviewWorkspaceBackToChat => 'Back to the conversation';

  @override
  String reviewWorkspaceCommentOnFile(String file) {
    return 'Comment on $file';
  }

  @override
  String reviewWorkspaceAddFileToPrompt(String file) {
    return 'Add $file to the prompt';
  }

  @override
  String get reviewWorkspaceAddComment => 'Add comment to prompt';

  @override
  String get reviewWorkspaceCommentEmpty => 'Type a comment first.';

  @override
  String get reviewWorkspaceCommentLabel => 'Your comment';

  @override
  String get reviewWorkspaceCommentHint =>
      'What should the agent check or change?';

  @override
  String get reviewWorkspaceCommentHelper =>
      'Kept if you close this, until you add it.';

  @override
  String get integrationsMcpTitle => 'MCP servers';

  @override
  String get integrationsMcpServersLabel => 'MCP servers';

  @override
  String integrationsModelCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count models',
      one: '1 model',
    );
    return '$_temp0';
  }

  @override
  String integrationsProviderActions(String name) {
    return '$name actions';
  }

  @override
  String integrationsManageAccounts(String name) {
    return '管理 $name 账号';
  }

  @override
  String integrationsServerSignIn(String name) {
    return 'Sign in to $name on the server';
  }

  @override
  String get integrationsServerSignInUnavailable =>
      'This server can\'t run a sign-in command from the app.';

  @override
  String integrationsDisconnectNamed(String name) {
    return 'Disconnect $name';
  }

  @override
  String integrationsDisconnectBody(String name) {
    return 'Removes the $name key from this server. A reply already running finishes first.';
  }

  @override
  String get integrationsConnectMethodSubtitle => 'Choose how to connect';

  @override
  String get integrationsKeyHelper =>
      'The key is stored on this server. The app never shows it again.';

  @override
  String get integrationsKeyEmpty => 'Paste the key first.';

  @override
  String get integrationsKeyRejected =>
      'The server didn\'t accept this key. Check it and try again.';

  @override
  String integrationsSignInAtHost(String host) {
    return 'Sign in at $host?';
  }

  @override
  String get integrationsSignInBody =>
      'Approve access in your browser, then come back to this app.';

  @override
  String integrationsSignInInstructions(String instructions) {
    return 'The server says: $instructions';
  }

  @override
  String get integrationsFinishSignInTitle => 'Finish signing in';

  @override
  String get integrationsFinishSignInAction => 'Finish signing in';

  @override
  String get integrationsFinishSignInEmpty => 'Paste the code first.';

  @override
  String get integrationsFinishSignInMcpHelper =>
      'Paste the address your browser ended on after you approved access, or the code it showed.';

  @override
  String get integrationsFinishSignInProviderHelper => '粘贴你批准访问后登录页面显示的代码。';

  @override
  String integrationsOAuthInputsContinue(String name) {
    return 'Open $name sign-in';
  }

  @override
  String get integrationsCancelSignIn => 'Cancel sign-in';

  @override
  String get integrationsPendingNotRecoverable => '完成前请保持此界面打开：离开后，此服务器无法恢复登录。';

  @override
  String integrationsMcpActions(String name) {
    return '$name actions';
  }

  @override
  String integrationsMcpSignIn(String name) {
    return 'Sign in to $name';
  }

  @override
  String integrationsMcpReconnect(String name) {
    return 'Reconnect $name';
  }

  @override
  String integrationsMcpSigningIn(String name) {
    return 'Signing in to $name';
  }

  @override
  String get integrationsMcpSignInOnServer =>
      'Sign in on the server\'s computer; this server can\'t do it from the app.';

  @override
  String integrationsMcpRemoveUntilRestart(String name) {
    return 'Remove $name until restart';
  }

  @override
  String integrationsMcpRemoveTitle(String name) {
    return 'Remove $name until restart?';
  }

  @override
  String get integrationsMcpRemoveBody =>
      'Its tools stop working in this project now. If it\'s in the server\'s configuration, it comes back when the server restarts.';

  @override
  String get integrationsMcpRemoveConfirm => 'Remove until restart';

  @override
  String get integrationsCopyResourceAddress => 'Copy address';

  @override
  String get terminalScreenSourceLabel => 'Shell 的运行位置';

  @override
  String get terminalScreenNameLabel => '名称';

  @override
  String get terminalScreenRenameConfirm => '重命名';

  @override
  String get terminalScreenNameEmpty => '请输入名称。';

  @override
  String terminalScreenStopTitle(String name) {
    return '停止 $name？';
  }

  @override
  String get terminalScreenStopBody => '程序及其启动的所有进程都会停止，终端也会消失。其输出无法找回。';

  @override
  String terminalScreenRemoveTitle(String name) {
    return '移除 $name？';
  }

  @override
  String get terminalScreenRemoveBody => '该终端及其输出将被删除。此操作无法撤销。';

  @override
  String get terminalScreenStopConfirm => '停止终端';

  @override
  String get terminalScreenRemoveConfirm => '移除终端';

  @override
  String get terminalScreenCreateFailed => '无法启动终端';

  @override
  String terminalScreenRemoveEnded(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '移除 $count 个已结束的终端',
      one: '移除 1 个已结束的终端',
    );
    return '$_temp0';
  }

  @override
  String terminalScreenRemoveEndedTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '移除 $count 个已结束的终端？',
      one: '移除 1 个已结束的终端？',
    );
    return '$_temp0';
  }

  @override
  String get terminalScreenRemoveEndedBody => '它们的输出也会一并删除。运行中的终端会保留。';

  @override
  String get terminalScreenUsePhone => '使用此手机的终端';

  @override
  String terminalScreenRowRunning(String command) {
    return '运行中 · $command';
  }

  @override
  String terminalScreenRowEnded(String code, String command) {
    return '已结束 · 代码 $code · $command';
  }

  @override
  String terminalScreenRowEndedNoCode(String command) {
    return '已结束 · $command';
  }

  @override
  String terminalScreenMenuLabel(String name) {
    return '$name 的操作';
  }

  @override
  String terminalScreenOpen(String name) {
    return '打开 $name';
  }

  @override
  String terminalScreenRename(String name) {
    return '重命名 $name';
  }

  @override
  String terminalScreenStop(String name) {
    return '停止 $name';
  }

  @override
  String terminalScreenRemove(String name) {
    return '移除 $name';
  }

  @override
  String get terminalScreenLoading => '正在加载终端';

  @override
  String get terminalScreenPaused => '应用在后台时已暂停';

  @override
  String get terminalScreenConnecting => '正在连接终端';

  @override
  String get terminalScreenCopy => '复制输出';

  @override
  String terminalScreenPaste(String name) {
    return '粘贴到 $name';
  }

  @override
  String get terminalScreenDetails => '终端详情';

  @override
  String terminalScreenDetailsTitle(String name) {
    return '$name 详情';
  }

  @override
  String get terminalScreenDetailCommand => '命令';

  @override
  String get terminalScreenDetailFolder => '文件夹';

  @override
  String get terminalScreenDetailPid => '进程 ID';

  @override
  String get terminalScreenDetailExit => '退出码';

  @override
  String localTerminalStopNamedTitle(String name) {
    return 'Stop $name?';
  }

  @override
  String localTerminalPasteNamed(String name) {
    return 'Paste into $name';
  }

  @override
  String get localTerminalCopySelection => 'Copy selection';

  @override
  String defaultShellOnlyOne(String name) {
    return '$name · the only shell this server offers';
  }

  @override
  String defaultShellSaveFailed(String error) {
    return 'Couldn\'t change the shell. $error Tap to try again.';
  }

  @override
  String get terminalScreenReadableMode => '显示为易读文本';

  @override
  String get terminalScreenLiveMode => '显示为实时终端';

  @override
  String get localTerminalSetUpLinux => 'Set up Linux on this phone';

  @override
  String get messageViewSendAgain => '重新发送这条消息';

  @override
  String get messageViewContinueReply => '继续此回复';

  @override
  String get reviewRunResultsLoadingTitle => 'Loading run results';

  @override
  String get reviewRunResultsErrorTitle => 'Couldn\'t load run results';

  @override
  String get reviewRunResultsErrorBody =>
      'The server didn\'t send this run\'s history.';

  @override
  String get reviewRunResultsEmptyTitle => 'Nothing to show yet';

  @override
  String get reviewRunResultsScopeChangedTitle => 'The project changed';

  @override
  String get reviewRunResultsCloseAction => 'Close run results';

  @override
  String get reviewRunResultsRunningNotice =>
      'Still running. This shows what it has done so far; pull down for the latest.';

  @override
  String get reviewRunResultsRefreshFailed =>
      'Couldn\'t refresh. This is what was loaded before.';

  @override
  String get reviewRunResultsReviewChanges => 'Review changed files';

  @override
  String get reviewRevertSheetTitle => 'Undo from this prompt?';

  @override
  String get reviewRevertSheetBody =>
      'This prompt and everything after it are hidden while you review. Nothing is final until you choose.';

  @override
  String get reviewRevertPromptLabel => 'From this prompt';

  @override
  String get reviewRevertFilesToggle => 'Put files back too';

  @override
  String get reviewRevertFilesToggleHint =>
      'Files go back to how they were before this prompt.';

  @override
  String get reviewRevertSheetAction => 'Undo and review';

  @override
  String get reviewRevertStageFailed =>
      'Couldn\'t set up the undo. Nothing was hidden.';

  @override
  String get reviewRevertScreenTitle => 'Review the undo';

  @override
  String get reviewRevertScreenIntro =>
      'This prompt and everything after it are hidden. Nothing is final until you choose below.';

  @override
  String get reviewRevertFilesLabel => 'Files in this undo';

  @override
  String get reviewRevertNoFiles => 'No files change with this undo.';

  @override
  String reviewRevertFileLines(int added, int removed) {
    return '+$added −$removed';
  }

  @override
  String reviewRevertFileSupporting(String folder, String lines) {
    return '$folder · $lines';
  }

  @override
  String get reviewRevertRestoreTitle => 'Put everything back';

  @override
  String get reviewRevertKeepTitle => 'Delete the hidden messages';

  @override
  String reviewRevertKeepConfirmTitle(String title) {
    return 'Delete messages in “$title”?';
  }

  @override
  String get reviewRevertKeepConfirmBody => 'This can\'t be undone.';

  @override
  String get reviewRevertKeepConfirmAction => 'Delete hidden messages';

  @override
  String get reviewRevertKeepConsequenceMessages =>
      'The hidden prompt and every message after it are deleted';

  @override
  String get reviewRevertKeepConsequenceFiles => 'Files stay as they are now';

  @override
  String reviewRevertRestoreConfirmTitle(String title) {
    return 'Restore “$title”?';
  }

  @override
  String get reviewRevertRestoreConfirmBody =>
      'The hidden messages come back, and the files in this undo return to how they were when you set it up. You can undo from a prompt again later.';

  @override
  String get reviewRevertRestoreConsequenceMessages =>
      'The hidden messages come back';

  @override
  String reviewRevertRestoreConsequenceFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files are replaced, with any edits made since',
      one: '1 file is replaced, with any edits made since',
    );
    return '$_temp0';
  }

  @override
  String get reviewRevertRestoreConsequenceUnknownFiles =>
      'Files in this undo are replaced, with any edits made since';

  @override
  String get reviewRevertStaleTitle => 'The undo changed';

  @override
  String get reviewRevertNoneTitle => 'Nothing to review';

  @override
  String get reviewRevertNoneBody =>
      'There\'s no undo waiting in this conversation.';

  @override
  String get reviewRevertBackAction => 'Back to the conversation';

  @override
  String get reviewRevertKeptTitle => 'Undo kept';

  @override
  String get reviewRevertKeptBody =>
      'The hidden messages are deleted. Files stay as they are.';

  @override
  String get reviewRevertRestoredTitle => 'Everything is back';

  @override
  String get reviewRevertRestoredBody =>
      'The messages and files are back as they were.';

  @override
  String get reviewRevertFailed =>
      'That didn\'t finish. Check the conversation, then try again.';

  @override
  String get perfTraceClearTimings => 'Clear timings';

  @override
  String appDiagnosticsClearTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Clear $count errors?',
      one: 'Clear 1 error?',
    );
    return '$_temp0';
  }

  @override
  String appDiagnosticsClearBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'The $count errors kept on this phone are removed, also from the saved report. This can\'t be undone.',
      one:
          'The error kept on this phone is removed, also from the saved report. This can\'t be undone.',
    );
    return '$_temp0';
  }

  @override
  String appDiagnosticsClearConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Clear $count errors',
      one: 'Clear 1 error',
    );
    return '$_temp0';
  }

  @override
  String get capabilityStateHere => 'Works here';

  @override
  String get capabilityStateNotServer => 'Not on this server';

  @override
  String get capabilityStateNotDevice => 'Not on this device';

  @override
  String get capabilityNeedsAndroid => 'Needs the Android app';

  @override
  String capabilityAvailableCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count features work here',
      one: '1 feature works here',
    );
    return '$_temp0';
  }

  @override
  String get capabilityAvailableCountDetail =>
      'Show what this server and device can do';

  @override
  String get capabilityAddServer => 'Add a server that has these';

  @override
  String get capabilityAddServerDetail =>
      'Connect another computer or set one up on this phone, then switch to it';

  @override
  String get keepRunningAllSetTitle => '已设置完成';

  @override
  String get keepRunningAllSetBody => 'Android 会让应用在后台保持运行。这部手机上无需再允许其他项。';

  @override
  String get keepRunningDailyLimit =>
      '在 Android 15 及更高版本中，即使这里的选项全部允许，Android 每天也只允许约 6 小时的后台同步。之后应用会在后台暂停，直到你再次打开它。';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutCopyVersion => 'Copy version';

  @override
  String get aboutCheckUpdates => 'Check for updates';

  @override
  String get aboutUpdateIdle => 'Looks for a newer version of this app';

  @override
  String get aboutUpdateChecking => 'Checking…';

  @override
  String get aboutUpdateCurrent => 'You have the latest version';

  @override
  String get aboutUpdateDownloading => 'Downloading the update…';

  @override
  String get aboutUpdateReady =>
      'Update ready. Close and reopen the app to use it.';

  @override
  String get aboutUpdateCannot =>
      'This build can\'t update itself. Install the newest release instead.';

  @override
  String get aboutUpdateFailed =>
      'Couldn\'t check for updates. Check your connection and try again.';

  @override
  String get aboutAllLicences => 'All package licenses';

  @override
  String get aboutAllLicencesDetail =>
      'The license text of every library bundled in this build';

  @override
  String get aboutPackageId => 'Package id';

  @override
  String get providerQuotaProviderLabel => 'Provider';

  @override
  String get providerQuotaRouteLabel => 'Collector route';

  @override
  String get usageHubUnavailableTitle => 'No usage to show';

  @override
  String get usageHubUnavailableBody =>
      'Connect to a saved server to see what it spent and what your provider accounts have left.';

  @override
  String get voiceSetupSubtitle =>
      'Download a speech model once. After that, voice input runs on this phone without the internet.';

  @override
  String voiceSetupDownloadPack(String model, String size) {
    return 'Download $model ($size)';
  }

  @override
  String voiceSetupUsePack(String model) {
    return 'Use $model';
  }

  @override
  String voiceSetupRedownloadPack(String model) {
    return 'Download $model speech model again';
  }

  @override
  String voiceSetupDeletePack(String model, String size) {
    return 'Delete $model speech model ($size)';
  }

  @override
  String voiceSetupKeepPack(String model) {
    return 'Keep $model';
  }

  @override
  String voiceSetupDownloadingPack(String model) {
    return 'Downloading $model';
  }

  @override
  String get voiceSetupModelLabel => 'Speech model';

  @override
  String get voiceNoticesTitle => 'Voice licenses';

  @override
  String get voiceNoticesIntro =>
      'Voice input is built on these open-source parts. Open one to read its license.';

  @override
  String voiceNoticesMadeBy(String maker, String license) {
    return '$maker · $license';
  }

  @override
  String voiceNoticesOpenWebsite(String name) {
    return 'Open the $name website';
  }

  @override
  String get voiceNoticesWhisper => 'Whisper speech models';

  @override
  String get voiceSetupBusyReason => 'Available after the download';

  @override
  String get shorebirdUpdateReadyTitle => 'App update ready';

  @override
  String get shorebirdUpdateReadyBody =>
      'It takes effect when you fully close the app and open it again.';

  @override
  String desktopReleaseAvailable(String tag) {
    return 'Update $tag is available';
  }

  @override
  String get desktopReleaseWhatChanged =>
      'The release page lists what changed and has the downloads.';

  @override
  String get desktopReleaseOpenPage => 'Open release page';

  @override
  String get runningWorkTitle => 'Work in this conversation';

  @override
  String get runningWorkFailed => 'Failed';

  @override
  String runningWorkAgentState(String state) {
    return 'Agent · $state';
  }

  @override
  String runningWorkCommandState(String state) {
    return 'Command · $state';
  }

  @override
  String get runningWorkOffline =>
      'Reconnecting. Try again once the server answers.';

  @override
  String runningWorkStopAgent(String title) {
    return 'Stop “$title”';
  }

  @override
  String runningWorkStopAgentTitle(String title) {
    return 'Stop “$title”?';
  }

  @override
  String get runningWorkStopAgentBody =>
      'The agent stops where it is. Its conversation and the files it changed are kept.';

  @override
  String get runningWorkStopAgentConfirm => 'Stop agent';

  @override
  String get runningWorkScopeChangedTitle => 'Server or project changed';

  @override
  String get runningWorkAgentsFailed =>
      'Couldn\'t load this conversation\'s agents.';

  @override
  String get runningWorkCommandsFailed =>
      'Couldn\'t load this conversation\'s commands.';

  @override
  String get runningWorkEmptyTitle => 'Nothing running';

  @override
  String get runningWorkEmptyBody =>
      'Agents and commands this conversation starts show here while they run and after they end.';

  @override
  String get runningWorkBackgroundBody =>
      'The work keeps running on the server and its results come back here.';

  @override
  String get runningWorkBackgroundAction => 'Keep chatting while it runs';

  @override
  String get shellOutputCopyFirst => 'Copy output first';

  @override
  String get shellOutputLimitTitle => 'Stop it after…';

  @override
  String shellOutputStopsIn(String time) {
    return 'stops in $time';
  }

  @override
  String get shellOutputNoLimit => 'no time limit';

  @override
  String shellOutputAboutToStop(String time) {
    return 'It stops in $time. Change timeout to give it longer.';
  }

  @override
  String get shellOutputReadFailed => 'Couldn\'t read the output.';

  @override
  String get shellOutputLimitFailed => 'Couldn\'t change the time limit.';

  @override
  String get shellOutputDetailCommand => 'Command as typed';

  @override
  String get shellOutputDetailFolder => 'Folder';

  @override
  String get shellOutputDetailExit => 'Exit code';

  @override
  String get shellOutputDetailId => 'Command ID';

  @override
  String get shellOutputReading => 'Reading output';

  @override
  String get sessionDestinationWarpTitle => 'Move to the cloud';

  @override
  String get sessionDestinationSeparateCopy => 'Separate copy';

  @override
  String sessionDestinationCloudKind(String state) {
    return 'Cloud machine · $state';
  }

  @override
  String get sessionDestinationConnected => 'Connected';

  @override
  String get sessionDestinationNotConnected => 'Not connected';

  @override
  String get sessionDestinationNotConnectedWhy =>
      'Not connected. It can be picked once it connects.';

  @override
  String sessionDestinationChangesGo(String destination) {
    return 'With changes, they go with it to $destination.';
  }

  @override
  String sessionDestinationChangesCopied(String destination) {
    return 'With changes, a copy goes with it to $destination.';
  }

  @override
  String sessionDestinationChangesStay(String place) {
    return 'Without changes, they stay in $place.';
  }

  @override
  String sessionDestinationMoveWithout(String destination) {
    return 'Move to $destination without changes';
  }

  @override
  String get sessionDestinationMoveFailed => 'Couldn\'t move the conversation.';

  @override
  String get sessionDestinationLoadFailed =>
      'Couldn\'t load the places to move to';

  @override
  String get sessionDestinationNoneTitle => 'Nowhere to move it';

  @override
  String get sessionDestinationNoneMoveBody =>
      'This project has only this folder. A separate copy of the project shows here once it exists.';

  @override
  String get sessionDestinationNoneWarpBody =>
      'This project has no cloud machine yet.';

  @override
  String get consoleOrganizationWhatChanges =>
      'Models, providers and billing follow the organization you pick.';

  @override
  String consoleOrganizationSwitchBody(String organization) {
    return '$organization becomes the organization for models, providers and billing. Models reload; nothing running is stopped.';
  }

  @override
  String consoleOrganizationSwitchConfirm(String organization) {
    return 'Switch to $organization';
  }

  @override
  String get consoleOrganizationLoadFailed =>
      'Couldn\'t load your organizations';

  @override
  String get consoleOrganizationNoneTitle => 'No organizations';

  @override
  String get consoleOrganizationOnlyOne =>
      'This is your only organization, so there is nothing to switch to.';

  @override
  String get sessionContextLoading => 'Loading context';

  @override
  String get sessionContextMovedTitle => 'This conversation moved';

  @override
  String get sessionContextLoadFailed => 'Couldn\'t load the context';

  @override
  String get sessionContextRefreshFailed =>
      'Couldn\'t refresh. The numbers below are from the last read.';

  @override
  String sessionContextVerdictPlenty(String percent) {
    return '$percent% used · plenty left';
  }

  @override
  String sessionContextVerdictUsed(String percent) {
    return '$percent% used';
  }

  @override
  String sessionContextVerdictNear(String percent) {
    return '$percent% used';
  }

  @override
  String sessionContextVerdictFull(String percent) {
    return '$percent% used · at the limit';
  }

  @override
  String get sessionContextNearLimitTitle => 'Near the limit';

  @override
  String get sessionContextNearLimitBody =>
      'Older details may be dropped from what the model sees. Compact the conversation to keep going, or start a new one.';

  @override
  String get sessionContextCompactAction => 'Compact this conversation';

  @override
  String get sessionContextCompactTitle => 'Compact this conversation?';

  @override
  String get sessionContextCompactBody =>
      'OpenCode summarizes the conversation so far and continues from the summary, so it takes less of the model\'s limit.';

  @override
  String get sessionContextCompactKept => 'Every message stays in the history.';

  @override
  String get sessionContextCompactConfirm => 'Compact conversation';

  @override
  String get sessionContextCompactStarted =>
      'Compacting started. The numbers update when it finishes.';

  @override
  String get sessionContextCompactBusy => 'Wait for the reply to finish.';

  @override
  String get sessionContextMakeupTitle => 'Latest request input';

  @override
  String sessionContextTokens(String count) {
    return '$count tokens';
  }

  @override
  String get sessionContextModelId => 'Model ID';

  @override
  String get demoScreenTitle => '离线试用';

  @override
  String get demoScreenSimulated => '模拟 · 不保存任何内容';

  @override
  String get demoScreenFinished => '这就是完整流程：一条提示词、一次回复和一处经过审查的编辑。';

  @override
  String sessionContextPercent(String percent) {
    return '$percent %';
  }

  @override
  String sessionDestinationChangesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changed files are present.',
      one: '1 changed file is present.',
    );
    return '$_temp0';
  }

  @override
  String get activeContextLoading => 'Reading the active context…';

  @override
  String activeContextAllCount(int count) {
    return 'All messages · $count';
  }

  @override
  String get activeContextChangedTitle => 'This view is outdated';

  @override
  String get activeContextFailedTitle => 'Couldn\'t read the context';

  @override
  String get activeContextIntro =>
      'What the model reads on its next turn, after the latest summary.';

  @override
  String get activeContextEmptyDetail =>
      'Nothing is kept for the next turn yet. Pull down to check again.';

  @override
  String get activeContextWhat => 'active context';

  @override
  String activeContextRowMenu(String type) {
    return 'Actions for $type';
  }

  @override
  String activeContextOpenMessage(String type) {
    return 'Open $type';
  }

  @override
  String activeContextCopyMessage(String type) {
    return 'Copy $type text';
  }

  @override
  String get activeContextMessageId => 'Message id';

  @override
  String activeContextCopyPart(String part) {
    return 'Copy $part';
  }

  @override
  String get sessionNoteDeleting => 'Deleting the note…';

  @override
  String get sessionNoteSaving => 'Saving the note…';

  @override
  String get sessionNoteLoading => 'Reading the saved note…';

  @override
  String get sessionNoteLoadFailed => 'Couldn\'t read the note';

  @override
  String get sessionNoteSaveFailed => 'Couldn\'t save the note';

  @override
  String get sessionNoteFieldLabel => 'Note';

  @override
  String get sessionNoteFieldLocked => 'Refresh the saved note before editing.';

  @override
  String sessionNoteTooLong(int over, int limit) {
    return '$over bytes too long. A note can be up to $limit bytes.';
  }

  @override
  String get sessionNoteWriteFirst => 'Write a note to save it.';

  @override
  String get sessionNoteEmptyUseDelete =>
      'To remove the note, use Delete saved note.';

  @override
  String get sessionRelationsTitle => 'Subagents';

  @override
  String sessionRelationsStopTitle(String title) {
    return 'Stop $title?';
  }

  @override
  String get sessionRelationsStopBody =>
      'The subagent stops its current step. What it already did stays in its conversation.';

  @override
  String get sessionRelationsStopConfirm => 'Stop subagent';

  @override
  String get sessionRelationsFailedTitle => 'Couldn\'t load the subagents';

  @override
  String get sessionRelationsLoading => 'Loading subagents…';

  @override
  String get sessionRelationsStartedFrom => 'Started from';

  @override
  String sessionRelationsSubagentCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count subagents',
      one: '1 subagent',
    );
    return '$_temp0';
  }

  @override
  String get sessionRelationsOpenToAnswer => 'open to answer';

  @override
  String get sessionRelationsIdle => 'Idle';

  @override
  String get sessionRelationsThisConversation => 'This conversation';

  @override
  String get sessionRelationsOpening => 'Opening…';

  @override
  String sessionRelationsRowMenu(String title) {
    return 'Actions for $title';
  }

  @override
  String sessionRelationsOpen(String title) {
    return 'Open $title';
  }

  @override
  String sessionRelationsCopyHandoff(String title) {
    return 'Continue $title on computer';
  }

  @override
  String sessionRelationsPin(String title) {
    return 'Pin $title';
  }

  @override
  String sessionRelationsUnpin(String title) {
    return 'Unpin $title';
  }

  @override
  String sessionRelationsStop(String title) {
    return 'Stop $title';
  }

  @override
  String get webSourcesInvalidUrl =>
      'Enter an HTTP or HTTPS address without a user name or password.';

  @override
  String get webSearchFailedTitle => 'Search didn\'t finish';

  @override
  String get webSearchTryAgain => 'Search again';

  @override
  String get webSearchBusy => 'Wait for the search to finish.';

  @override
  String get webSearchQueryHint => 'For example: flutter golden tests';

  @override
  String get webSearchNeedsProvider =>
      'Set up a search provider on this server first.';

  @override
  String get webSearchEmptyDetail => 'Try other words, or paste a link below.';

  @override
  String webSearchResults(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count results',
      one: '1 result',
    );
    return '$_temp0';
  }

  @override
  String get webSourcesAdded => 'Added';

  @override
  String webSourcesAddNamed(String title) {
    return 'Add $title to prompt';
  }

  @override
  String webSourcesRowMenu(String title) {
    return 'Actions for $title';
  }

  @override
  String webSourcesOpenHost(String host) {
    return 'Open $host in browser';
  }

  @override
  String get webSourcesAddLink => 'Add link to prompt';

  @override
  String get webSourcesPasteDetail =>
      'A public address, with an optional excerpt';

  @override
  String webSourcesRemoveNamed(String title) {
    return 'Remove $title from prompt';
  }

  @override
  String get webSearchSearching => 'Searching…';

  @override
  String get webSearchFindingProviders => 'Finding search providers…';

  @override
  String webSourcesDone(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Add $count sources to prompt',
      one: 'Add 1 source to prompt',
    );
    return '$_temp0';
  }

  @override
  String get webSourcesScopeChangedTitle => 'The server changed';

  @override
  String get sessionExportFormatLabel => 'Format';

  @override
  String get sessionExportJsonUnavailable =>
      'This server can\'t send a complete copy. Save the readable transcript instead.';

  @override
  String get sessionExportPrivacyLabel => 'Privacy';

  @override
  String get sessionExportRedactKeeps =>
      'Keeps who wrote each message; the words become placeholders. Not a backup.';

  @override
  String get sessionExportRedactBusy =>
      'Wait until the file is saved to change this.';

  @override
  String get sessionExportRedactChanged =>
      'Open export again from the conversation to change this.';

  @override
  String get sessionExportSaveJson => 'Save complete conversation';

  @override
  String get sessionExportSaveMarkdown => 'Save readable transcript';

  @override
  String get sessionExportSaveFailed =>
      'Couldn\'t write the file on this device. Nothing changed on the server. Try again, or choose another folder.';

  @override
  String get capabilitiesToolsMissingTitle => 'Tools aren\'t listed';

  @override
  String capabilitiesToolsMissingOnServer(String server) {
    return '$server doesn\'t list its tools';
  }

  @override
  String get mcpSetupWhere => 'Where it goes';

  @override
  String get mcpSetupHowItRuns => 'How it runs';

  @override
  String get mcpSetupHeaders => 'Headers';

  @override
  String get mcpSetupAdvanced => 'Advanced';

  @override
  String get mcpSetupAdvancedRemote => 'Sign-in detection and timeout';

  @override
  String get mcpSetupAdvancedLocal => 'Working folder and timeout';

  @override
  String get mcpSetupNoProject => 'Open a project first';

  @override
  String get mcpSetupRuntimeNote =>
      'It connects now and is gone when OpenCode restarts. For a lasting setup, edit the server configuration.';

  @override
  String mcpSetupSaveNamed(String name) {
    return 'Save $name';
  }

  @override
  String mcpSetupAddNamed(String name) {
    return 'Add $name';
  }

  @override
  String get mcpSetupLocationChangedShort => 'The server or project changed';

  @override
  String get mcpSetupSaveFailed => 'Couldn\'t add the MCP server';

  @override
  String get mcpSetupDiscardTitle => 'Discard this MCP server?';

  @override
  String get mcpSetupDiscardBody =>
      'What you typed here isn\'t saved and will be lost.';

  @override
  String get mcpSetupDiscardConfirm => 'Discard server';

  @override
  String get externalAgentsEmptyTitle => 'No outside agents yet';

  @override
  String get externalAgentsEmptyBody =>
      'Add one by its web address. You see what it says about itself before anything is saved.';

  @override
  String get externalAgentsBoundary =>
      'Only the text you send reaches an outside agent. Your projects, files and other conversations stay on this phone.';

  @override
  String get externalAgentsRemovalIncomplete =>
      'Removal didn\'t finish · tap to try again';

  @override
  String externalAgentsRemoveNamed(String name) {
    return 'Remove $name from this phone';
  }

  @override
  String externalAgentsRemoveTitle(String name) {
    return 'Remove $name?';
  }

  @override
  String get externalAgentsRemoveBody =>
      'Its saved tasks and key leave this phone. Work it already started carries on, and what it keeps stays with it.';

  @override
  String get externalAgentsBusy => 'Wait for the current step to finish';

  @override
  String get externalAgentsAddressHelper =>
      'Its web address, or the address of its Agent Card.';

  @override
  String get externalAgentsCheck => 'Check agent';

  @override
  String get externalAgentsCheckNeedsAddress => 'Type the agent address first';

  @override
  String get externalAgentsStopChecking => 'Stop checking';

  @override
  String get externalAgentsCheckFailedTitle => 'Couldn\'t check this agent';

  @override
  String externalAgentsSaveNamed(String name) {
    return 'Save $name';
  }

  @override
  String get externalAgentsSaveNeedsKey => 'Enter the agent key first';

  @override
  String get externalAgentsAboutLabel => 'What it says about itself';

  @override
  String get externalAgentsUnverified =>
      'The agent describes itself. This app hasn\'t verified who runs it, what it can do or what it costs.';

  @override
  String get externalAgentsUnsupportedTitle => 'Agent not supported';

  @override
  String get externalAgentsUnsupportedBody =>
      'It doesn\'t take text tasks the way this app sends them, or it asks for a sign-in this app doesn\'t support.';

  @override
  String get externalAgentsKeyLabel => 'Agent key';

  @override
  String get externalAgentsKeyHelper =>
      'The key its owner gave you. It stays in this phone\'s secure storage and is sent only to this agent.';

  @override
  String get externalAgentsNoKey =>
      'This agent asks for no key. Don\'t send private information unless you trust it.';

  @override
  String get externalAgentsDetailCard => 'Agent Card';

  @override
  String get externalAgentsDetailEndpoint => 'Endpoint';

  @override
  String get externalAgentsDetailVersion => 'Version';

  @override
  String get externalAgentsDetailConnection => 'Connection';

  @override
  String externalAgentsNewTaskNamed(String name) {
    return 'New task for $name';
  }

  @override
  String externalAgentsReplaceKeyNamed(String name) {
    return 'Replace key for $name';
  }

  @override
  String externalAgentsReplaceKeyTitle(String name) {
    return 'Replace key for $name';
  }

  @override
  String get externalAgentsSaveKey => 'Save key';

  @override
  String get externalAgentsTasksLabel => 'Tasks';

  @override
  String get externalAgentsNoTasksTitle => 'No tasks yet';

  @override
  String get externalAgentsNoTasksBody =>
      'Write a task and read it over before it\'s sent. Opening a sent task checks on it; it is never sent twice.';

  @override
  String get externalAgentsUntitledTask => 'New task';

  @override
  String externalAgentsSendNamed(String name) {
    return 'Send to $name';
  }

  @override
  String externalAgentsReplyNamed(String name) {
    return 'Reply to $name';
  }

  @override
  String get externalAgentsSendNeedsText => 'Write the task first';

  @override
  String get externalAgentsReplyNeedsText => 'Write your reply first';

  @override
  String get externalAgentsSendNote =>
      'Only this text is sent. The agent may use its own services and charge for them; check its terms.';

  @override
  String externalAgentsCheckedAt(String age) {
    return 'Checked with the agent $age ago';
  }

  @override
  String get externalAgentsPullToCheck =>
      'Saved on this phone · pull down to check with the agent';

  @override
  String externalAgentsStopMenu(String name) {
    return 'Ask $name to stop this task';
  }

  @override
  String get externalAgentsStopUnavailable =>
      'Check with the agent first; pull down to refresh';

  @override
  String get externalAgentsForgetMenu => 'Forget this task on this phone';

  @override
  String get externalAgentsForgetTitle => 'Forget this task?';

  @override
  String get externalAgentsForgetBody =>
      'It leaves this phone. Work the agent already started carries on, and its own copy stays with it.';

  @override
  String get externalAgentsForgetConfirm => 'Forget task';

  @override
  String mcpSetupSavedNamed(String name) {
    return 'Saved $name on this server';
  }

  @override
  String mcpSetupSavedNotConnectedBody(String reason) {
    return 'The app didn\'t reconnect afterwards. $reason';
  }

  @override
  String get mcpSetupSavedElsewhere =>
      'The server or project changed after saving, so this page can\'t reconnect for it. Close it and check MCP servers.';

  @override
  String get mcpSetupUnavailableTitle => 'Can\'t add MCP servers';

  @override
  String get mcpSetupUnavailableBody =>
      'It doesn\'t accept new MCP servers from the app. Add them in its configuration on the computer; they then show under MCP servers.';

  @override
  String get commandAuthSheetWorking => 'Asking the server…';

  @override
  String get credentialSheetLoading => '正在读取已保存的账号…';

  @override
  String credentialSheetEmptyBody(String provider) {
    return '请在“服务商”中重新登录 $provider 以添加账号。';
  }

  @override
  String credentialSheetActions(String label) {
    return '$label 的操作';
  }

  @override
  String credentialSheetUseNamed(String label) {
    return '使用 $label';
  }

  @override
  String get credentialSheetInUse => '已在使用';

  @override
  String credentialSheetRenameNamed(String label) {
    return '重命名 $label…';
  }

  @override
  String credentialSheetRemoveNamed(String label) {
    return '移除 $label';
  }

  @override
  String credentialSheetRemoveBody(String label, String provider) {
    return '将从此服务器移除 $label。使用它的项目需要改用另一个 $provider 账号。';
  }

  @override
  String credentialSheetRenamed(String label) {
    return '已重命名为 $label。';
  }

  @override
  String get credentialSheetLabelEmpty => '请为账号命名。';

  @override
  String get credentialSheetLabelInvalid => '最多 128 个字符，不能包含换行或控制字符。';

  @override
  String pendingAuthRecoveryForgetTitle(String integration) {
    return '要忽略 $integration 登录吗？';
  }

  @override
  String get pendingAuthRecoveryForgetBody =>
      '应用将不再在此设备上跟踪它。服务器上不会取消任何内容；未完成的登录会在那里自行过期。';

  @override
  String get toolsScreenLoadFailed => 'Couldn\'t load this model\'s tools';

  @override
  String get toolsScreenSearchWhat => 'tools';

  @override
  String get toolsScreenRegisteredOnly =>
      'Registered on this project · this model can’t call it';

  @override
  String get toolsDetailTakes => 'Takes';

  @override
  String get toolsDetailTakesNothing => 'Takes nothing.';

  @override
  String get toolsDetailRequired => 'required';

  @override
  String get toolsDetailOptional => 'optional';

  @override
  String get toolsDetailTypeText => 'text';

  @override
  String get toolsDetailTypeNumber => 'number';

  @override
  String get toolsDetailTypeYesNo => 'yes or no';

  @override
  String get toolsDetailTypeList => 'list';

  @override
  String get toolsDetailTypeGroup => 'group of values';

  @override
  String get toolsDetailTypeAny => 'any value';

  @override
  String commandsScreenRunsWith(String agent) {
    return 'Runs with $agent';
  }

  @override
  String get commandsScreenMenuLabel => 'Command actions';

  @override
  String commandsScreenCopy(String command) {
    return 'Copy $command';
  }

  @override
  String get referencesScreenLoading => 'Loading references';

  @override
  String get referencesScreenLoadFailed => 'Couldn’t load references';

  @override
  String get referencesScreenIntro =>
      'Folders this project points its agents to. Add one to a prompt and the agent can read what it holds.';

  @override
  String get referencesScreenEmptyBody =>
      'A reference is a folder the project’s agents can read. References set up for this project appear here.';

  @override
  String get referencesScreenMenuLabel => 'Reference actions';

  @override
  String referencesScreenAdd(String mention) {
    return 'Add $mention to the prompt';
  }

  @override
  String referencesScreenShowDetails(String name) {
    return 'Show $name details';
  }

  @override
  String referencesScreenCopyMention(String mention) {
    return 'Copy $mention';
  }

  @override
  String get referencesScreenCopyPath => 'Copy path';

  @override
  String referencesScreenSheetBody(String mention) {
    return 'Write $mention in a prompt and the agent reads this folder for that reply.';
  }

  @override
  String get referencesScreenPathLabel => 'Path';

  @override
  String get skillsScreenLoading => 'Loading skills';

  @override
  String get skillsScreenLoadFailed => 'Couldn’t load skills';

  @override
  String get skillSheetViewLabel => 'How to show the skill';

  @override
  String get skillSheetLocation => 'File';

  @override
  String skillSheetCopyCommand(String command) {
    return 'Copy $command';
  }

  @override
  String get skillSheetCheckConversation =>
      'Check the conversation before trying again.';

  @override
  String get skillSheetSending => 'Adding the skill…';

  @override
  String toolCardDelegatedTo(String agent) {
    return '已委派给 $agent';
  }

  @override
  String get toolCardExitPassed => 'Passed · exit code 0';

  @override
  String toolCardExitFailed(int code) {
    return 'Failed · exit code $code';
  }

  @override
  String get toolCardRunCommandAgain => 'Run this command again';

  @override
  String get toolCardCopyCommand => 'Copy command';

  @override
  String toolCardLoadImageAgain(String name) {
    return '重新加载 $name';
  }

  @override
  String toolCardChangesIn(String file) {
    return '$file 中的更改';
  }

  @override
  String mobileTasksShowAll(int count) {
    return 'Show all $count tasks';
  }

  @override
  String get composerBusyReason => '正在准备你的提示词…';

  @override
  String get composerToolsTextOnly => '这台服务器只接受文字';

  @override
  String composerToolsAgentTextOnly(String agent) {
    return '在这里 $agent 只接受文字';
  }

  @override
  String launcherConversationHint(String project, String agent) {
    return 'Conversation in $project · $agent';
  }

  @override
  String composerToolsAgentPicturesOnly(String agent) {
    return '$agent 只接受图片：请使用“照片库”或“拍照”';
  }

  @override
  String chatsNewAgentNeedsProjectsFolder(String agent) {
    return '$agent 只能在这部手机上的项目中工作。请选择其中一个。';
  }

  @override
  String get composerToolCommandsTitle => '命令和智能体';

  @override
  String get composerToolSavedSubtitle => '把保存过的提示词放回草稿';

  @override
  String get composerToolSaveForLater => '保存提示词以备后用';

  @override
  String get composerToolNothingToSave => '请先输入内容或添加附件';

  @override
  String get composerToolsMore => '更多工具';

  @override
  String get composerReturnedToDraft => '已放回草稿';

  @override
  String get promptHistoryIntro => 'Tap a prompt to add it to your draft.';

  @override
  String get promptEditorDiscardChanges => 'Discard changes';

  @override
  String get promptEditorDone => 'Use in draft';

  @override
  String get promptEditorFieldLabel => 'Prompt';

  @override
  String get promptStashDeleted => 'Saved prompt deleted';

  @override
  String get promptStashIntro => 'Newest first · kept on this device';

  @override
  String get promptStashEmptyTitle => 'No saved prompts yet';

  @override
  String get promptStashEmptyBody =>
      'Choose Save prompt for later in the + menu to keep a prompt here.';

  @override
  String get promptStashBusy => 'Wait for the current step to finish';

  @override
  String get promptStashRowActions => 'Saved prompt actions';

  @override
  String get promptStashRestoreToDraft => 'Restore to draft';

  @override
  String get promptStashDeleteAction => 'Delete saved prompt';

  @override
  String get modelShortcutsNextRecent => '下一个最近的模型';

  @override
  String get modelShortcutsPreviousRecent => '上一个最近的模型';

  @override
  String get modelShortcutsNoRecent => '请先使用另一个模型，才能切换回来';

  @override
  String get modelShortcutsNoFavorite => '请先在模型选择器中将某个模型标为收藏';

  @override
  String get composerDraftBlockedReason => '请先回答关于这份草稿的问题';

  @override
  String get commandLauncherSubtitle =>
      'Run an action in this conversation, or a command from this server';

  @override
  String get teamChatRefusedTitle => 'Task not taken';

  @override
  String get teamChatRefusedRetry => 'Send the task again';

  @override
  String get teamChatGoneTitle => 'Task no longer listed';

  @override
  String get teamChatGoneBody =>
      'It may have been removed on the team\'s computer. The AI Team page lists the tasks it has now.';

  @override
  String get teamChatGoneOpenTeam => 'Open AI Team page';

  @override
  String activityFinishedRow(String when) {
    return 'Finished · $when';
  }

  @override
  String get activityOfflineRequests =>
      'Requests can\'t load while you\'re offline.';

  @override
  String connectionReconnectTo(String server) {
    return '重新连接到 $server';
  }

  @override
  String get workspaceIsolatedTaskRowDetail =>
      'Works on a separate copy so your main folder stays untouched.';

  @override
  String get workspaceSearchAllDetail =>
      'Every project on this server, archived ones too';

  @override
  String serverDisconnectFrom(String server) {
    return '断开与 $server 的连接';
  }

  @override
  String get localAgentStopNamed => '停止 Claude Code';

  @override
  String get localAgentStartNamed => '启动 Claude Code';

  @override
  String monitorSwitchToTitle(String server) {
    return 'Switch to $server?';
  }

  @override
  String monitorSwitchTo(String server) {
    return 'Switch to $server';
  }

  @override
  String servicesStartNamed(String service) {
    return 'Start $service';
  }

  @override
  String servicesStopNamed(String service) {
    return 'Stop $service';
  }

  @override
  String serverSettingsChangeSignIn(String server) {
    return '更改 $server 的登录信息';
  }

  @override
  String serverSettingsAuthBasic(String user) {
    return 'Basic authentication as $user';
  }

  @override
  String get serverSettingsUpdateHint =>
      'Uses OpenCode\'s official installer; restart the server afterwards.';

  @override
  String get settingsHubModelRow => 'Model';

  @override
  String get notifyTurnOnInAndroid => '在 Android 中开启通知';

  @override
  String get serversAddOtherWays => '或使用其他方式连接';

  @override
  String get libraryImportAConversation => 'Import a conversation';

  @override
  String runResultsStepsShort(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count steps',
      one: '1 step',
    );
    return '$_temp0';
  }

  @override
  String runResultsStepsShortAtLeast(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'At least $count steps',
      one: 'At least 1 step',
    );
    return '$_temp0';
  }

  @override
  String get runResultsUnderAMinute => 'under a minute';

  @override
  String runResultsMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String runResultsHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String get runResultsHowMade => 'How this was put together';

  @override
  String get runResultsRunIdLabel => 'Run id';

  @override
  String get runResultsAgentLabel => 'Agent';

  @override
  String runResultsCommandFailedExit(int code) {
    return 'Failed · exit $code';
  }

  @override
  String runResultsCommandPassedExit(int code) {
    return 'Passed · exit $code';
  }

  @override
  String get runResultsCommandFailedNoExit => 'Failed · exit not recorded';

  @override
  String get runResultsExitNotRecorded => 'Exit not recorded';

  @override
  String get projectHubHealthSubtitle =>
      'Branch, language services and formatters';

  @override
  String projectHubChangedFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files changed',
      one: '1 file changed',
      zero: 'No changes',
    );
    return '$_temp0';
  }

  @override
  String projectHubTerminalsRunning(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count running',
      one: '1 running',
    );
    return '$_temp0';
  }

  @override
  String get projectHubCopyFolderPath => 'Copy folder path';

  @override
  String get terminalScreenNoTerminalThisServer => '此服务器未共享终端';

  @override
  String terminalScreenNoTerminalNamed(String server) {
    return '$server 未共享终端';
  }

  @override
  String get terminalScreenNoTerminalWhy => '只有共享终端的服务器才能在此打开终端。';

  @override
  String get integrationsSignInWaiting => '登录等待中';

  @override
  String get integrationsSignInMayNotHaveStarted => '登录可能未开始';

  @override
  String get integrationsSignInExpired => '登录已过期';

  @override
  String get integrationsSignInFailed => '登录失败';

  @override
  String get integrationsSignInComplete => '已登录 · 点按完成';

  @override
  String integrationsFinishSigningIn(String provider) {
    return '完成 $provider 登录';
  }

  @override
  String integrationsEnterCodeFor(String provider) {
    return '输入 $provider 的代码';
  }

  @override
  String integrationsCancelSignInFor(String provider) {
    return '取消 $provider 登录';
  }

  @override
  String get integrationsForgetSignInOnPhone => '在这部手机上忽略此登录';

  @override
  String integrationsSignInActions(String provider) {
    return 'Sign-in actions for $provider';
  }

  @override
  String integrationsAccountCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count accounts',
      one: '1 account',
    );
    return '$_temp0';
  }

  @override
  String get toolsScreenNoBackgroundSubagents => 'no background subagents';

  @override
  String get usageRefreshSpending => 'Refresh spending';

  @override
  String get quotaSetupTrustNote =>
      'Your server operator must install and protect this route at the same origin as OpenCode. Reading it uses this saved server\'s sign-in. Confirm only if you installed or trust that deployment.';

  @override
  String get quotaAlertsRowTitle => 'Quota alerts';

  @override
  String get quotaAlertsRowSupporting => 'Sound, Wi-Fi only and quiet hours';

  @override
  String modelPickerUseModel(String model) {
    return '使用 $model';
  }

  @override
  String get modelPickerUseChosenModel => '使用该模型';

  @override
  String get handoffUiComputerCommandLabel => 'Terminal command';

  @override
  String get formRendererDecline => 'Decline this request';

  @override
  String get perfTraceActions => 'Timing report actions';

  @override
  String voiceSetupNotDownloaded(String size) {
    return 'Not downloaded · $size';
  }

  @override
  String get voiceSetupDone => 'Done';

  @override
  String get voiceAllowMicInSettings => 'Allow microphone in Android settings';

  @override
  String sessionContextMessagesSplit(String count, String yours, String agent) {
    return '$count ($yours yours, $agent agent)';
  }

  @override
  String get webSourcesClose => 'Close';

  @override
  String get webSourcesPastedLinks => 'Links you added';

  @override
  String get thisPhoneHostInApp => 'In the app';

  @override
  String get thisPhoneHostTermux => 'In Termux';

  @override
  String get thisPhoneNeedsAttention => 'Needs you';

  @override
  String get thisPhoneSetUp => 'Set up OpenCode';

  @override
  String get thisPhoneStart => 'Start the server';

  @override
  String get thisPhoneStop => 'Stop OpenCode on this phone';

  @override
  String get thisPhoneUpdate => 'Update OpenCode';

  @override
  String thisPhoneUpdateDetail(String version) {
    return 'Installs version $version';
  }

  @override
  String get thisPhoneAddTools => 'Add tools';

  @override
  String get thisPhoneInstalled => 'Installed';

  @override
  String get thisPhoneTerminal => 'Open a terminal';

  @override
  String get thisPhoneStorage => 'Storage';

  @override
  String get thisPhoneConnect => 'Connect';

  @override
  String get thisPhoneRemove => 'Remove OpenCode';

  @override
  String get thisPhoneBusy => 'Wait for the current step to finish';

  @override
  String get phoneSetupTermuxAllowHow => '在 Termux 中粘贴复制的那一行并按回车。';

  @override
  String get phoneSetupTermuxUpdatingTitle => '正在更新这部手机';

  @override
  String get phoneSetupTermuxStartingTitle => '正在启动服务器';

  @override
  String get phoneSetupTermuxConnecting => '正在连接';

  @override
  String get phoneSetupTermuxLeaveHint =>
      '你可以离开应用。Termux 会继续工作，你回来时这个列表会显示最新进度。';

  @override
  String get phoneSetupTermuxCost => '首次约需 10–15 分钟，占用 Termux 的存储空间';

  @override
  String removeFromPhoneKeepBody(String size) {
    return '将移除 OpenCode 及其工具，释放约 $size。';
  }

  @override
  String get removeFromPhoneKeepBodyUnmeasured => '将移除 OpenCode 及其工具。';

  @override
  String get removeFromPhoneKeepConfirm => '移除 OpenCode，保留我的项目';

  @override
  String get removeFromPhoneDeleteAll => '全部删除';

  @override
  String get removeFromPhoneDeleteTitle => '删除 OpenCode 和项目？';

  @override
  String removeFromPhoneDeleteBody(String size) {
    return '将删除此手机上的 OpenCode、其工具和所有项目，释放约 $size。此操作无法撤销。';
  }

  @override
  String get removeFromPhoneDeleteBodyUnmeasured =>
      '将删除此手机上的 OpenCode、其工具和所有项目。此操作无法撤销。';

  @override
  String get thisPhoneManage => '管理“此手机”';

  @override
  String get chatRequestWho => '智能体';

  @override
  String get chatRequestIfIgnored => '智能体会等你回应，不会丢失任何内容。';

  @override
  String chatRequestMoreWaiting(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '还有 $count 个请求在等待。',
    );
    return '$_temp0';
  }

  @override
  String get chatRequestNoConnection => '未连接到服务器，无法在这里回应。';

  @override
  String get chatRequestAlwaysTitle => '始终允许这些请求';

  @override
  String chatRequestAlwaysScope(String patterns, String context) {
    return '从现在起，$context，$patterns 将不经询问直接运行。你可以随时在设置中撤销。';
  }

  @override
  String chatRequestAlwaysConfirm(String what) {
    return '在此项目中始终允许$what？';
  }

  @override
  String get chatRequestAlwaysInProject => '在此项目中';

  @override
  String get chatRequestAlwaysOn => '始终允许';

  @override
  String get chatRequestDetailTool => '工具';

  @override
  String get chatRequestDetailPatterns => '请求的模式';

  @override
  String get chatRequestOtherAnswer => '其他回答';

  @override
  String get chatRequestOtherField => '你的回答';

  @override
  String get formFlowAnsweredElsewhereBody =>
      'This form was answered on another device, so nothing was sent from this phone.';

  @override
  String get approvalsUiPausedDetail => '这部手机未连接。重新连接后将恢复自动批准。';

  @override
  String get teamUiHomeRunReviewNext => 'a reviewer checks it next';

  @override
  String teamUiGateRunStoppedTitle(String title) {
    return '$title stopped';
  }

  @override
  String get termuxProcsKindParentGone => 'Parent gone';

  @override
  String get termuxProcsKindNoOwner => 'No owner';

  @override
  String termuxProcsStopOrphans(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Stop $count orphaned helpers',
      one: 'Stop 1 orphaned helper',
    );
    return '$_temp0';
  }

  @override
  String termuxProcsStopOrphansTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Stop $count orphaned helpers?',
      one: 'Stop the orphaned helper?',
    );
    return '$_temp0';
  }

  @override
  String get teamPhoneStopTeamRow => 'Stop the team on this phone';

  @override
  String get teamPhoneStopTeamRowSupporting =>
      'Agents stop where they are; nothing is lost';

  @override
  String teamUiPhoneWorkingOn(String name) {
    return 'Working on $name';
  }

  @override
  String get teamUiPhoneVersionsLabel => 'Engine versions';

  @override
  String get teamUiPhoneProjectLabel => 'Project folder';

  @override
  String get phoneServerNameInSentence => '应用内的 Ubuntu';

  @override
  String get teamAgentWorkUnblockedShort => 'nothing blocking it';

  @override
  String get teamAgentWorkBlockedShort => 'blocked';

  @override
  String get teamAgentStepCommand => 'Ran a command';

  @override
  String get teamAgentStepTest => 'Ran the tests';

  @override
  String get teamAgentStepRead => 'Read a file';

  @override
  String get teamAgentStepEdit => 'Edited a file';

  @override
  String get teamAgentStepSearch => 'Searched the code';

  @override
  String teamAgentStepTool(String tool) {
    return 'Used $tool';
  }

  @override
  String get teamAgentLastCommandLabel => 'Last command';

  @override
  String get termuxStorageOnlyBuildCaches =>
      'Only build caches can be cleaned here';

  @override
  String get termuxStorageWhereItIs => 'Where it is';

  @override
  String termuxStorageCleanBuildCaches(String size) {
    return 'Clean build caches ($size)';
  }

  @override
  String get monitorBackgroundChecks => 'Background checks';

  @override
  String get settingsTryDemo => 'Try the demo';

  @override
  String quotaMonitorCheckNow(String provider, String server) {
    return 'Check $provider on $server now';
  }

  @override
  String get searchArchivedConversations => 'Archived conversations';

  @override
  String get readAloudConsentEngine =>
      'Only offline voices are offered, but the speech engine is separate software with its own privacy terms.';

  @override
  String get readAloudConsentHeard =>
      'People near you may hear it. Reading stops when you leave this conversation or the app.';

  @override
  String get transcriptFindStopSearchingAll => '停止搜索更早的消息';

  @override
  String nudgeReviewChangesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'OpenCode changed $count files. Look them over before you go on.',
      one: 'OpenCode changed 1 file. Look it over before you go on.',
    );
    return '$_temp0';
  }

  @override
  String get voiceComponentTitle => '语音输入';

  @override
  String get voiceComponentSummary => '动口代替打字，离线也能用';

  @override
  String get voiceComponentRemove => '移除语音输入';

  @override
  String get voiceComponentRemoveTitle => '要移除语音输入吗？';

  @override
  String voiceComponentRemoveBody(String size) {
    return '将删除语音模型并释放 $size。在这里重新添加之前，语音输入将无法使用。';
  }

  @override
  String get setupAppStageDownloading => '正在下载';

  @override
  String get setupAppStageVerifying => '正在检查下载内容';

  @override
  String kitDiffFilePosition(int index, int count) {
    return '$index of $count';
  }

  @override
  String kitDiffFilePositionSpoken(int index, int count) {
    return 'file $index of $count';
  }

  @override
  String get kitDiffViewed => 'Viewed';

  @override
  String get kitDiffSelectHunk => 'Select these lines';

  @override
  String get kitCapFlagTerminalTitle => 'Terminal';

  @override
  String get kitCapFlagTerminalWhy =>
      'This server doesn\'t open a terminal for you.';

  @override
  String get kitCapFlagToolInventoryTitle => 'Tool list';

  @override
  String get kitCapFlagToolInventoryWhy =>
      'This server doesn\'t list the tools its agent can use.';

  @override
  String get demoScreenReset => '重置演示';

  @override
  String get demoScreenLeave => '退出演示';

  @override
  String get demoScreenDisclosure => '这里的一切都在此设备上模拟。不会访问任何服务器、提供商或文件。';

  @override
  String capabilityScreenIntroWithGaps(String server) {
    return '$server decides what appears in this app. Anything it cannot do is left out of the menus and tabs instead of being shown greyed out. Missing features work on other OpenCode servers.';
  }

  @override
  String activeContextMessageTitle(String role) {
    String _temp0 = intl.Intl.selectLogic(role, {
      'user': 'User message',
      'assistant': 'Assistant message',
      'system': 'System message',
      'synthetic': 'Synthetic message',
      'skill': 'Skill message',
      'shell': 'Shell message',
      'compaction': 'Summary message',
      'change': 'Conversation change',
      'other': 'Message',
    });
    return '$_temp0';
  }

  @override
  String get newConversationLastUsed => 'Last used';

  @override
  String get newConversationSoloDetail => 'You and the assistant';

  @override
  String newConversationSoloDetailIn(String project) {
    return 'You and the assistant, in $project';
  }

  @override
  String get newConversationTeamDetail =>
      'The AI Team plans the work and shares it out';

  @override
  String get newConversationTeamOffDetail =>
      'Off on this server · opens the AI Team to set it up';

  @override
  String newConversationCopyTitle(String project) {
    return 'Separate copy of $project';
  }

  @override
  String newConversationCloudTitle(String machine) {
    return 'On $machine';
  }

  @override
  String get newConversationCloudDetail => 'A cloud machine for this project';

  @override
  String get chatDraftCopy => '复制草稿';

  @override
  String get reportProblemIntro =>
      'Say what went wrong. You see the whole report before anything leaves this phone.';

  @override
  String get reportProblemDescribeLabel => 'What happened?';

  @override
  String get reportProblemDescribeHint =>
      'What you did, what you expected, what you got instead';

  @override
  String get reportProblemDescribeFirst => 'Say what happened first';

  @override
  String reportProblemAttached(String title) {
    return 'Attached: $title';
  }

  @override
  String get reportProblemIncludeDiagnostics => 'Include recent diagnostics';

  @override
  String reportProblemIncludeDiagnosticsBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count events from this phone',
      one: '1 event from this phone',
    );
    return '$_temp0, with keys, passwords and server addresses removed';
  }

  @override
  String get reportProblemReview => 'Review report';

  @override
  String get reportProblemReviewHint =>
      'Then open it on GitHub, copy it or share it. Screenshots can be added on the GitHub form.';

  @override
  String reportProblemErrorsLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count recent errors',
      one: '1 recent error',
    );
    return '$_temp0';
  }

  @override
  String get reportProblemClearFailed =>
      'Couldn\'t clear the saved report. Try again.';

  @override
  String get reportProblemPreviewSubtitle => 'This is exactly what is sent';

  @override
  String get reportProblemPublicNotice =>
      'GitHub issues are public. Nothing is filed until you submit the form there.';

  @override
  String get reportProblemOpenGitHub => 'Open GitHub form';

  @override
  String get reportProblemLinkCopiesDiagnostics =>
      'The diagnostics are too long for the link. Opening the form copies them, so paste them into its Diagnostics field.';

  @override
  String get reportProblemLinkCopiesWhole =>
      'The report is too long for the link. Opening the form copies it, so paste it into the form.';

  @override
  String get reportProblemCopy => 'Copy report';

  @override
  String get reportProblemCopied => 'Report copied';

  @override
  String get reportProblemDiagnosticsCopied =>
      'Diagnostics copied: paste them into the form';

  @override
  String get reportProblemShare => 'Share report';

  @override
  String get reportProblemShareFallback =>
      'Sharing didn\'t open, so the report is copied';

  @override
  String reportProblemErrorBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已保留 $count 条错误',
      one: '已保留 1 条错误',
    );
    return '$_temp0';
  }

  @override
  String get thisPhoneAddToolsDetail =>
      'Python, AI Team, voice typing and more';

  @override
  String get phoneSetupTermuxOtherRuntime =>
      'Termux 正在运行另一个版本的 OpenCode。请先在“在这部手机上”中切换，然后继续设置。';

  @override
  String get undoFromHereNowAction => 'Undo now';

  @override
  String undoFromHereBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'This prompt and the $count messages after it are removed, and files go back to how they were before it. You can put them back until you send another prompt.',
      one:
          'This prompt and the message after it are removed, and files go back to how they were before it. You can put them back until you send another prompt.',
      zero:
          'This prompt is removed, and files go back to how they were before it. You can put it back until you send another prompt.',
    );
    return '$_temp0';
  }

  @override
  String get undoFromHereBodyUnknown =>
      'This prompt and everything after it are removed, and files go back to how they were before it. You can put them back until you send another prompt.';

  @override
  String get undoFromHereFilesLabel => 'Files the agent edited after it';

  @override
  String get undoFromHereNoEdits =>
      'The agent reported no file edits after this prompt.';

  @override
  String get undoneStatus => '已从某条提示词处撤销';

  @override
  String get undonePutBack => '恢复';

  @override
  String reviewRevertScreenIntroCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'This prompt and the $count messages after it are hidden. Nothing is final until you choose below.',
      one:
          'This prompt and the message after it are hidden. Nothing is final until you choose below.',
      zero:
          'This prompt is hidden; nothing came after it. Nothing is final until you choose below.',
    );
    return '$_temp0';
  }

  @override
  String reviewRevertKeepConsequenceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'The hidden prompt and the $count messages after it are deleted',
      one: 'The hidden prompt and the message after it are deleted',
      zero: 'The hidden prompt is deleted',
    );
    return '$_temp0';
  }

  @override
  String addServerConnectedHost(String host) {
    return '已连接到 $host';
  }

  @override
  String addServerCheckSlow(String host) {
    return '$host 尚未响应。网络较慢时可能需要一些时间。';
  }

  @override
  String get addServerCheckCancel => '停止检查';

  @override
  String get addServerRemoteHttpAdvice =>
      'Remote HTTP needs your explicit permission. Prefer HTTPS or a private Tailscale connection.';

  @override
  String get addServerUseTailscale => '使用 Tailscale';

  @override
  String get addServerStepsLabel => '添加服务器进度';

  @override
  String get addServerStepKind => '运行的内容';

  @override
  String get addServerStepTailscale => '此手机上的 Tailscale';

  @override
  String get addServerStepPair => '配对或输入地址';

  @override
  String get addServerStepAddress => '地址与登录';

  @override
  String get addServerStepCheck => '检查中';

  @override
  String get addServerStepReady => '就绪';

  @override
  String addServerReadyTitle(String name) {
    return '$name 已连接';
  }

  @override
  String get addServerReadyBody => '接下来会打开它的对话。你可以新建一个，或继续已有的对话。';

  @override
  String addServerReadyOpen(String name) {
    return '打开 $name';
  }

  @override
  String get handoffUiLinkAddTitle => 'Add this server?';

  @override
  String get handoffUiLinkAddServer => 'Add server';

  @override
  String get failedJobReport => 'Report this failure';

  @override
  String get reportProblemJobLog => 'Log of the failed job';

  @override
  String get reportProblemJobLogNone =>
      'No log was kept for this job, so none is attached.';

  @override
  String get sessionsOlderLoadFailed => 'Could not load older conversations.';

  @override
  String get sessionsLoadFailed => 'Could not load your conversations.';

  @override
  String get sessionsListChanged =>
      'The conversation list changed on the server. Refresh it to see older conversations.';

  @override
  String get handoffUiComputerUnsupported =>
      'This server can’t give a command that continues a conversation on a computer.';

  @override
  String get handoffUiComputerChanged =>
      'This conversation moved or its server changed. Go back and try again.';

  @override
  String commandAuthSheetIntro(String provider) {
    return 'Runs this sign-in on your server, not on this phone. Start it only if you trust the server and $provider. You may need to finish steps on the server.';
  }

  @override
  String commandAuthCheckNamed(String provider) {
    return 'Check $provider sign-in now';
  }

  @override
  String credentialRemoveAccountTitle(String provider, String name) {
    return '移除 $provider 账号“$name”？';
  }

  @override
  String credentialRemoveConfirmNamed(String name) {
    return '移除“$name”';
  }

  @override
  String quotaMonitorOffer(String provider, String server) {
    return 'Alert me about $provider on $server';
  }

  @override
  String quotaMonitorOfferDetail(String percent) {
    return 'Keeps checking in the background, including after a restart, and alerts when use reaches $percent. You can change the percentage once it’s on.';
  }

  @override
  String workspaceChooserBody(String server) {
    return 'Conversations run inside a folder on $server.';
  }

  @override
  String get discoverServicesAliases =>
      'services dev server preview logs run commands processes';

  @override
  String get discoverCloudEnvironmentsAliases =>
      'cloud environments managed workspaces remote sandbox';

  @override
  String promptRestoredWithout(String names) {
    return 'Restored without $names; attach them again before sending';
  }

  @override
  String get promptStashOlderDraftsWaiting =>
      'Some older drafts have not moved here yet. They are kept on this device.';

  @override
  String get promptStashOlderDraftsFull =>
      'Older drafts are waiting to move here. Delete saved prompts to make room.';

  @override
  String quotaAnswerLeft(String percent) {
    return 'About $percent left';
  }

  @override
  String quotaAnswerLeftWeek(String percent) {
    return 'About $percent left this week';
  }

  @override
  String quotaAnswerLeftDays(String percent, int days) {
    return 'About $percent left in this $days-day window';
  }

  @override
  String quotaAnswerLeftHours(String percent, int hours) {
    return 'About $percent left in this $hours-hour window';
  }

  @override
  String quotaAnswerResetsAt(String time) {
    return 'resets at $time';
  }

  @override
  String quotaAnswerResetsOn(String day) {
    return 'resets $day';
  }

  @override
  String get quotaAnswerResetPassed => 'reset time passed, refresh to check';

  @override
  String quotaAnswerFromCodex(String server) {
    return 'From your Codex account on $server';
  }

  @override
  String get quotaAnswerAgeNow => 'Last known reading, from just now';

  @override
  String quotaAnswerAgeMinutes(int minutes) {
    return 'Last known reading, from $minutes min ago';
  }

  @override
  String quotaAnswerAgeHours(int hours) {
    return 'Last known reading, from $hours h ago';
  }

  @override
  String quotaAnswerAgeDays(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Last known reading, from $days days ago',
      one: 'Last known reading, from yesterday',
    );
    return '$_temp0';
  }

  @override
  String quotaAnswerAlert(String percent) {
    return 'Alert me at $percent used';
  }

  @override
  String get quotaAnswerAlertDetail =>
      'Says so here when a fresh reading reaches it.';

  @override
  String get quotaAnswerAlertSaveFailed =>
      'Couldn’t save this. The alert stays as it was.';

  @override
  String quotaAnswerAttention(String percent) {
    return 'You’ve used $percent or more of a Codex limit.';
  }

  @override
  String quotaAnswerNotConnected(String server) {
    return 'Connect to $server to see what’s left on its Codex account.';
  }

  @override
  String quotaAnswerSignIn(String server) {
    return 'Sign in to Codex on $server';
  }

  @override
  String get quotaAnswerSignInDetail =>
      'What’s left shows here once you’re signed in with ChatGPT.';

  @override
  String get quotaAnswerUnsupported =>
      'This Codex sign-in has no plan limits to show. They show for ChatGPT sign-ins, not API keys.';

  @override
  String get quotaAnswerUnavailable =>
      'Couldn’t read the Codex limits. Check the connection, then refresh.';

  @override
  String get quotaAnswerInvalid =>
      'Codex sent limits this app can’t read. Nothing new is shown.';

  @override
  String get quotaAnswerNoWindows =>
      'Codex reported no limits for this account.';

  @override
  String get quotaAnswerCodexNote =>
      'Read from the Codex account on this server. Other limits, credits and model-specific caps are not included. Missing data is unknown, not unlimited.';

  @override
  String quotaNeedsCollector(String server) {
    return 'Needs the quota collector on $server';
  }

  @override
  String get quotaCollectorHowTo => 'How to get it';

  @override
  String quotaCollectorStepInstall(String server) {
    return 'Ask whoever runs $server to install the quota collector. It needs Node 20 or later.';
  }

  @override
  String get quotaCollectorStepRoute =>
      'They keep the provider sign-in on the server and put the collector behind the same HTTPS address and password as OpenCode.';

  @override
  String get quotaCollectorStepRetry => 'Then come back here and read again.';

  @override
  String get quotaCollectorGuide => 'Open the collector guide';

  @override
  String quotaCollectorFrom(String provider, String server) {
    return '$provider, from the quota collector on $server';
  }

  @override
  String quotaCollectorNoWindows(String provider, String server) {
    return 'The quota collector on $server reported no limits for $provider.';
  }

  @override
  String quotaStopCollector(String server) {
    return 'Stop using the quota collector on $server';
  }

  @override
  String get quotaStopCollectorDetail =>
      'The reading goes away, and Remaining asks you again before the next read.';

  @override
  String get quotaCollectorAddressLabel => 'Collector address';

  @override
  String get quotaPlanLabel => 'Plan';

  @override
  String get quotaReadAtLabel => 'Read at';

  @override
  String get usageSpentToday => 'Spent today';

  @override
  String get usageSpentThirtyDays => 'Spent in the last 30 days';

  @override
  String get usageSpentYear => 'Spent this year';

  @override
  String get usageSpentAllTime => 'Spent in total';

  @override
  String usageSpentPeriod(String period) {
    return 'Spent · $period';
  }

  @override
  String get automationTitle => 'What runs by itself';

  @override
  String get automationSearchAliases =>
      'automation automatic supervision auto approve approvals always allow permissions background watch monitor team level';

  @override
  String get automationSaveFailed =>
      'This choice wasn\'t saved on this phone. The level above is still the one in use; try again.';

  @override
  String get automationSaving => 'Saving…';

  @override
  String get automationTeamLabel => 'How much the AI Team decides alone';

  @override
  String get automationTeamFootnote =>
      'New team tasks start at this level. You can pick another level for one task when you start it.';

  @override
  String get automationWithoutAskingLabel => 'Without asking you';

  @override
  String get automationSavedRulesDetail =>
      'What the agent may run here without asking you.';

  @override
  String phoneSetupStartTermuxProgressHeadline(int percent) {
    return 'Termux 中的设置已完成 $percent%';
  }

  @override
  String get teamPhoneReadyChooseTitle => 'Choose the team\'s project';

  @override
  String get teamPhoneReadyTurningOnTitle => 'Turning on AI Team';

  @override
  String get teamPhoneReadyFailedTitle => 'AI Team didn\'t start';

  @override
  String teamPhoneReadyBody(String project) {
    return 'Give it a first task. It plans the work, shares it between its agents and brings the result back into $project.';
  }

  @override
  String get teamPhoneReadyFirstTask => 'Give the team a first task';

  @override
  String get teamUiStateNotAnsweringPhone =>
      'The app keeps trying while the team starts on this phone.';

  @override
  String get teamUiStateNotAnsweringComputer =>
      'The app keeps trying. Check that your computer is on and online.';

  @override
  String teamUiStateNotAnsweringComputerNamed(String computer) {
    return 'The app keeps trying. Check that $computer is on and online.';
  }

  @override
  String get teamHomeChangeAddress => 'Change address';

  @override
  String get teamHomeTurnOffFailed =>
      'Couldn’t stop the team on this phone, so it is still on. Try again.';

  @override
  String get teamHomeHostStopped => 'Stopped';

  @override
  String get teamHomeHostCooling => 'Cooling down';

  @override
  String get teamHomeHostStoppedForHeat => 'Stopped to cool down';

  @override
  String teamHomeHeatPausedLine(String time) {
    return 'The phone got hot at $time, so the team paused. It carries on by itself once the phone has cooled.';
  }

  @override
  String teamHomeHeatStoppedLine(String time) {
    return 'The phone got very hot at $time, so the team stopped. Its work is kept, and it starts again once the phone has cooled.';
  }

  @override
  String get teamHomePhoneControls => 'Keep it running, stop it or remove it';

  @override
  String teamHomeSpentToday(String usage) {
    return 'Today · $usage';
  }

  @override
  String get teamHomeSpentHint =>
      'The whole team since midnight where it runs, estimated. The server doesn’t report what each task cost.';

  @override
  String get teamHomeSpentPartial =>
      'Some of today’s use has no price yet, so it cost more than this.';

  @override
  String teamIntroNotFound(String server) {
    return 'No AI Team found on $server';
  }

  @override
  String get pluginsTeamOpenPage => 'See the team’s tasks';

  @override
  String get chatErrorModelNotFound => '服务器上没有这个模型。';

  @override
  String get chatErrorContextOverflow => '这段对话对模型来说太长了。';

  @override
  String get chatErrorProviderAuth => '模型服务商需要你重新登录。';

  @override
  String get chatErrorOutputLength => '回复达到了模型的长度上限。';

  @override
  String get chatErrorContentFilter => '服务商的安全过滤器中止了此回复。';

  @override
  String get chatErrorUnknown => '智能体因错误而停止。';

  @override
  String modelPickerThinkingChip(String level) {
    return '思考：$level';
  }

  @override
  String modelPickerAgentChip(String agent) {
    return '智能体：$agent';
  }

  @override
  String serversRemoveQueuedKept(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条排队的提示词将移至已保存的提示词',
      one: '1 条排队的提示词将移至已保存的提示词',
    );
    return '$_temp0';
  }

  @override
  String serversRemoveQueuedUncertain(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '其中 $count 条可能已发送',
      one: '其中 1 条可能已发送',
    );
    return '$_temp0';
  }

  @override
  String serversRemoveDeleteQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '移除并删除 $count 条排队的提示词',
      one: '移除并删除排队的提示词',
    );
    return '$_temp0';
  }

  @override
  String serversRemoveQueuedChanged(String name) {
    return '$name 的排队提示词已变化，因此未移除任何内容。请再次移除以查看新的数量。';
  }

  @override
  String serversRemoveQueuedNotKept(String name) {
    return '无法将 $name 的排队提示词移至已保存的提示词，因此未移除任何内容。请删除一些已保存的提示词或释放存储空间，然后重试。';
  }

  @override
  String get settingsHubGroupAgent => 'Agent';

  @override
  String get settingsHubGroupConversations => 'Conversations';

  @override
  String get settingsHubGroupThisApp => '此应用';

  @override
  String get settingsHubProvidersRow => 'Providers and accounts';

  @override
  String get settingsHubToolsRow => 'Tools';

  @override
  String get settingsHubShowReasoning => '显示推理过程';

  @override
  String get settingsHubShowTimestamps => '显示时间、令牌和费用';

  @override
  String settingsHubUnavailableCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '此服务器上有 $count 项设置不可用',
      one: '此服务器上有 1 项设置不可用',
    );
    return '$_temp0';
  }

  @override
  String get settingsHubUnavailableWhy => '原因';

  @override
  String get toolsHubMcpSubtitle => 'Servers that give the agent more tools';

  @override
  String get toolsHubCatalogSubtitle =>
      'Slash commands, skills, the model\'s tools and references';

  @override
  String get toolsHubExternalAgentsSubtitle =>
      'Agents on other services you can hand work to';

  @override
  String get privacyPolicyTitle => 'Privacy policy';

  @override
  String get aboutHelpSection => 'Tips and shortcuts';

  @override
  String get settingsHubSearchToolsAliases =>
      'tools mcp integrations commands skills references slash capabilities plugins external agents a2a';

  @override
  String get whileAwayActReconnected => 'Reconnected by itself';

  @override
  String get whileAwayActRestarted => 'Restarted by itself';

  @override
  String get whileAwayActHeatPaused => 'AI Team paused while the phone was hot';

  @override
  String get whileAwayActHeatStopped =>
      'AI Team stopped while the phone was hot';

  @override
  String get whileAwayActHeatResumed => 'AI Team resumed once the phone cooled';

  @override
  String get whileAwayActUpdated => 'Update downloaded by itself';

  @override
  String get whileAwayActAllowed => 'Allowed a request by itself';

  @override
  String get whileAwayActQueuedSent => 'Sent your queued message by itself';

  @override
  String get whileAwayActOther => 'Done automatically';

  @override
  String whileAwayUndoFailed(String act) {
    return '$act · Undo didn\'t go through';
  }

  @override
  String get whileAwayDismiss => 'Dismiss';

  @override
  String get whileAwayHistoryUnreadable =>
      'The list of what ran by itself couldn\'t be read, so earlier automatic actions aren\'t shown.';

  @override
  String get whileAwayHistoryUnsaved =>
      'An automatic action couldn\'t be saved to this list. It happened, but it may not be listed.';

  @override
  String whileAwayActUndone(String act) {
    return '$act · Undone';
  }

  @override
  String whileAwayUndoUnconfirmed(String act) {
    return '$act · Undo not confirmed';
  }

  @override
  String whileAwayDismissed(String what) {
    return 'Dismissed “$what”';
  }

  @override
  String get whileAwayMark => 'Done by itself';

  @override
  String get aiteamComponentTurnOff => 'Turn off AI Team';

  @override
  String get aiteamComponentTurnOffTitle => 'Turn off AI Team?';

  @override
  String get aiteamComponentTurnOffBody =>
      'The team stops and stays off until you turn it on again.';

  @override
  String get aiteamComponentTurnOffKept =>
      'Its tasks and settings, and your projects, stay';

  @override
  String get aiteamComponentTurnOffFailed =>
      'AI Team could not be turned off. Try again, or restart the app.';

  @override
  String thisPhoneRemoveTool(String tool) {
    return 'Remove $tool';
  }

  @override
  String thisPhoneRemoveToolTitle(String tool) {
    return 'Remove $tool?';
  }

  @override
  String thisPhoneRemoveToolBody(String size) {
    return 'About $size comes back. You can add it again from Add tools.';
  }

  @override
  String get thisPhoneRemoveToolBodyUnmeasured =>
      'You can add it again from Add tools.';

  @override
  String thisPhoneRemoveToolNeededBy(String tools) {
    return 'Needed by $tools';
  }

  @override
  String get thisPhoneRemoveToolDetail =>
      'Deletes it from this phone. Your projects stay.';

  @override
  String get thisPhoneRemovePythonDetail =>
      'Deletes pip and venv. Python and your projects stay.';

  @override
  String get thisPhoneRemovePythonLost =>
      'pip and venv are deleted, with the packages only they used';

  @override
  String get thisPhoneRemovePythonKept =>
      'Python itself and your projects stay';

  @override
  String get thisPhoneRemoveTeamDetail =>
      'Deletes the team\'s programs, tasks and settings. Projects stay.';

  @override
  String get thisPhoneRemoveTeamLost =>
      'The team\'s programs, tasks and settings are deleted';

  @override
  String get thisPhoneRemoveTeamLostWork =>
      'Team work not yet brought into your projects is lost';

  @override
  String get thisPhoneRemoveTeamKept =>
      'Your project files and their git history stay';

  @override
  String get thisPhoneRemoveVoiceDetail =>
      'Deletes the speech model. Voice typing stops until you add it again.';

  @override
  String get thisPhoneRemoveVoiceLost =>
      'Voice typing stops until you add it again';

  @override
  String get thisPhoneRemoveToolKept => 'Your projects stay';

  @override
  String get removeFromPhoneKeepLost => 'OpenCode 内的对话和设置将被删除';

  @override
  String get removeFromPhoneKeepKept => '你的项目会保留，重新设置后即可恢复';

  @override
  String removeFromPhoneKeepKeptSize(String size) {
    return '你的项目（$size）会保留，重新设置后即可恢复';
  }

  @override
  String get removeFromPhoneDeleteLost => '未保存在其他位置的项目文件将永久丢失';

  @override
  String get productErrorTimedOut => '服务器响应时间过长。请重试。';

  @override
  String get productErrorCertificate => '服务器的安全证书不受信任，应用已停止。请检查服务器地址。';

  @override
  String get productErrorSignIn => '服务器未接受登录。请在服务器设置中检查密码。';

  @override
  String get productErrorNotFound => '服务器找不到它。它可能已被移动或删除。';

  @override
  String get productErrorConflict => '它在此期间已在服务器上发生变化。请刷新后重试。';

  @override
  String get productErrorBusy => '服务器正忙。请稍等片刻后重试。';

  @override
  String get productErrorRejected => '服务器未接受该请求。请重试，或报告该问题。';

  @override
  String get productErrorUnknown => '操作失败。“详情”会显示具体情况。请重试，或报告该问题。';

  @override
  String get productErrorUnexpected => '应用无法理解服务器的响应。请重试，或报告该问题。';

  @override
  String get productErrorDevice => '此设备上出了点问题。请重试。';

  @override
  String get productErrorStorage => '应用无法在此设备上读取或保存文件。';

  @override
  String get productErrorTermux => 'Termux 未能完成该操作。请确认 Termux 已安装并已打开，然后重试。';

  @override
  String get productErrorDetailsLabel => '错误详情';

  @override
  String productErrorServer(int code) {
    return '服务器出现问题（错误 $code）。请稍后重试。';
  }

  @override
  String get usageBudgetInvalidUsd => 'Enter an amount above 0, like 2.50';

  @override
  String get usageBudgetInvalidTokens =>
      'Enter a whole number of tokens above 0';

  @override
  String get usageBudgetSaveUsd => 'Save USD budget';

  @override
  String get usageBudgetSaveTokens => 'Save token budget';

  @override
  String sessionDestinationMoveWithChanges(String destination) {
    return 'Move to $destination with changes';
  }

  @override
  String sessionDestinationWarpWithChanges(String destination) {
    return 'Move to $destination with a copy of changes';
  }

  @override
  String sessionDestinationMoveTo(String destination) {
    return 'Move to $destination';
  }

  @override
  String sessionDestinationNoChanges(String place) {
    return 'No working changes in $place, so only the conversation moves.';
  }

  @override
  String get settingsBackgroundOffFailed => 'Android 未能关闭后台模式。';

  @override
  String defaultProjectOnlyNotice(String project) {
    return 'Opened $project, the only project on this server.';
  }

  @override
  String defaultProjectLastUsedNotice(String project) {
    return 'Opened $project, the project worked on most recently.';
  }

  @override
  String get defaultProjectChange => 'Choose another project';

  @override
  String defaultReviewScopeNotice(String scope) {
    return 'Showing $scope: it is the view with changes.';
  }

  @override
  String defaultModelNotice(String model) {
    return 'Using $model, this server\'s default model.';
  }

  @override
  String get defaultModelChange => 'Choose another model';

  @override
  String teamControlReceiptSending(String control) {
    return '$control · Sending…';
  }

  @override
  String get teamGateCardRunFailedOpen => 'Choose what to do';

  @override
  String get teamGateCardIfIgnored =>
      'The team waits until you answer. Nothing is lost.';

  @override
  String get teamGateCardIfIgnoredFailed =>
      'The task stays stopped until someone acts on it.';

  @override
  String get teamGateCardIfIgnoredReview =>
      'The work waits for review. Nothing is lost.';

  @override
  String termuxProcsBudget(int count, int limit) {
    return '$count of $limit background processes';
  }

  @override
  String termuxProcsBudgetNote(int limit) {
    return 'Android 12 and later may stop the oldest ones when all apps together run more than $limit.';
  }

  @override
  String termuxProcsBudgetOver(int limit) {
    return 'More than $limit: Android may stop the oldest of these at any time.';
  }

  @override
  String get termuxProcsLoadFailedBody =>
      'Termux did not answer. Open Termux, then try again.';

  @override
  String get termuxProcsRefreshFailed =>
      'Couldn\'t read the list again, so it shows the last reading.';

  @override
  String get termuxProcsStopFailed =>
      'Couldn\'t stop it. Try again, or stop it from Termux.';

  @override
  String get termuxProcsKindOpenCode => 'OpenCode server';

  @override
  String get termuxProcsKindAiTeam => 'AI Team';

  @override
  String get termuxProcsKindClaudeCode => 'Claude Code';

  @override
  String get termuxProcsKindDevService => 'Dev service';

  @override
  String get termuxProcsKindTerminal => 'Terminal';

  @override
  String get termuxProcsKindHelper => 'Helper';

  @override
  String get termuxProcsKindHostApp => 'Termux app';

  @override
  String get termuxProcsBusy => 'Busy';

  @override
  String get termuxProcsIdle => 'Idle';

  @override
  String termuxProcsRunningFor(String elapsed) {
    return 'running $elapsed';
  }

  @override
  String termuxProcsStopKindBody(String names) {
    return '$names: each gets a polite stop, then a forced one after 5 seconds.';
  }

  @override
  String termuxProcsStopKind(int count, String things) {
    return 'Stop all $count $things';
  }

  @override
  String termuxProcsStopKindTitle(int count, String things) {
    return 'Stop all $count $things?';
  }

  @override
  String get termuxProcsKindsAiTeam => 'AI Team processes';

  @override
  String get termuxProcsKindsClaudeCode => 'Claude Code processes';

  @override
  String get termuxProcsKindsDevServices => 'dev services';

  @override
  String get termuxProcsKindsTerminals => 'terminals';

  @override
  String get termuxProcsKindsHelpers => 'helpers';

  @override
  String get termuxProcsStopDevRestart =>
      'The next build starts them again when it needs them.';

  @override
  String get termuxProcsAboutClaudeCode =>
      'Claude Code, the coding agent. Stopping it ends the answer it is writing.';

  @override
  String get termuxProcsAboutTerminal =>
      'A terminal. Stopping it closes it and whatever runs in it.';

  @override
  String get termuxProcsAboutHostApp =>
      'The Termux app itself. It is not stopped from here.';

  @override
  String get termuxProcsAverageCpu => 'Average processor use';

  @override
  String get termuxProcsCpuTime => 'Processor time';

  @override
  String get consentBatteryTitle => 'Keep the server running?';

  @override
  String get consentBatteryBody =>
      'Android may stop the server on this phone while the app is closed. Allow background running and Android asks you to confirm.';

  @override
  String get consentBatteryAllow => 'Allow background running';

  @override
  String get consentMakerTitle => 'Restart the server automatically?';

  @override
  String consentMakerBody(String maker) {
    return '$maker phones stop apps that aren\'t allowed to start by themselves, and the server then stays off. Turn on auto-start for this app on the screen that opens.';
  }

  @override
  String get consentMakerBodyUnnamed =>
      'Some phones stop apps that aren\'t allowed to start by themselves, and the server then stays off. Turn on auto-start for this app on the screen that opens.';

  @override
  String get consentMakerAllow => 'Open auto-start settings';

  @override
  String get consentNotNow => 'Not now';

  @override
  String get consentSaveFailed => '你的回答未能保存到此手机，因此没有做任何更改。请重试。';

  @override
  String get consentStorageFailed =>
      'Your earlier answers on this server couldn\'t be read, so the app won\'t ask them again for now. Reopen this page to try again.';

  @override
  String get consentGroupLabel => 'Your answers';

  @override
  String get consentRowBattery => 'Background running';

  @override
  String get consentRowMaker => 'Start again by itself';

  @override
  String get consentRowNeedsYou => 'Notify me when the agent needs me';

  @override
  String get consentRowAlwaysAllow => 'Always allow offers';

  @override
  String get consentWhyBattery =>
      'Android may stop the server on this phone while the app is closed.';

  @override
  String get consentWhyMaker =>
      'This phone may not start the server again after it stops.';

  @override
  String get consentWhyNeedsYou =>
      'You won\'t get a notification when the agent waits for your answer.';

  @override
  String get consentAllowedSystem =>
      'The phone\'s own setting decides. Tap to check it or turn it off.';

  @override
  String get consentAllowedNeedsYou => 'Tap to change it in Notifications.';

  @override
  String get consentWhyAlwaysAllow =>
      'Still asked each time. Tap to be offered Always allow again.';

  @override
  String get consentValueAllowed => 'Allowed';

  @override
  String get consentValueDeclined => 'Declined';

  @override
  String get consentValueUnanswered => 'Not answered';

  @override
  String consentValueDeclinedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count declined',
      one: '1 declined',
    );
    return '$_temp0';
  }

  @override
  String get consentAlwaysAgainTitle => 'Ask to always allow?';

  @override
  String get consentAlwaysAgainBody =>
      'After 3 more identical asks, the app offers to always allow them again. Nothing is allowed until you say so.';

  @override
  String get consentAlwaysAgainConfirm => 'Offer again';

  @override
  String consentAlwaysAllowQuestion(String what) {
    return '已询问 3 次。始终允许 $what？';
  }

  @override
  String get consentAlwaysAllowDecline => '继续询问';

  @override
  String get consentAlwaysAllowFailed => '服务器未保存“始终允许”。请求仍在等待；请重试，或仅这一次作答。';

  @override
  String get consentAlwaysAllowTitle => '始终允许此请求？';

  @override
  String get consentNeedsYouAllow => 'Turn on notifications';

  @override
  String get bootstrapOpeningTitle => '正在打开…';

  @override
  String get bootstrapOpeningBody => '正在读取你已保存的服务器。';

  @override
  String get bootstrapFailedTitle => '无法读取已保存的服务器';

  @override
  String get bootstrapFailedBody => '如果手机刚刚重启，请先解锁，然后重试。';

  @override
  String get shareFailedLine =>
      'Shared text saved · couldn\'t open a conversation';

  @override
  String get shareFailedAgainLine =>
      'Still couldn\'t open a conversation · shared text saved';

  @override
  String get shareFailedCopy => 'Copy shared text';

  @override
  String get shareFailedDiscard => 'Discard shared text';

  @override
  String get shareDiscarded => 'Shared text discarded';

  @override
  String get shareConnectionChanged =>
      'The server or project changed while it opened. Try again.';

  @override
  String get appNewConversationFailed => '无法开始新对话';

  @override
  String get rootPhoneServerStartFailed => 'OpenCode 未能在此手机上启动';

  @override
  String get connectionFailureLocalCodexBody => '此手机上应有本地 Codex 监听器响应，但没有任何响应。';

  @override
  String get connectionFailureRemoteCodexBody => 'Codex 端点没有响应。';

  @override
  String get connectionFailureLoopbackBody =>
      '应用在此手机上查找服务器，但没有得到响应。请启动该服务器，或重新连接把服务器带到这里的隧道，然后重试。';

  @override
  String get connectionFailureTimedOutBody =>
      '该地址上有东西，但没有回复。通常是中间的网络问题，而不是服务器。';

  @override
  String get connectionFailureNothingAnsweredBody =>
      '没有任何响应。可能是服务器未运行，或此手机无法访问其地址。';

  @override
  String get connectionFailureUnknownBody => '连接失败。具体原因见“详情”。';

  @override
  String get connectionFailureTailnetCheck =>
      '这是 Tailscale 地址：此手机和服务器上的 Tailscale 都已开启吗？';

  @override
  String get teamHomeSpentHistoryMissing =>
      'Part of today’s history is missing, so it cost more than this.';

  @override
  String get teamHomeSpentNotRecording =>
      'The team isn’t counting new use right now.';

  @override
  String get teamRunCostUnreported =>
      'Not reported for one task. The AI Team page shows today’s estimate for the whole team.';

  @override
  String get teamHomeUpkeepTitle => 'Team upkeep';

  @override
  String get teamHomeUpkeepPatrol => 'Patrol';

  @override
  String get teamHomeUpkeepChore => 'Chore';

  @override
  String teamHomeUpkeepGroup(int count, String kind, String state) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$kind ×$count · $state',
      one: '$kind · $state',
    );
    return '$_temp0';
  }

  @override
  String get teamAgentLooksAfterTeam => 'whole team';

  @override
  String get teamAgentLooksAfterWatchdog => 'watchdog';

  @override
  String get teamAgentLooksAfterWorkers => 'workers';

  @override
  String get servicesStopConfirm => 'Stop service';

  @override
  String get servicesRestartConfirm => 'Restart service';

  @override
  String get managedWorkspacesRemoveConfirm => 'Remove environment';

  @override
  String managedWorkspacesCreateIn(String provider) {
    return 'In $provider';
  }

  @override
  String get voiceAutoSetupTitle => 'Voice typing';

  @override
  String get voiceAutoSetupChecking => 'Checking what this phone can run';

  @override
  String get voiceAutoSetupOffer =>
      'Speak instead of typing. Speech turns into text on this phone, even offline, and audio never leaves it. It needs a one-time download.';

  @override
  String voiceAutoSetupPicked(String model) {
    return '$model speech model, picked for this phone\'s memory';
  }

  @override
  String get voiceAutoSetupMobileData =>
      'You\'re on mobile data. This download counts against your data plan.';

  @override
  String get voiceAutoSetupMaybeMetered =>
      'This connection may count against a data plan.';

  @override
  String voiceAutoSetupDownload(String size) {
    return 'Download $size';
  }

  @override
  String voiceAutoSetupDownloadMobile(String size) {
    return 'Download $size on mobile data';
  }

  @override
  String get voiceAutoSetupOtherModel => 'Choose another speech model';

  @override
  String get voiceAutoSetupNotified =>
      'Progress also shows in your notifications. Listening starts when it\'s done.';

  @override
  String get voiceAutoSetupStartsAfter => 'Listening starts when it\'s done.';

  @override
  String get voiceAutoSetupReady => 'The speech model is on this phone.';

  @override
  String get voiceAutoSetupChooseModel => 'Choose a speech model';

  @override
  String get voiceAutoSetupUnknownMemory =>
      'This phone didn\'t say how much memory it has, so no speech model was picked.';

  @override
  String get voiceAutoSetupOffline =>
      'No internet connection. Connect, then try again.';

  @override
  String get voiceAutoSetupBusy => 'A speech model is already downloading.';

  @override
  String get voiceAutoSetupShowDownload => 'Show the download';

  @override
  String get voiceAutoSetupNoCapture =>
      'This phone can\'t record speech for voice typing.';

  @override
  String get voiceAutoSetupDetailFiles => 'Files';

  @override
  String get voiceAutoSetupDetailSize => 'Exact size';

  @override
  String get voiceAutoSetupDetailMemory => 'Memory';

  @override
  String voiceAutoSetupDetailMemoryValue(int required, int available) {
    return 'Needs $required MB; this phone has $available MB';
  }

  @override
  String get terminalScreenEmptyTitle => '还没有终端';

  @override
  String terminalScreenEmptyBody(String project) {
    return '在 $project 中启动一个。';
  }

  @override
  String get terminalScreenEmptyBodyNoProject => '在此项目中启动一个。';

  @override
  String get integrationsProvidersExplanation =>
      'The model providers this server can use. Connect one to start chatting.';

  @override
  String get integrationsResourcesExplanation =>
      'Files and data that connected MCP servers give the agent.';

  @override
  String externalAgentsStopTaskTitle(String task) {
    return 'Stop “$task”?';
  }

  @override
  String externalAgentsStopTaskConfirm(String agent) {
    return 'Ask $agent to stop';
  }

  @override
  String get externalAgentsStopTaskKeep => 'Keep running';

  @override
  String toolsDetailMenu(String tool) {
    return '$tool actions';
  }

  @override
  String kitDurationHours(int hours) {
    return '$hours h';
  }

  @override
  String kitDurationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String kitDurationDays(int days) {
    return '$days d';
  }

  @override
  String kitDurationDaysHours(int days, int hours) {
    return '$days d $hours h';
  }

  @override
  String kitToolFor(String duration) {
    return '用时 $duration';
  }

  @override
  String kitSinceWaitingForLong(String duration) {
    return 'Waiting $duration';
  }

  @override
  String get teamChatLeadRoutedIt => 'Sent it to the workers';

  @override
  String get teamChatLeadStartingIt => 'Worker started';

  @override
  String get teamChatLeadClaimedWorkerIt => 'Worker took the task';

  @override
  String get teamChatLeadPushedIt => 'Its changes are on a branch';

  @override
  String get teamChatLeadReviewIt => 'Handed it to review';

  @override
  String get teamChatLeadMergedIt => 'Merged it';

  @override
  String get teamChatLeadStepFailedIt => 'It failed';

  @override
  String get teamChatLeadStepCancelledIt => 'It was cancelled';

  @override
  String teamChatNowNoProgress(String elapsed) {
    return 'No progress for $elapsed';
  }

  @override
  String teamChatNoProgressBody(String name, String time) {
    return '$name hasn\'t moved this task since $time. Nudge it to carry on, restart it, or report the problem.';
  }

  @override
  String teamChatNoProgressBodyNoControls(String name, String time) {
    return '$name hasn\'t moved this task since $time. This server can\'t nudge or restart it from here; report the problem or check the team\'s computer.';
  }

  @override
  String get teamChatNoProgressReport => 'Report the problem';

  @override
  String teamChatNoProgressReportTitle(String elapsed) {
    return 'No progress for $elapsed';
  }

  @override
  String get teamTaskDetailsReported => 'What the server reported';

  @override
  String get kitToolOpenDetails => '打开详情';

  @override
  String get teamStartRunKeepInBacklog => 'Keep in backlog';

  @override
  String workRunawayStopped(String helper) {
    return '已停止 $helper';
  }

  @override
  String workRunawayStopFailed(String helper) {
    return '无法停止 $helper。请重试，或在 Termux 中停止它。';
  }

  @override
  String get serverSettingsUpdateCommandsDetail =>
      'Run them in a terminal on the server\'s computer; this app can\'t update it.';

  @override
  String get serverSettingsUpdateCommandsCopied =>
      'Copied. Run them in a terminal on the server\'s computer.';

  @override
  String hostServiceTitle(String server) {
    return 'OpenCode on $server';
  }

  @override
  String hostServiceIntro(String server) {
    return 'These commands run on $server\'s computer; copy each into a terminal there.';
  }

  @override
  String tailscaleSetupToDo(String detail) {
    return '待办 · $detail';
  }

  @override
  String get tailscaleSetupNoDeviceList => 'OpenCode 无法列出你的 tailnet 中的设备。';

  @override
  String get productErrorStagedRevert => '发送此排队的提示词之前，请先查看已暂存的撤销。';

  @override
  String teamWatchComposerHint(String name) {
    return 'Message $name…';
  }

  @override
  String get teamWatchComposerHintWorker => 'Message the worker…';

  @override
  String get teamWatchComposerHintAgent => 'Message this agent…';

  @override
  String teamWatchAbout(String name) {
    return 'About $name';
  }

  @override
  String teamWatchAboutRole(String role) {
    return 'About the $role';
  }

  @override
  String serversRemoveQueuedUnreadable(String name) {
    return '无法读取 $name 的排队提示词。已保留该服务器及其排队提示词。待队列可读取后，再尝试移除。';
  }

  @override
  String get bootstrapStartFresh => '重新开始';

  @override
  String get bootstrapStartFreshTitle => '移除已保存的登录信息？';

  @override
  String get bootstrapStartFreshBody =>
      '这会从此手机移除已保存的密码和连接令牌，并清除所选服务器。你已保存的服务器、排队的提示词和草稿会保留。';

  @override
  String get bootstrapStartFreshConfirm => '移除已保存的登录信息';

  @override
  String get bootstrapResettingTitle => '正在移除已保存的登录信息…';

  @override
  String get bootstrapResettingBody => '请保持应用打开，直到完成。';

  @override
  String get bootstrapResetFailedTitle => '重置登录失败';

  @override
  String get bootstrapResetFailedBody => '部分已保存的登录信息无法移除。请重试。';

  @override
  String get workStalled => 'Stalled';

  @override
  String get teamNowActivityPlanning => 'Waiting for a plan';

  @override
  String get teamNowActivityWaitingForWorker => 'Waiting for a worker';

  @override
  String get teamNowActivityStartingWorker => 'Starting a worker';

  @override
  String get teamNowActivityWorking => 'Working on your task';

  @override
  String get teamNowActivityReviewing => 'Reviewing the changes';

  @override
  String get teamNowActivityNeedsYou => 'Waiting for your answer';

  @override
  String get teamNowActivityDelayed => 'Taking longer than expected';

  @override
  String get teamNowActivityUnconfirmed => 'Request not confirmed';

  @override
  String get teamNowActivityRefused => 'Request not accepted';

  @override
  String get teamNowActivityUnavailable => 'The team isn\'t answering';

  @override
  String get teamNowActivityCompleted => 'Finished';

  @override
  String get teamNowActivityFailed => 'Could not finish';

  @override
  String get teamNowActivityCancelled => 'Stopped';

  @override
  String get teamNowReasonNoPlanReported =>
      'No plan has been reported yet. The reason is unknown.';

  @override
  String get teamNowReasonNoWorkerReported =>
      'No worker has been reported yet.';

  @override
  String get teamNowReasonWorkerStarting =>
      'The worker has started but hasn\'t begun the task.';

  @override
  String teamModelRowTitle(String model) {
    return 'Workers use $model';
  }

  @override
  String get teamModelDefault => 'Same as this phone\'s OpenCode';

  @override
  String get teamModelDefaultHint =>
      'Uses the model this phone\'s OpenCode is set to.';

  @override
  String get teamModelChange =>
      'Change. Takes effect the next time a worker starts.';

  @override
  String get teamModelSheetTitle => 'Model for the workers';

  @override
  String get teamModelSheetNote =>
      'Only models this phone\'s OpenCode can use. A worker that is already running keeps its model.';

  @override
  String get teamModelNoneLoaded =>
      'This phone\'s models have not loaded yet. Close this and try again in a moment.';

  @override
  String get teamModelFailed =>
      'Could not change the model. The team keeps the one it had.';

  @override
  String get teamNowReasonWorkerPreparing =>
      'The worker is being set up: its folder is made and its program is starting.';

  @override
  String get teamNowReasonWorkerRunning =>
      'The worker\'s program is running. The team has not reported the task reaching it yet.';

  @override
  String get teamNowReasonWorkerTaskDelivered =>
      'The task has reached the worker. It is reading it before it begins.';

  @override
  String teamNowLastStart(String duration) {
    return 'took $duration last time';
  }

  @override
  String get teamUiHostPhraseBusyStartingWorker => 'Busy starting a worker';

  @override
  String get teamNowReasonWorkInProgress => 'The task is being worked on.';

  @override
  String get teamNowReasonReviewPending =>
      'Review or completion is still pending.';

  @override
  String get teamNowReasonAnswerNeeded =>
      'The team is waiting for your answer.';

  @override
  String get teamNowReasonWorkerCouldNotStart =>
      'The worker couldn\'t stay running.';

  @override
  String get teamNowReasonProviderLimit =>
      'The AI service reported a usage limit.';

  @override
  String get teamNowReasonWorkTakingLonger =>
      'The work is taking longer than expected.';

  @override
  String get teamNowReasonConfirmationMissing =>
      'We can\'t confirm the request arrived. Check before sending it again.';

  @override
  String get teamNowReasonRequestRefused => 'The request was not accepted.';

  @override
  String get teamNowReasonConnectionUnavailable =>
      'Progress can\'t be checked while disconnected.';

  @override
  String get teamNowReasonCauseUnknown =>
      'The reason is unknown. Check what the team is doing.';

  @override
  String get teamNowWhyPlanning =>
      'The planner turns your task into steps. This conversation follows the task as soon as the team lists them. Stopping following it here doesn\'t cancel it on the team\'s computer.';

  @override
  String get teamNowWhyWaitingForWorker =>
      'The team looks for new work regularly and starts a worker for it when one is free.';

  @override
  String get teamNowWhyStartingWorker =>
      'A new worker makes its own copy of the project and starts its program before it reads the task. That is the slow part on a phone, and the stage above is what the team reports.';

  @override
  String get teamNowWhyWorking =>
      'The worker makes the changes on its own copy, then hands them to review.';

  @override
  String get teamNowWhyReviewing =>
      'A reviewer checks the changes before they are merged.';

  @override
  String get teamNowWhyUnconfirmed =>
      'The app sent the task but didn\'t hear back. Sending it again could start it twice, so look at the planner first.';

  @override
  String get teamNowWhyWorkerCouldNotStart =>
      'The worker stopped while it was starting. Its conversation may say why.';

  @override
  String get teamNowWhyProviderLimit =>
      'The AI service limits how much can be used in a period. Work continues when the limit resets, or you can stop the task.';

  @override
  String get teamNowWhyWorkTakingLonger =>
      'Large tasks can take a while. Watching the worker shows whether it is still moving.';

  @override
  String get teamNowWhyCauseUnknown =>
      'What the team reports doesn\'t say why it is waiting.';

  @override
  String get teamNowWhyHide => 'Hide';

  @override
  String get teamNowNextPlan => 'Next: the team lists the steps';

  @override
  String get teamNowNextWorker => 'Next: a worker starts';

  @override
  String get teamNowNextWork => 'Next: the worker begins the task';

  @override
  String get teamNowNextReview => 'Next: the changes are reviewed';

  @override
  String get teamNowNextFinish => 'Next: the task finishes';

  @override
  String get teamNowWatchPlanner => 'Watch the planner';

  @override
  String get teamNowDismissRequest => 'Stop following this request';

  @override
  String teamNowUsuallyWithin(String duration) {
    return 'usually within $duration';
  }

  @override
  String teamNowWatchAgent(String name) {
    return 'Watch $name';
  }

  @override
  String get teamNowNotStartingLine => 'The team isn\'t starting a worker';

  @override
  String get aiSetupTitle => 'AI 设置';

  @override
  String get aiSetupEntryDetail =>
      'Models, tools and suggestions for this server';

  @override
  String get aiSetupRefresh => '重新读取此服务器的配置';

  @override
  String get aiSetupLoading => '正在读取此服务器的配置…';

  @override
  String get aiSetupReviewOnly => '仅供查看。目前更改需在服务器上进行。';

  @override
  String get aiSetupUnsupportedTitle => 'AI 设置不可用';

  @override
  String get aiSetupUnsupportedBody => '此服务器不会向应用共享其配置。请在服务器本身上设置模型和工具。';

  @override
  String get aiSetupSignInTitle => '需要登录';

  @override
  String aiSetupSignInBody(String server) {
    return '$server 未接受已保存的登录信息，因此无法读取其配置。';
  }

  @override
  String get aiSetupErrorTitle => '无法读取配置';

  @override
  String get aiSetupErrorBody => '服务器未按预期响应。请重试，或在其设置页面检查该服务器。';

  @override
  String get aiSetupTryAgain => '重试';

  @override
  String get aiSetupOfflineTitle => '你已离线';

  @override
  String aiSetupOfflineBody(String server) {
    return '重新连接到 $server 以读取其配置。';
  }

  @override
  String aiSetupOfflineStale(String server) {
    return '已离线。这是上次读取的 $server 配置；重新连接后会更新。';
  }

  @override
  String get aiSetupEmptyTitle => '尚未配置任何内容';

  @override
  String get aiSetupEmptyBody => '此服务器使用默认设置，未选择模型，也没有工具服务器。目前更改需在服务器上进行。';

  @override
  String get aiSetupSuggestionsLabel => '建议';

  @override
  String aiSetupSuggestSignInTitle(String name) {
    return '登录 $name';
  }

  @override
  String get aiSetupSuggestSignInDetail => '在有人于服务器上登录它之前，其工具将保持关闭。';

  @override
  String aiSetupSuggestFixTitle(String name) {
    return '检查 $name 的设置';
  }

  @override
  String get aiSetupSuggestFixDetail => '它启动失败。请修正服务器配置中的对应条目，然后重启服务器。';

  @override
  String get aiSetupSuggestModelTitle => '选择默认模型';

  @override
  String get aiSetupSuggestModelDetail =>
      '未设置模型，因此新对话会使用服务器自己的选择。请在服务器配置中设置“model”。';

  @override
  String get aiSetupSuggestToolsTitle => '添加工具服务器';

  @override
  String get aiSetupSuggestToolsDetail =>
      '尚未配置 MCP 服务器。在服务器配置中添加一个，可为智能体提供更多工具。';

  @override
  String get aiSetupToolsLabel => '工具服务器';

  @override
  String get aiSetupToolsTerm => 'MCP 服务器为智能体提供额外的工具。每个服务器都会显示它当前是否正常工作。';

  @override
  String get aiSetupToolConnected => '已连接';

  @override
  String get aiSetupToolWaiting => '等待中';

  @override
  String get aiSetupToolOff => '已关闭';

  @override
  String get aiSetupToolFailed => '失败';

  @override
  String get aiSetupToolNeedsSignIn => '需要登录';

  @override
  String get aiSetupToolUnknown => '未知';

  @override
  String get aiSetupEffectiveLabel => '生效的设置';

  @override
  String get aiSetupEffectiveTerm => '合并配置文件后，此服务器的对话所使用的设置。';

  @override
  String get aiSetupModel => '模型';

  @override
  String get aiSetupServerDefault => '未设置：由服务器选择';

  @override
  String get aiSetupSmallModel => '小模型';

  @override
  String get aiSetupDefaultAgent => '默认智能体';

  @override
  String get aiSetupProviders => '服务商';

  @override
  String get aiSetupPermissions => '权限';

  @override
  String aiSetupPermissionRules(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条规则',
      one: '1 条规则',
    );
    return '$_temp0';
  }

  @override
  String get aiSetupAllSettings => '所有设置';

  @override
  String get aiSetupSourcesLabel => '配置来源';

  @override
  String get aiSetupSourcesTerm => '按优先级从低到高排列，与服务器报告的一致。应用不会合并它们。';

  @override
  String get aiSetupNoSources => '没有配置文件';

  @override
  String get aiSetupNoSourcesDetail => '此服务器使用默认设置。';

  @override
  String aiSetupSourceUnnamed(String type) {
    return '无文件的来源（$type）';
  }

  @override
  String aiSetupSourceSets(int position, String keys) {
    return '$position。设置了 $keys';
  }

  @override
  String aiSetupSourceEmpty(int position) {
    return '$position。未设置任何内容';
  }

  @override
  String get aiSetupAllSources => '所有来源';

  @override
  String get integrationsPageLoadFailed => 'Could not load this page';

  @override
  String kitLastKnownRefreshing(String updated) {
    return '$updated · 正在刷新';
  }

  @override
  String get kitLastKnownHint => '上次保存的内容。实时列表加载后即可打开。';

  @override
  String get kitTranscriptExcerptHint => '保存自上次。加载完成后会完整打开对话。';

  @override
  String get lastKnownUpdatedJustNow => 'Updated just now';

  @override
  String lastKnownUpdatedAgo(String ago) {
    return 'Updated $ago';
  }

  @override
  String serverRowQueuedWaiting(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条消息等待发送',
    );
    return '$_temp0';
  }

  @override
  String serverRowMoveQueued(int count, String destination) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '将 $count 条等待中的提示词移到 $destination',
      one: '将 1 条等待中的提示词移到 $destination',
    );
    return '$_temp0';
  }

  @override
  String get queuedMoveTitle => 'Move queued prompts';

  @override
  String queuedMoveSubtitle(String source) {
    return 'From $source';
  }

  @override
  String get queuedMovePromptsLabel => 'Prompts';

  @override
  String get queuedMoveConversationLabel => 'Conversation';

  @override
  String get queuedMoveNewConversation => 'New conversation';

  @override
  String queuedMoveQueuedAt(String time) {
    return 'Queued $time';
  }

  @override
  String queuedMoveFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String queuedMoveBlockedUncertain(String source) {
    return 'May already have been sent. Check it on $source first.';
  }

  @override
  String queuedMoveBlockedFile(String source) {
    return 'Has a file only $source can open';
  }

  @override
  String get queuedMoveBlockedMentions =>
      'Hiding a password in it would break its agent mentions';

  @override
  String queuedMoveHidesSecrets(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Passwords and keys in $count prompts stay hidden',
      one: 'Passwords and keys in 1 prompt stay hidden',
    );
    return '$_temp0';
  }

  @override
  String queuedMoveUsesCurrentModel(int count, String destination) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prompts use the model chosen on $destination',
      one: '1 prompt uses the model chosen on $destination',
    );
    return '$_temp0';
  }

  @override
  String queuedMoveAction(int count, String destination) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Move $count prompts to $destination',
      one: 'Move 1 prompt to $destination',
    );
    return '$_temp0';
  }

  @override
  String get queuedMoveChooseOne => 'Choose at least one prompt';

  @override
  String queuedMoveNoneLeft(String source) {
    return 'Nothing waits for $source any more';
  }

  @override
  String queuedMoveFailedDisconnected(String destination) {
    return '$destination disconnected, so nothing moved. Connect to it and try again.';
  }

  @override
  String queuedMoveFailedConversationGone(String destination) {
    return 'That conversation is no longer on $destination, so nothing moved. Choose another one.';
  }

  @override
  String queuedMoveFailedNothing(String source) {
    return 'These prompts no longer wait for $source, so nothing moved.';
  }

  @override
  String queuedMoveFailedNewConversation(String destination) {
    return 'Could not start a new conversation on $destination, so nothing moved. Try again or choose an existing conversation.';
  }

  @override
  String queuedMoveFailedNotSaved(String source) {
    return 'Could not save the move, so nothing moved. The prompts still wait for $source.';
  }

  @override
  String queuedMoveDone(int count, String destination) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prompts moved to $destination',
      one: '1 prompt moved to $destination',
    );
    return '$_temp0';
  }

  @override
  String queuedMoveDonePartial(int moved, int total, String destination) {
    return 'Moved $moved of $total prompts to $destination. The rest no longer waited.';
  }

  @override
  String queuedMoveUndoNone(String destination) {
    return 'The prompts already started sending on $destination, so they stay there.';
  }

  @override
  String queuedMoveUndoPartial(int count, String destination, String source) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count prompts already started sending on $destination and stay there. The rest wait for $source again.',
      one:
          '1 prompt already started sending on $destination and stays there. The rest wait for $source again.',
    );
    return '$_temp0';
  }

  @override
  String queuedMoveUndoFailed(String destination) {
    return 'Could not put the prompts back. They stay on $destination.';
  }

  @override
  String workStalledSince(String time) {
    return 'Stalled since $time';
  }

  @override
  String attentionOnServer(String server) {
    return 'on $server';
  }

  @override
  String get attentionTeamTask => 'Team task';

  @override
  String attentionChecksOff(String servers) {
    return 'Not checking $servers';
  }

  @override
  String get attentionChecksOffDetail =>
      'Their requests don\'t show here. Turn on checks in Notifications.';

  @override
  String attentionUnchecked(String server) {
    return 'Couldn\'t check $server';
  }

  @override
  String get attentionUncheckedDetail =>
      'Requests waiting there may be missing here.';

  @override
  String attentionUncheckedSince(String time) {
    return 'Last checked $time. Requests waiting there may be missing here.';
  }

  @override
  String attentionWaitsForWifi(String server) {
    return '$server is checked on Wi-Fi only';
  }

  @override
  String attentionChecksPaused(String server) {
    return 'Checks on $server are paused';
  }

  @override
  String get sessionAddressInclude => 'Include this server’s address';

  @override
  String get sessionAddressDisclosure =>
      'The link then shows this address and the conversation ID, never a password: the other phone still needs its own access. Screenshots, messages and the clipboard can keep it.';

  @override
  String get sessionAddressIntro =>
      'Scan with OpenCode Mobile on the other phone. The code holds this server’s address and the conversation ID.';

  @override
  String get sessionAddressUnsupportedHost =>
      'Only a private HTTPS address ending in .ts.net can go in a link.';

  @override
  String get sessionAddressOpenTitle => 'Open a shared conversation';

  @override
  String get sessionAddressConsentSaved => 'Open on this saved server?';

  @override
  String get sessionAddressConsentNew => 'Add this server?';

  @override
  String get sessionAddressNotSaved => 'Not saved on this phone';

  @override
  String get sessionAddressConsentNote =>
      'The link grants no access. Checking only asks the server which installation it is; nothing signs in and no password is sent.';

  @override
  String get sessionAddressCheck => 'Check server';

  @override
  String sessionAddressChecking(String host) {
    return 'Checking $host…';
  }

  @override
  String get sessionAddressAddBody =>
      'This server is not saved on this phone. Add it with your own sign-in; the link does not carry one.';

  @override
  String get sessionAddressAddServer => 'Add server';

  @override
  String get sessionAddressChooseBody =>
      'More than one saved server uses this address. Choose the one to open the conversation on.';

  @override
  String sessionAddressVerifyBody(String name) {
    return 'Confirm that $name is the server this link came from. The phone remembers this for $name; it does not sign in or share a password.';
  }

  @override
  String get sessionAddressVerify => 'Verify server';

  @override
  String sessionAddressReadyBody(String name) {
    return '$name matches this link.';
  }

  @override
  String sessionAddressSignInBody(String name) {
    return 'Sign in to $name with your own account first, then open the conversation.';
  }

  @override
  String get sessionAddressSignIn => 'Sign in';

  @override
  String get sessionAddressOpen => 'Open conversation';

  @override
  String get sessionAddressOpening => 'Opening the conversation…';

  @override
  String get sessionAddressReason => 'Reason';

  @override
  String get sessionAddressFailUnavailable =>
      'Conversation links with a server address are not available yet.';

  @override
  String get sessionAddressFailInvalidLink =>
      'This conversation link is not valid. Scan or copy it again.';

  @override
  String get sessionAddressFailTooLarge =>
      'This link is too long. Ask the sender for a new link.';

  @override
  String get sessionAddressFailCredentials =>
      'This link contains private sign-in information and cannot be used.';

  @override
  String get sessionAddressFailConsentRequired =>
      'Choose whether to include this server’s address first.';

  @override
  String get sessionAddressFailPrivateRouteRequired =>
      'This server cannot be reached through the required private connection. Check your connection.';

  @override
  String get sessionAddressFailUnreachable =>
      'The server could not be reached. Check your connection and try again.';

  @override
  String get sessionAddressFailTimedOut =>
      'The server did not answer in time. Try again.';

  @override
  String get sessionAddressFailTlsRejected =>
      'The server’s secure connection could not be verified, so the link was not opened.';

  @override
  String get sessionAddressFailRedirectsRejected =>
      'This server tried to send the request somewhere else. The link was not opened.';

  @override
  String get sessionAddressFailAccessDenied =>
      'Your access to this server or conversation was refused.';

  @override
  String get sessionAddressFailInvalidDescriptor =>
      'This server did not provide the information needed to open this link.';

  @override
  String get sessionAddressFailInstanceMismatch =>
      'This link and the saved server do not identify the same installation.';

  @override
  String get sessionAddressFailBindingRequired =>
      'Verify this saved server before opening the conversation.';

  @override
  String get sessionAddressFailAmbiguousProfile =>
      'Choose which saved server to use.';

  @override
  String get sessionAddressFailProfileMissing =>
      'This saved server is no longer available.';

  @override
  String get sessionAddressFailStorage =>
      'The server verification could not be saved or read. Try again after restarting the app.';

  @override
  String get sessionAddressFailSignInRequired =>
      'Sign in to this server with your own account before continuing.';

  @override
  String get sessionAddressFailUnsafeLookup =>
      'This server has not been verified for private conversation links.';

  @override
  String get sessionAddressFailSessionMissing =>
      'This conversation is not available on this server.';

  @override
  String get sessionAddressFailCancelled => 'Opening this link was cancelled.';

  @override
  String get removeFromPhoneDeleteAllChoice => '全部删除…';

  @override
  String removeFromPhoneDeleteAllChoiceSize(String size) {
    return '全部删除，释放约 $size…';
  }

  @override
  String get phoneServerCardErrorDetail => '错误';

  @override
  String get sessionMenuGoTo => 'Go to';

  @override
  String get sessionMenuDo => 'Do';

  @override
  String get sessionMenuFind => 'Find';

  @override
  String get sessionMenuSubagents => 'Subagents';

  @override
  String get sessionMenuDetails => 'Details';

  @override
  String get sessionMenuShareHint => 'Anyone with the link can read it';

  @override
  String get sessionMenuStopSharingHint => 'The public link stops working';

  @override
  String get sessionMenuCompactHint =>
      'Summarizes it so the agent has room again';

  @override
  String get sessionMenuForkHint => 'Opens a copy you can take another way';

  @override
  String get sessionMenuContinueComputerHint =>
      'Shows the command that resumes it there';

  @override
  String get sessionMenuContinuePhoneHint =>
      'Shows a code the app on that phone opens';

  @override
  String get sessionMenuNeedsPrompt => 'Available after the first prompt';

  @override
  String commandSheetServerGroup(String server) {
    return 'Commands from $server';
  }

  @override
  String commandSheetAgentMissingTitle(String agent) {
    return '$agent commands unavailable';
  }

  @override
  String commandSheetAgentMissingWhy(String agent) {
    return '$agent doesn\'t share its own commands with the app yet, so the app can\'t list them, run them, or run ! shell commands. The app\'s own actions still work.';
  }

  @override
  String commandSheetAgentCommandNotSent(String command, String agent) {
    return '未发送 $command：$agent 尚未向应用提供其命令。删除 / 即可作为消息发送。';
  }

  @override
  String commandSheetShellNotSent(String command, String agent) {
    return '未发送 $command：无法从应用在 $agent 上运行 shell 命令。删除 ! 即可作为消息发送。';
  }

  @override
  String get commandSheetShellDescription =>
      'Or start a message with ! to run it from the composer';

  @override
  String get commandSheetRetryDescription => 'Sends your last prompt again';

  @override
  String get commandSheetNoteDescription =>
      'A note the agent keeps in mind for this conversation';

  @override
  String get commandSheetApprovalsDescription =>
      'What this conversation may do without asking';

  @override
  String get commandSheetReloadDescription =>
      'Reads this conversation from the server again';

  @override
  String get commandSheetLibrarySubtitle =>
      'Pick a command, then the conversation it runs in';

  @override
  String get commandSheetAgentFallback => '此智能体';

  @override
  String get commandSheetPlanDescription =>
      'Opens the agent\'s latest plan in the conversation';

  @override
  String get chatUiSessionMenu => '对话菜单';

  @override
  String get commandsScreenLoadFailed => 'Couldn’t load commands';

  @override
  String get commandSheetSubtitleAppOnly =>
      'Run one of the app\'s actions in this conversation';

  @override
  String get voiceModeMicAsk =>
      'Voice typing needs the microphone. Tap Allow microphone, then choose Allow.';

  @override
  String get voiceModeMicAllow => 'Allow microphone';

  @override
  String get voiceModeMicBlocked =>
      'Android blocks the microphone for this app. Turn it on in Android settings, then come back here.';

  @override
  String get voiceModeNothingHeard =>
      'Nothing was heard. Tap the mic and try again.';

  @override
  String get teamDispatchCreating => 'Creating your task…';

  @override
  String get teamDispatchSending => 'Task created · sending it to the team…';

  @override
  String get teamDispatchAwaitingWorker =>
      'Task sent to the team · waiting for a worker';

  @override
  String get teamDispatchWorkerStarted => 'A worker started your task';

  @override
  String get teamDispatchCreateRefused =>
      'The task wasn’t made. Change it and send it again.';

  @override
  String get teamDispatchAssignRefused =>
      'Task created, but it could not be sent to the team';

  @override
  String get teamDispatchAssignRefusedHint =>
      'The task stays on the board, given to no one.';

  @override
  String get teamDispatchCreateUnconfirmed =>
      'Couldn’t confirm whether the task was created';

  @override
  String get teamDispatchDispatchUnconfirmed =>
      'Task created · couldn’t confirm it reached the team';

  @override
  String get teamDispatchCheckBoard =>
      'Check the board before sending it again. Your words are kept.';

  @override
  String get teamDispatchUnknown =>
      'Task sent · the team can’t be reached, so whether a worker started is unknown';

  @override
  String get teamDispatchCheckAgain => 'Check the team again';

  @override
  String get teamDispatchTaskId => 'Task ID';

  @override
  String get teamDispatchHostWords => 'The team’s reply';

  @override
  String get teamUiHostGuideOpen => 'Open the full guide';

  @override
  String hostServiceInstallChecked(String release) {
    return 'Downloads the script from release $release and checks its SHA-256 checksum first. If the file was changed, nothing runs.';
  }

  @override
  String get hostServiceWhatThisDoes => 'What this does';

  @override
  String get hostServiceWhatLinux =>
      'Needs Linux with systemd, such as Ubuntu. It does not run on macOS or Windows.';

  @override
  String get hostServiceWhatInstall =>
      'Installs OpenCode with its official installer if it is not there yet.';

  @override
  String get hostServiceWhatService =>
      'Adds a service for your account that keeps OpenCode running after reboots and closed terminals. It listens on that computer only.';

  @override
  String get hostServiceWhatPassword =>
      'Makes a password for the server and keeps it in a file only your account can read.';

  @override
  String get hostServicePinnedCommit => 'Script version';

  @override
  String get hostServiceChecksum => 'SHA-256 checksum';

  @override
  String get mcpAddBrowseTitle => 'Browse the catalogue';

  @override
  String get mcpAddBrowseDetail =>
      'Servers from the public MCP registry, turned on with a switch';

  @override
  String get mcpAddBrowseNone =>
      'No catalogue for this server: it doesn\'t accept new MCP servers from the app.';

  @override
  String get mcpAddManualTitle => 'Enter manually';

  @override
  String get mcpAddManualDetail =>
      'Type its address, or the command that starts it';

  @override
  String get mcpCatalogTitle => 'MCP catalogue';

  @override
  String get mcpCatalogConsentTitle => 'Load the MCP registry?';

  @override
  String get mcpCatalogConsentBody =>
      'The app asks registry.modelcontextprotocol.io for its list of MCP servers. It sends only what you search for, nothing about you or your servers.';

  @override
  String get mcpCatalogConsentLoad => 'Load the list';

  @override
  String get mcpCatalogForget => 'Stop using the registry';

  @override
  String get mcpCatalogForgetFailed =>
      'Couldn\'t forget the saved registry list. Try again.';

  @override
  String get mcpCatalogSearch => 'Search the registry';

  @override
  String get mcpCatalogInventoryFailed =>
      'Couldn\'t read this server\'s MCP servers';

  @override
  String get mcpCatalogInventoryFailedBody =>
      'The switches need to know what is already on. Check the connection, then try again.';

  @override
  String get mcpCatalogFailed => 'Couldn\'t load the public MCP registry';

  @override
  String get mcpCatalogSearchFailed =>
      'Couldn\'t search the public MCP registry';

  @override
  String get mcpCatalogFailedBody =>
      'Check the phone\'s internet connection, then try again. You can still enter a server by hand.';

  @override
  String get mcpCatalogEmpty => 'The registry listed no servers';

  @override
  String mcpCatalogNoMatch(String query) {
    return 'Nothing in the registry matches “$query”';
  }

  @override
  String get mcpCatalogEmptyBody =>
      'Try other words, or enter the server by hand.';

  @override
  String get mcpCatalogStale =>
      'Couldn\'t refresh the list from the registry. These are the listings loaded earlier.';

  @override
  String get mcpCatalogPriceNote =>
      'The registry lists no prices. A hosted server\'s owner may charge for it or ask for an account.';

  @override
  String get mcpCatalogAdding => 'Adding…';

  @override
  String get mcpCatalogRemoving => 'Removing…';

  @override
  String get mcpCatalogCannotRemove =>
      'On. This server keeps it in its configuration, and the app can\'t remove it.';

  @override
  String get mcpCatalogNeedsDocker =>
      'Runs in Docker. To add it anyway, use Enter manually.';

  @override
  String get mcpCatalogNoEndpoint =>
      'Lists nothing the app can start. To add it anyway, use Enter manually.';

  @override
  String mcpCatalogHostedBy(String host) {
    return 'Hosted by $host';
  }

  @override
  String get mcpCatalogNeedsNode => 'Needs Node on the server';

  @override
  String get mcpCatalogNeedsNodePhone => 'Needs Node on this phone';

  @override
  String get mcpCatalogNeedsPython => 'Needs Python with uv on the server';

  @override
  String get mcpCatalogNeedsKey => 'Needs an API key';

  @override
  String get mcpCatalogNeedsSettings => 'Needs extra settings';

  @override
  String mcpCatalogNodeTitle(String title) {
    return '$title runs with Node';
  }

  @override
  String get mcpCatalogNodeAdd => 'Add Node to this phone';

  @override
  String get mcpCatalogNodeAddDetail =>
      'Opens This phone. Choose Add tools, then Node, and turn this on again once it\'s added.';

  @override
  String get mcpCatalogNodeHave => 'Node is already on this phone';

  @override
  String get mcpCatalogNodeHaveDetail => 'Check the details and add it';

  @override
  String mcpSetupFromCatalog(String listing, String server) {
    return 'Filled in from “$listing” in the public MCP registry. Check it before you add it: $server will run or connect to what is here.';
  }

  @override
  String get mcpSetupThisServer => 'this server';

  @override
  String mcpSetupValueRequired(String name) {
    return 'Enter a value for $name';
  }

  @override
  String get mcpSetupNameFromCatalog => 'The registry listing needs this one';

  @override
  String get mcpVariableName => 'Variable name';

  @override
  String get mcpVariableValue => 'Variable value';

  @override
  String get mcpAddVariable => 'Add another variable';

  @override
  String get mcpRemoveVariable => 'Remove variable';

  @override
  String get mcpSetupTimeoutSeconds => 'Timeout in seconds';

  @override
  String get isolatedTaskPromptLabel => 'What should it work on?';

  @override
  String get isolatedTaskPromptHelper =>
      'Sent once the copy is ready. Leave it empty to write it in the conversation.';

  @override
  String get isolatedTaskOptions => 'Options';

  @override
  String get isolatedTaskPreparingHint =>
      'If you stop waiting, the copy stays. You\'ll find it under Project › Worktrees.';

  @override
  String get isolatedTaskFailedBody =>
      'The copy is made, but its setup didn\'t finish. Start in it anyway, or remove it.';

  @override
  String isolatedTaskSending(String name) {
    return 'Sending your task to $name…';
  }

  @override
  String get isolatedTaskSendFailed => 'Couldn\'t send your task';

  @override
  String get isolatedTaskSendFailedBody =>
      'It\'s waiting in the conversation\'s message box, ready to send.';

  @override
  String get isolatedTaskSendFailedLost =>
      'Copy your task below and send it in the conversation.';

  @override
  String get isolatedTaskOpenConversation => 'Open the conversation';

  @override
  String get isolatedTaskStartAnyway => 'Start anyway';

  @override
  String get isolatedTaskRemove => 'Remove the copy';

  @override
  String isolatedTaskRemoveTitle(String name) {
    return 'Remove $name?';
  }

  @override
  String get isolatedTaskRemoveBody =>
      'Its folder and branch are deleted. Your project itself is not touched.';

  @override
  String isolatedTaskRemoved(String name) {
    return 'Removed $name. You can start again.';
  }

  @override
  String get isolatedTaskSetupOutput => 'What the setup reported';

  @override
  String get isolatedTaskCopyFolder => 'Folder of the copy';

  @override
  String get isolatedTaskBranchLabel => 'Branch';

  @override
  String get isolatedTaskStageSend =>
      'Opening the conversation and sending your task';

  @override
  String get teamStartRunBlockedTitle => 'Team can\'t take tasks';

  @override
  String get teamStartRunPlannerOff => 'The planner is switched off';

  @override
  String get teamStartRunPlannerOffWakeBody =>
      'The planner turns each task into steps for the team. Wake it to give the team your task.';

  @override
  String get teamStartRunPlannerOffHostBody =>
      'The planner turns each task into steps for the team, and this app can\'t switch it on. Switch it on where the team runs, then try again.';

  @override
  String get teamStartRunNoPlanner => 'This team has no planner';

  @override
  String get teamStartRunNoPlannerBody =>
      'A planner turns each task into steps for the team. Add one where the team runs, then try again.';

  @override
  String get teamStartRunNoProject => 'This team has no project yet';

  @override
  String get teamStartRunNoProjectBody =>
      'Tasks go straight to a project\'s worker. Add a project to the team, then try again.';

  @override
  String get teamStartRunWake => 'Wake the planner';

  @override
  String get teamStartRunWakeAsked =>
      'Waking the planner. The task form opens as soon as it\'s awake.';

  @override
  String get teamStartRunStillOff => 'The planner is still switched off.';

  @override
  String get teamStartRunStillNoProject => 'The team still has no project.';

  @override
  String get teamStartRunWakeRefused => 'Couldn\'t wake the planner';

  @override
  String get teamStartRunWakeRefusedNext =>
      'Try again, or switch it on where the team runs.';

  @override
  String get addServerTailscaleNext => '输入地址';

  @override
  String get phoneSetupTermuxGetCurrent => '获取最新版 Termux';

  @override
  String get phoneSetupUnsupportedTitle => '连接服务器';

  @override
  String get phoneSetupUnsupportedBody =>
      '在设备本机上设置仅适用于 Android 手机。请在你的电脑上运行此命令，然后用它输出的代码在这里添加服务器。';

  @override
  String get termuxStorageStageTotal => 'The whole Termux install';

  @override
  String get setupProgressViewFailedStep => '此步骤未完成。出错原因见“详情”。';

  @override
  String setupProgressViewFailedAt(String name) {
    return '在 $name 处停止。出错原因见“详情”。';
  }

  @override
  String workRunawayHelper(String helper, String duration) {
    return '残留的 $helper 进程已空转忙碌 $duration';
  }

  @override
  String workRunawayHelperInProject(
    String helper,
    String project,
    String duration,
  ) {
    return '$project 中残留的 $helper 进程已空转忙碌 $duration';
  }

  @override
  String get workRunawaySeeRunning => '查看正在运行的内容';

  @override
  String thisPhoneUpToDate(String version) {
    return 'Up to date · $version';
  }

  @override
  String thisPhoneUpdateTitle(String runtime) {
    return 'Update $runtime?';
  }

  @override
  String thisPhoneUpdateBody(String version) {
    return 'Installs version $version, restarts the server on this phone and connects again.';
  }

  @override
  String get thisPhoneUpdateKept =>
      'Your conversations are kept. The server is away for a minute while it restarts.';

  @override
  String get thisPhoneUpdateBusy =>
      'A reply is still being written. Stop it or let it finish, then update.';

  @override
  String thisPhoneStartFailed(String runtime) {
    return '$runtime didn\'t start. Start it again; Details below says what went wrong.';
  }

  @override
  String get thisPhoneStartAgain => 'Start again';

  @override
  String thisPhoneInstallFailed(String runtime) {
    return 'Installing $runtime didn\'t finish. Install it again; your conversations are kept.';
  }

  @override
  String get thisPhoneInstallAgain => 'Install again';

  @override
  String thisPhoneStopFailed(String runtime) {
    return '$runtime didn\'t stop. Try stopping it again.';
  }

  @override
  String thisPhoneCheckFailed(String runtime) {
    return 'This phone couldn\'t check on $runtime. Try again in a moment.';
  }

  @override
  String thisPhoneSwitchStopped(String runtime) {
    return '$runtime didn\'t start after the switch. Your conversations are kept.';
  }

  @override
  String get thisPhoneHistoryMoving =>
      'Bringing your earlier conversations across…';

  @override
  String thisPhoneHistoryMovingCount(int done, int total) {
    return 'Bringing your earlier conversations across ($done of $total)…';
  }

  @override
  String get thisPhoneHistoryFailed => '无法迁移你之前的对话。原始数据仍完好地保留在此手机上。';

  @override
  String get addServerCheckFailedPlain => '无法检查该服务器。请检查地址和此手机的网络连接后重试。';

  @override
  String serverRowDetailsTitle(String name) {
    return '$name 详情';
  }

  @override
  String get pluginsTeamRowTurnOn => 'Turn on';

  @override
  String get teamUiHostGuideEnterAddress => 'Enter the address';

  @override
  String get commandAuthStartFailed => 'Sign-in didn\'t start.';

  @override
  String get commandAuthCheckFailed =>
      'Couldn\'t check the sign-in. Try again.';

  @override
  String get commandAuthTryAgain => 'Try again';

  @override
  String get draftLeaveMessageNoText => '请再次尝试保存。如果不保存就离开，你对此草稿的最近修改可能会丢失。';

  @override
  String get draftLeaveCopyAction => '复制草稿并离开';

  @override
  String get draftLeaveRetry => '再次尝试保存';

  @override
  String get draftLeaveStillFailing => '仍未保存。请先复制你的文字再离开。';

  @override
  String get queuedRetry => '重试';

  @override
  String queuedRetryAll(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '全部 $count 条重试',
    );
    return '$_temp0';
  }

  @override
  String chatUiUseModelAndResend(String model) {
    return '使用 $model 并重新发送';
  }

  @override
  String get chatUiChooseAnotherModel => '选择其他模型';

  @override
  String get chatUiSendPromptAgain => '重新发送';

  @override
  String get chatUiPromptNotAnswered => 'Not answered';

  @override
  String get chatWatchEndedTitle => 'This conversation has ended';

  @override
  String get chatWatchEndedBody =>
      'It ended before the worker wrote anything here.';

  @override
  String get chatWatchBackToTask => 'Back to the task';

  @override
  String get chatWatchBackToWorker => 'Back to the worker';

  @override
  String get migrationTitle => 'Move from Termux';

  @override
  String get migrationChecking => 'Checking Termux and phone storage…';

  @override
  String get migrationReviewIntro =>
      'Your projects are copied into OpenCode inside this app. Nothing in Termux is changed or removed.';

  @override
  String get migrationGroupMoves => 'Copied and ready to use';

  @override
  String get migrationGroupExports => 'Saved privately, not turned on';

  @override
  String get migrationGroupNotMoved => 'Not moved';

  @override
  String get migrationItemProjects => 'Projects';

  @override
  String get migrationItemConfig => 'MCP and agent settings';

  @override
  String get migrationItemSessions => 'Conversation history (backup copy)';

  @override
  String get migrationItemGitConfig => 'Git settings';

  @override
  String get migrationItemShellFiles => 'Shell settings';

  @override
  String get migrationItemAiTeam => 'AI Team';

  @override
  String get migrationItemProjectsWhat =>
      'Into a new folder on the in-app server. Nothing there is overwritten.';

  @override
  String get migrationItemConfigWhat =>
      'To review before using: commands and paths may only work in Termux.';

  @override
  String get migrationItemSessionsWhat =>
      'May contain your sign-ins, and the app doesn\'t open it. Termux keeps your usable history.';

  @override
  String get migrationItemGitConfigWhat =>
      'Your Git name, email and options, to review.';

  @override
  String get migrationItemShellFilesWhat =>
      'Keeps .bashrc, .zshrc and your other shell start files; they never run.';

  @override
  String get migrationItemAiTeamWhat =>
      'The team\'s saved state. Setup installs its tools again.';

  @override
  String migrationItemSize(String size, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$size · $_temp0';
  }

  @override
  String get migrationSizeUnknown => 'Size unknown';

  @override
  String get migrationExportsNote =>
      'Private copies stay on this phone inside the in-app Linux. Nothing in them runs or turns on by itself.';

  @override
  String get migrationNotMovedSignIn =>
      'Sign-ins to AI providers: sign in again after the move';

  @override
  String migrationNotMovedSignInNamed(String names) {
    return 'Sign-ins to $names: sign in again after the move';
  }

  @override
  String get migrationNotMovedKeys => 'SSH keys and saved Git passwords';

  @override
  String get migrationNotMovedTools =>
      'Installed tools and caches: setup installs them again';

  @override
  String get migrationTermuxKept =>
      'Termux stays as it is, and its server keeps working until you remove it';

  @override
  String get migrationKeepOpen =>
      'Keep the app open while copying. Android stops it when you leave the app, and it picks up from here when you resume.';

  @override
  String get migrationStart => 'Copy to the in-app server';

  @override
  String get migrationChooseOne => 'Choose at least one item to copy.';

  @override
  String get migrationPacking => 'Preparing your files in Termux…';

  @override
  String get migrationCopying => 'Copying files to this app…';

  @override
  String get migrationUnpacking => 'Importing your files…';

  @override
  String get migrationVerifying => 'Checking the copied files…';

  @override
  String get migrationSwitching => 'Connecting to the in-app server…';

  @override
  String get migrationStepConnect => 'Connect to the in-app server';

  @override
  String get migrationStop => 'Stop copying';

  @override
  String get migrationStopTitle => 'Stop copying?';

  @override
  String get migrationStopBody => 'You can resume later from This phone.';

  @override
  String get migrationStopKept => 'What was copied so far is kept';

  @override
  String get migrationKeepGoing => 'Keep copying';

  @override
  String get migrationCancelled => 'Copy stopped. You can resume later.';

  @override
  String get migrationCancelledBody =>
      'What was copied is kept, and Termux isn\'t changed.';

  @override
  String get migrationStoppedLeaving =>
      'It stopped because the app left the screen: Android doesn\'t let it run in the background. What was copied is kept.';

  @override
  String get migrationResume => 'Resume copying';

  @override
  String get migrationNeedsSpace => 'More free space is needed before copying.';

  @override
  String migrationNeedsSpaceBody(String needed, String free) {
    return 'Needs about $needed, and $free is free. Free up space on this phone, or copy fewer items.';
  }

  @override
  String migrationNeedsSpaceBodyUnknown(String needed) {
    return 'Needs about $needed, and the free space couldn\'t be read. Free up space on this phone, or copy fewer items.';
  }

  @override
  String get migrationChooseFewer => 'Choose fewer items';

  @override
  String get migrationNeedsBuiltin => 'Set up the in-app server first.';

  @override
  String migrationNeedsBuiltinBody(String runtime) {
    return 'Your projects move into OpenCode inside this app, so it needs setting up. Setup installs Linux and $runtime, then this continues here.';
  }

  @override
  String get migrationSetUpBuiltin => 'Set up the in-app server';

  @override
  String get migrationSetupFailed =>
      'Setup couldn\'t start. Try again, or set it up from This phone.';

  @override
  String get migrationTermuxNotAnswering => 'Termux isn\'t answering';

  @override
  String get migrationTermuxUnavailable => 'Open Termux, then try again.';

  @override
  String get migrationOpenTermux => 'Open Termux';

  @override
  String get migrationFailedTitle => 'The move stopped';

  @override
  String get migrationSourceChanged =>
      'Files changed during copying. Try again when Termux is idle.';

  @override
  String get migrationSourceBusy =>
      'Termux is finishing the previous step. Try again shortly.';

  @override
  String get migrationUnsupportedFiles =>
      'This item contains files that cannot be copied safely.';

  @override
  String get migrationUnsupportedFilesFix =>
      'Links, sockets and Git worktrees can\'t be copied. Remove them in Termux and try again, or copy that project by hand.';

  @override
  String get migrationLinkedFileUnreadable =>
      'Some of this project\'s Git history can\'t be read in Termux, so it can\'t be moved safely.';

  @override
  String get migrationLinkedFileUnreadableFix =>
      'Open Termux, run git fsck in that project to see what is missing, then try again. Nothing was changed on your phone.';

  @override
  String get migrationTooLarge =>
      'This item exceeds the migration size or file limit.';

  @override
  String get migrationTooLargeFix =>
      'Each item can hold up to 512 MB and 20,000 files. Delete build folders such as node_modules in Termux, then try again.';

  @override
  String get migrationVerificationFailed =>
      'The copy could not be verified. Your Termux files are unchanged.';

  @override
  String get migrationDestinationChanged =>
      'Imported files changed. They will not be overwritten.';

  @override
  String get migrationDestinationChangedFix =>
      'The files on the in-app server stay as you left them.';

  @override
  String get migrationStorageFailed =>
      'The copy could not be saved. Check phone storage and try again.';

  @override
  String get migrationTimedOut =>
      'This step took too long. Keep the app open and resume.';

  @override
  String get migrationSelectionChanged =>
      'Use the saved migration selection to resume.';

  @override
  String get migrationConnectionFailed =>
      'Files are copied, but the in-app server could not connect.';

  @override
  String get migrationFailureCode => 'Reason';

  @override
  String get migrationFailureItem => 'Item';

  @override
  String get migrationOpenThisPhone => 'Open This phone';

  @override
  String get migrationDoneTitle => 'Moved from Termux';

  @override
  String get migrationDone =>
      'Files copied. Your Termux server is still available.';

  @override
  String get migrationSignInAgain => 'Sign in to your AI providers again';

  @override
  String migrationSignInAgainNamed(String names) {
    return '$names appear in your Termux settings. Sign in here to use them.';
  }

  @override
  String get migrationSignInAgainAny =>
      'Sign-ins never move from Termux. Until you sign in here, replies use OpenCode\'s free model, which is slower.';

  @override
  String get migrationProjectsWhere => 'Your projects';

  @override
  String migrationProjectsWhereBody(String folder) {
    return 'In the folder $folder on the in-app server';
  }

  @override
  String get migrationExportsWhere => 'Private copies';

  @override
  String migrationExportsWhereBody(String items) {
    return '$items: saved inside the in-app Linux, not turned on';
  }

  @override
  String get migrationRemoveTermux =>
      'Remove the Termux server when you\'re ready';

  @override
  String get migrationRemoveTermuxBody =>
      'Nothing is removed for you. Until then it keeps working, and you can switch back to it on Servers.';

  @override
  String get migrationOpenBuiltin => 'Open the in-app server';

  @override
  String get migrationDetailProjects => 'Projects folder';

  @override
  String get migrationDetailExports => 'Private copies folder';

  @override
  String get migrationUnfinishedTitle => 'The move didn\'t finish';

  @override
  String get migrationUnfinishedBody =>
      'Resume to carry on where it stopped. What was already copied is kept, and Termux isn\'t changed.';

  @override
  String get migrationUnavailableTitle => 'The move can\'t start';

  @override
  String get migrationUnavailableBody =>
      'The app couldn\'t prepare its private storage for the copy. Try again, and if it keeps happening, restart the app.';

  @override
  String get migrationRowBody =>
      'Copy your projects into the in-app server. Termux stays as it is.';

  @override
  String get migrationRowResume => 'Resume moving to the in-app server';

  @override
  String get migrationRowResumeBody =>
      'Stopped before it finished. What was copied is kept.';

  @override
  String get migrationRowRunning => 'Moving to the in-app server';

  @override
  String get migrationRowDoneBody =>
      'Remove the Termux server when you\'re ready.';

  @override
  String get migrationOffer =>
      'Move your Termux projects into this app? Termux stays as it is.';

  @override
  String get migrationOfferAction => 'Review what moves';

  @override
  String get integrationsSignInUncertainNext => '重新开始前请先检查服务器';

  @override
  String teamHomeLastKnownTasks(String time) {
    return 'Tasks as of $time';
  }

  @override
  String teamHomeLastKnownAgents(String time) {
    return 'Agents as of $time';
  }

  @override
  String get teamHomeStoppedStartFirst =>
      'Start the team again to give it a task or open one.';

  @override
  String get inAppServerStartExitedBody =>
      'OpenCode 在启动时自行退出了。打开设置查看其日志，或重新启动。';

  @override
  String inAppServerStartTimedOutBody(int seconds) {
    return 'OpenCode 在 $seconds 秒内没有响应。手机可能繁忙或内存不足；请关闭其他应用，然后重新启动。';
  }

  @override
  String get inAppServerStartInterruptedBody => '启动因应用离开屏幕而中断。请重新启动以继续。';

  @override
  String get inAppServerStartPasswordBody =>
      '应用无法在此手机上设置 OpenCode 的登录。请重新启动；如果反复出现，请打开设置。';

  @override
  String get inAppServerStartRefusedBody =>
      '手机刚才不允许应用启动 OpenCode。请重新启动；如果反复出现，请重启手机。';

  @override
  String get integrationsConnectWithKey => 'Add an API key';

  @override
  String get integrationsConnectOnServer => 'Set up on the server';

  @override
  String integrationsProviderDetails(String name) {
    return '$name details';
  }

  @override
  String get integrationsEnvironmentVariable => 'Server environment variable';

  @override
  String integrationsEnvironmentNote(String name) {
    return 'To connect $name without the app, set this where the server runs, then restart the server.';
  }

  @override
  String get termuxProblemAccessHeard =>
      'OpenCode 正在 Termux 中运行，但此应用暂时无法访问 Termux。允许访问后即可连接。';

  @override
  String get termuxProblemAccessNeeded =>
      '此应用暂时无法访问 Termux。请允许访问，这样它才能找到 OpenCode 并连接。';

  @override
  String get termuxProblemAccessBlocked =>
      'Android 阻止了此应用访问 Termux。请在此应用的权限中开启“Run commands in Termux environment”。';

  @override
  String get termuxProblemOtherAppsOff =>
      'Termux 尚不接受来自其他应用的命令。在 Termux 中运行一行命令即可允许。';

  @override
  String get termuxProblemAsleep =>
      'Termux 没有响应。可能是 Android 将其休眠了。请打开 Termux 唤醒它。';

  @override
  String termuxProblemNotAnswering(String runtime) {
    return '$runtime 已在 Termux 中设置，但没有响应。重启通常能恢复。';
  }

  @override
  String get termuxProblemNotInstalled => '此手机上没有 Termux。请重新安装，或改为设置应用内服务器。';

  @override
  String get termuxProblemOutdated =>
      '此 Termux 版本过旧，应用无法使用。请从 F-Droid 安装最新版 Termux。';

  @override
  String termuxProblemUnknown(String runtime) {
    return '此手机无法检查 Termux 中的 $runtime。请稍后再试。';
  }

  @override
  String get termuxFixAllowAccess => '允许访问 Termux';

  @override
  String get termuxFixOpenPermissions => '打开此应用的权限';

  @override
  String get termuxFixAllowOtherApps => '在 Termux 中允许其他应用';

  @override
  String get termuxFixOpenTermux => '打开 Termux';

  @override
  String termuxFixRestart(String runtime) {
    return '在 Termux 中重启 $runtime';
  }

  @override
  String get termuxFixGetTermux => '获取 Termux';

  @override
  String get termuxFixGetCurrentTermux => '获取最新版 Termux';

  @override
  String get termuxOtherAppsTitle => '允许其他应用';

  @override
  String get termuxOtherAppsBody =>
      '在 Termux 中粘贴这一行并按回车，然后回到这里。“打开 Termux”会为你复制它。';

  @override
  String get termuxLeadRunning => 'OpenCode is running in Termux';

  @override
  String get termuxLeadAccessLine =>
      'This app can\'t reach Termux yet. Allow access and it connects to your conversations.';

  @override
  String get termuxLeadSetUp => 'OpenCode is set up in Termux';

  @override
  String get termuxLeadTermuxOnly => 'Termux is on this phone';

  @override
  String get termuxLeadRunningBody => 'Connect to pick up your conversations.';

  @override
  String get termuxLeadStoppedBody =>
      'It\'s stopped. Start it to pick up your conversations.';

  @override
  String get termuxLeadConnect => 'Connect to the server in Termux';

  @override
  String get termuxLeadStart => 'Start the server in Termux';

  @override
  String get termuxInAppInstead => '改为设置应用内服务器';

  @override
  String get termuxInAppInsteadDetail => '全新开始，在本应用内运行，无需 Termux。';

  @override
  String get termuxInAppInsteadBlocked =>
      'A fresh start inside this app. To bring your projects from Termux, fix Termux access first.';

  @override
  String get aboutBundledComponents => 'Bundled components';

  @override
  String get aboutBundledComponentsDetail =>
      'Icons, fonts and other parts shipped inside this app';

  @override
  String get manageSpaceTitle => 'Clear this app\'s storage';

  @override
  String get manageSpaceMeasuring => 'Measuring what is stored…';

  @override
  String get manageSpaceIntro =>
      'Clearing deletes everything OpenCode Mobile keeps on this phone, and it cannot be undone. Export your projects first if you want to keep them.';

  @override
  String get manageSpaceExportFirst => 'Export projects first';

  @override
  String get manageSpaceClearCache => 'Clear the app\'s cache only';

  @override
  String manageSpaceClearCacheDetail(String size) {
    return 'Frees $size. Projects, servers and settings stay.';
  }

  @override
  String get manageSpaceClearCacheKeeps =>
      'Projects, servers and settings stay.';

  @override
  String manageSpaceCacheCleared(String size) {
    return 'Cache cleared. $size freed.';
  }

  @override
  String get manageSpaceCacheFailed => 'Could not clear the cache. Try again.';

  @override
  String get manageSpaceTryAgain => 'Try again';

  @override
  String get manageSpaceDeleteAll => 'Delete everything';

  @override
  String get manageSpaceDeleteAllDetail =>
      'Deletes all of the list below and closes the app';

  @override
  String get manageSpaceDeleteTitle => 'Delete everything?';

  @override
  String get manageSpaceDeleteBody =>
      'OpenCode Mobile then starts again as if it were new. This cannot be undone.';

  @override
  String get manageSpaceLostServer => 'The in-app server and its conversations';

  @override
  String manageSpaceLostProjects(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count projects ($size)',
      one: '1 project ($size)',
    );
    return '$_temp0';
  }

  @override
  String manageSpaceLostSettings(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saved servers and all settings',
      one: '1 saved server and all settings',
      zero: 'All settings',
    );
    return '$_temp0';
  }

  @override
  String get manageSpaceKeptAll =>
      'Termux, your computers and anything pushed to git stay';

  @override
  String get manageSpaceWaitForExport => 'Wait for the export to finish';

  @override
  String get manageSpaceDeletedLabel => 'Clearing deletes';

  @override
  String get manageSpaceServer => 'The in-app server';

  @override
  String get manageSpaceServerDetail =>
      'Ubuntu, OpenCode, its sign-ins and its conversations';

  @override
  String get manageSpaceSettings => 'Saved servers and settings';

  @override
  String manageSpaceSavedServers(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saved servers',
      one: '1 saved server',
      zero: 'No saved servers',
    );
    return '$_temp0';
  }

  @override
  String get manageSpaceKeptLabel => 'Stays';

  @override
  String get manageSpaceKeptTermux => 'Termux and the projects in it';

  @override
  String get manageSpaceKeptComputers => 'Your computers and their servers';

  @override
  String get manageSpaceKeptGit => 'Anything you pushed to git';

  @override
  String projectExportDetail(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count projects, $size, as one zip file where you choose',
      one: '1 project, $size, as one zip file where you choose',
    );
    return '$_temp0';
  }

  @override
  String get projectExportNoProjects => 'No projects on the in-app server yet';

  @override
  String get projectExportSave => 'Save as a zip file';

  @override
  String get projectExportRunning => 'Exporting projects';

  @override
  String get projectExportPreparing => 'Listing files…';

  @override
  String projectExportProgress(String done, String total) {
    return '$done of $total';
  }

  @override
  String get projectExportStop => 'Stop the export';

  @override
  String get projectExportStopDetail => 'The half-written file is deleted';

  @override
  String get projectExportPrivate => 'Include sign-ins and conversations';

  @override
  String get projectExportPrivateDetail =>
      'Private: anyone with the file can use your accounts';

  @override
  String projectExportDone(String size, int files) {
    return 'Projects exported: $size in $files files.';
  }

  @override
  String get projectExportDonePrivate =>
      'This file holds sign-ins. Keep it private.';

  @override
  String projectExportDoneLeftOut(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files with sign-ins or keys were left out.',
      one: '1 file with sign-ins or keys was left out.',
    );
    return '$_temp0';
  }

  @override
  String get projectExportStopped => 'Export stopped. Nothing was saved.';

  @override
  String get projectExportFailedDestination =>
      'Could not write to the place you chose. Try again, or pick another place.';

  @override
  String get projectExportFailedSpace =>
      'The place you chose is full. Free some space there or pick another place.';

  @override
  String get projectExportFailedSource =>
      'A project file could not be read. Try again.';

  @override
  String get projectExportFailed =>
      'The export stopped before it finished. Try again.';

  @override
  String get projectExportProjectsLabel => 'Projects';

  @override
  String get thisPhoneExportProjects => 'Export projects';

  @override
  String get thisPhoneExportProjectsDetail =>
      'Save them as a zip file, to keep or move';

  @override
  String get demoNoCommands => '演示没有命令：发送示例提示词即可查看一次更改审查。';

  @override
  String e7ModelUiUnusableProviders(int count, String providers) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '已登录 $providers，但此服务器即使重新加载也无法加载这些登录信息，因此其模型无法回答。部分提供商（如 Anthropic 和 Google）的浏览器登录无法在此服务器上加载。请改为在“提供商”下添加 API 密钥，或选择其他模型。',
      one:
          '已登录 $providers，但此服务器即使重新加载也无法加载该登录信息，因此其模型无法回答。部分提供商（如 Anthropic 和 Google）的浏览器登录无法在此服务器上加载。请改为在“提供商”下添加 API 密钥，或选择其他模型。',
    );
    return '$_temp0';
  }

  @override
  String e7ModelUiProviderReloadWaits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '重新加载会等待 $count 个正在进行的回复完成，因为重新加载会中断它们。',
      one: '重新加载会等待 1 个正在进行的回复完成，因为重新加载会中断它。',
    );
    return '$_temp0';
  }

  @override
  String get freeModelNotice =>
      '正在使用 OpenCode 的免费模型，速度较慢。添加你所用服务商的 API 密钥即可使用自己的模型。';

  @override
  String get freeModelSignIn => '添加 API 密钥';

  @override
  String get replySpeedTitle => 'Reply speed';

  @override
  String replySpeedLast(String first, String total) {
    return 'Last reply: first words after $first, finished after $total';
  }

  @override
  String replySpeedNoWords(String total) {
    return 'Last reply: ended after $total before any words came';
  }

  @override
  String replySpeedSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get perfDetailLinuxMode => 'Linux speed mode';

  @override
  String get perfLinuxModeFast => 'Fast: proot with seccomp';

  @override
  String get perfLinuxModeSlow => 'Slow: proot without seccomp';

  @override
  String get perfLinuxModeUnknown => 'Not known while OpenCode is stopped';

  @override
  String get perfDetailAwake => 'Phone kept awake';

  @override
  String get perfAwakeNow => 'Now, while a reply runs';

  @override
  String get perfAwakeWhenWorking => 'Only while a reply runs';

  @override
  String get perfDetailFirstWords => 'First words, last reply';

  @override
  String perfFirstWordsSplit(String app, String server) {
    return '$app in the app · $server on the server';
  }

  @override
  String get perfDetailModel => 'Model, last reply';

  @override
  String get manageSpaceIntroNothingToExport =>
      'Clearing deletes everything OpenCode Mobile keeps on this phone, and it cannot be undone.';

  @override
  String integrationsKeyOnlyHelper(String name) {
    return '$name does not allow browser sign-in from other apps, so use an API key. It is billed separately from any subscription. The key is stored on this server and never shown again.';
  }

  @override
  String integrationsGetKey(String name) {
    return 'Get a key from $name';
  }

  @override
  String integrationsKeySavedReady(String name) {
    return '$name key saved. Pick one of its models in the model picker.';
  }

  @override
  String integrationsKeySavedWaiting(String name) {
    return '$name key saved. It loads once the running replies finish.';
  }

  @override
  String integrationsKeySavedUnusable(String name) {
    return '$name key saved, but this server could not load it after a refresh. Check the key, or try Reload providers in the model picker.';
  }

  @override
  String integrationsKeySavedPending(String name) {
    return '$name key saved. The server has not loaded it yet.';
  }

  @override
  String migrationReviewSpace(String needed, String free) {
    return 'Needs about $needed · $free free';
  }

  @override
  String migrationReviewSpaceUnknown(String needed) {
    return 'Needs about $needed · Free space unknown';
  }

  @override
  String get migrationReviewSpaceShort =>
      'Not enough free space for this. Choose fewer items, or free up space on this phone.';

  @override
  String get migrationDiscard => 'Discard saved copy';

  @override
  String get migrationDiscardTitle => 'Discard this saved copy?';

  @override
  String get migrationDiscardBody =>
      'Temporary copy files will be removed. Files already imported and everything in Termux will stay.';

  @override
  String get migrationDiscardFailed =>
      'The saved copy couldn\'t be removed. Try again in a moment.';

  @override
  String get migrationStopping => 'Stopping…';

  @override
  String get pickerConnectProvider => '连接服务商';

  @override
  String get pickerConnectProviderHint => '添加 API 密钥或登录后即可使用其模型';

  @override
  String pickerAddKeyFor(String name) {
    return '添加 $name 的 API 密钥';
  }

  @override
  String get pickerAddKeyNotConnectedHint => '它的模型还不在此列表中';

  @override
  String pickerSignInTo(String name) {
    return '登录 $name';
  }

  @override
  String get pickerSignInHint => '打开此服务器的登录方式';

  @override
  String get pickerFreeOnlyNote => '目前只有 OpenCode 的免费模型可用，速度较慢。';

  @override
  String pickerProviderReady(String name) {
    return '$name 已就绪，它的模型已在列表中。';
  }

  @override
  String pickerProviderNotLoaded(String name) {
    return '$name 已保存，但服务器尚未加载它。';
  }

  @override
  String get integrationsSignedInUnusable => '已登录，但此服务器无法使用';

  @override
  String get chatUiCompactConfirmTitle => '压缩此对话？';

  @override
  String get chatUiCompactConfirmBody => '压缩会用简短摘要替换较早的消息以节省空间，且无法撤销。';

  @override
  String get chatUiCompactConfirmAction => '压缩对话';

  @override
  String get kitTurnReconnecting => '连接已断开。正在重新连接以获取此回复的其余部分。';

  @override
  String get kitTurnLiveSending => '正在发送';

  @override
  String get kitTurnLiveWaitingForServer => '等待服务器';

  @override
  String get kitTurnLiveServerQuiet => '服务器还没有响应';

  @override
  String get kitTurnLiveThinking => '思考中';

  @override
  String get kitTurnLiveFirstWordSlow => '正在等待模型输出第一个字';

  @override
  String get kitTurnLiveFirstWordSlowTeam => 'AI Team 也在这部手机上工作，所以回复可能会变慢';

  @override
  String get kitTurnLiveWriting => '正在撰写';

  @override
  String get kitTurnLiveWorking => '工作中';

  @override
  String get kitTurnLiveWaitingForYou => '等待你操作';

  @override
  String get kitTurnLiveStop => '停止回复';

  @override
  String get kitTurnLiveStopping => 'Stopping…';

  @override
  String kitTurnLiveNow(String status) {
    return '$status…';
  }

  @override
  String kitTurnLiveFor(String status, String elapsed) {
    return '$status · $elapsed';
  }

  @override
  String kitTurnLiveSeconds(int seconds) {
    return '$seconds 秒';
  }

  @override
  String kitTurnLiveMinutes(int minutes, int seconds) {
    return '$minutes 分 $seconds 秒';
  }

  @override
  String get chatNoReplyCameBack => 'No reply came back';

  @override
  String get composerFieldLabel => '发给智能体的消息';

  @override
  String get e7WorkspaceYesterday => '昨天';

  @override
  String get teamStripTitle => 'AI Team';

  @override
  String get teamStripIdle => 'AI Team · nothing running';

  @override
  String teamStripWorking(int count) {
    return '$count working';
  }

  @override
  String teamStripNeedsYou(int count) {
    return '$count needs you';
  }

  @override
  String teamProgressOne(String title) {
    return 'AI Team: $title';
  }

  @override
  String teamProgressStep(String title, int done, int total) {
    return 'AI Team: $title · step $done of $total';
  }

  @override
  String teamProgressMany(int count) {
    return 'AI Team: $count tasks working';
  }

  @override
  String get teamSettingsTitle => 'Team settings';

  @override
  String get teamSettingsOpenTooltip => 'Team settings';

  @override
  String get teamSettingsTurnOff => 'Turn off the AI Team';

  @override
  String teamChatWorkerNumbered(String role, int n) {
    return '$role $n';
  }

  @override
  String get teamRoleNameGeneral => 'General';

  @override
  String get teamRoleNameProduct => 'Product';

  @override
  String get teamRoleNameFrontend => 'Frontend';

  @override
  String get teamRoleNameBackend => 'Backend';

  @override
  String get teamRoleNameTester => 'Tester';

  @override
  String get teamRolePurposeGeneral => 'Any task, done the plain way';

  @override
  String get teamRolePurposeProduct =>
      'Turns an idea into clear requirements and a plan';

  @override
  String get teamRolePurposeFrontend =>
      'Screens, layout and how it feels to use';

  @override
  String get teamRolePurposeBackend =>
      'Servers, data and the code behind the screens';

  @override
  String get teamRolePurposeTester =>
      'Finds what breaks and shows that it works';

  @override
  String get teamRolesTitle => 'Agents';

  @override
  String get teamRolesNew => 'New role';

  @override
  String get teamRolesEmpty => 'No roles yet';

  @override
  String teamRoleWorkingOn(String task, String age) {
    return 'Working on “$task” · $age';
  }

  @override
  String teamRoleUses(String model) {
    return 'Uses $model';
  }

  @override
  String get teamRoleUsesTeamModel => 'Uses the team\'s model';

  @override
  String get teamRoleUsesComputerModel => 'Uses the computer\'s model';

  @override
  String teamRoleTaskCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks',
      one: '1 task',
      zero: 'No tasks yet',
    );
    return '$_temp0';
  }

  @override
  String teamSettingsAgentsRow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Agents · $count roles',
      one: 'Agents · 1 role',
    );
    return '$_temp0';
  }

  @override
  String get teamSettingsAgentsHint =>
      'Who does the work, and how each one works';

  @override
  String get teamRoleNewTitle => 'New role';

  @override
  String get teamRoleFieldName => 'Name';

  @override
  String get teamRoleFieldPurpose => 'What it\'s for';

  @override
  String get teamRoleFieldPurposeHint =>
      'One line, for example: writes the guides';

  @override
  String get teamRoleFieldInstructions => 'Instructions';

  @override
  String get teamRoleFieldInstructionsHint =>
      'How this role should work, in your own words';

  @override
  String get teamRoleNameRequired => 'Give the role a name';

  @override
  String get teamRoleModelRow => 'Model';

  @override
  String get teamRoleTeamModel => 'Team\'s model';

  @override
  String get teamRoleComputerModel => 'The computer\'s model';

  @override
  String get teamRoleModelSheetDefault => 'Team\'s model';

  @override
  String get teamRoleModelSheetDefaultHint =>
      'Uses whatever model the whole team uses';

  @override
  String teamRoleWorkingNow(String task) {
    return 'Working on “$task”';
  }

  @override
  String get teamRoleOpenConversation => 'Open its conversation';

  @override
  String get teamRoleRecentTasks => 'Recent tasks';

  @override
  String teamRoleNoTasks(String role) {
    return 'Nothing given to $role yet';
  }

  @override
  String teamRoleGiveTask(String role) {
    return 'Give $role a task';
  }

  @override
  String get teamRoleSave => 'Save';

  @override
  String get teamRoleCreate => 'Create role';

  @override
  String teamRoleReset(String role) {
    return 'Reset $role';
  }

  @override
  String teamRoleResetTitle(String role) {
    return 'Reset $role?';
  }

  @override
  String get teamRoleResetBody =>
      'Its name, purpose, instructions and model go back to how they shipped.';

  @override
  String teamRoleDelete(String role) {
    return 'Delete $role';
  }

  @override
  String teamRoleDeleteTitle(String role) {
    return 'Delete $role?';
  }

  @override
  String teamRoleDeleteBody(String role) {
    return '$role is removed from this team. Tasks it already did keep its name.';
  }

  @override
  String get teamRoleWorkerName => 'Worker name';

  @override
  String get teamRoleExamplesLabel => 'Start from an example';

  @override
  String get teamRoleExampleDocs => 'Docs writer';

  @override
  String get teamRoleExampleDocsPurpose => 'Writes and updates the guides';

  @override
  String get teamRoleExampleDocsInstructions =>
      'You write and update documentation. Keep it short, accurate and in plain words. Check every command and path you mention before writing it down.';

  @override
  String get teamRoleExampleSecurity => 'Security reviewer';

  @override
  String get teamRoleExampleSecurityPurpose =>
      'Looks for ways the code could be abused';

  @override
  String get teamRoleExampleSecurityInstructions =>
      'You review code for security problems: secrets in code or logs, unchecked input, unsafe links, and missing permission checks. Report what you find with the file and line, and fix only what the task asks for.';

  @override
  String get teamRoleExampleDesigner => 'Designer';

  @override
  String get teamRoleExampleDesignerPurpose =>
      'Makes it clear, consistent and pleasant';

  @override
  String get teamRoleExampleDesignerInstructions =>
      'You improve how the product looks and reads. Reuse the parts and words already in the app, keep one design language, and check small screens and large text.';

  @override
  String get teamRoleStarterInstructions =>
      'You are the ___ on this team.\nFocus on: ___\nAlways: ___\nNever: ___';

  @override
  String get teamStartRunWho => 'Who';

  @override
  String get teamStartRunWhoSuggested => 'Suggested from your words';

  @override
  String get teamStartRunWhoChange => 'Change';

  @override
  String get teamStartRunWhoTitle => 'Who should take this?';

  @override
  String teamChatLeadStartingRole(String role, String title) {
    return '$role started on “$title”';
  }

  @override
  String teamChatLeadClaimedRole(String role, String title) {
    return '$role took “$title”';
  }

  @override
  String teamChatLeadStartingItRole(String role) {
    return '$role started';
  }

  @override
  String teamChatLeadClaimedItRole(String role) {
    return '$role took the task';
  }

  @override
  String get teamRolesSearchAliases =>
      'roles personas agents team frontend backend tester product designer instructions';

  @override
  String get teamUiStatePhoneStoppedTitle => 'AI Team stopped';

  @override
  String get teamUiStatePhoneStoppedBody =>
      'AI Team on this phone isn’t running. Start it to continue your tasks.';

  @override
  String get teamStartStepService => 'Starting the team’s service';

  @override
  String get teamStartStepAnswering => 'Waiting for the team to answer';

  @override
  String get teamStartStepStore => 'Opening the task store';

  @override
  String get teamStartStepAgents => 'Getting the agents ready';

  @override
  String get teamStartSlow => 'Taking longer than usual, the phone is busy';

  @override
  String get teamStartAgain => 'Start again';

  @override
  String get teamUiHostPhraseStarting => 'Starting';

  @override
  String get teamUiStartOnPhone => 'Start AI Team on this phone';

  @override
  String get chatCollapseAllSteps => '折叠所有步骤';

  @override
  String chatWatchTeamInstructions(int count, String time) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Instructions from the team · $countString words · $time',
      one: 'Instructions from the team · 1 word · $time',
    );
    return '$_temp0';
  }

  @override
  String get chatWatchEmptyStartingTitle => 'Starting';

  @override
  String get chatWatchEmptyStartingBody => 'Its steps appear here as it works.';

  @override
  String chatWatchEmptyWorkingOn(String task) {
    return 'Working on “$task”. Its steps appear here as it works.';
  }

  @override
  String chatWatchEmptyReviewing(String task) {
    return 'Reviewing the changes of “$task”. Its steps appear here as it works.';
  }

  @override
  String get chatWatchEmptyIdleTitle => 'Waiting';

  @override
  String get chatWatchEmptyIdleBody =>
      'It is waiting for its next task. Message it below to ask for something.';

  @override
  String get teamUiAgentLabelSessionTitle => 'Conversation title';

  @override
  String get kitComposerPillNoAnswer => '暂无回复';

  @override
  String get kitComposerRailRetry => '重试';

  @override
  String get teamProjectHome => 'AI Team';

  @override
  String get teamProjectDemo => 'Demo';

  @override
  String get teamProjectNew => 'New project';

  @override
  String get teamProjectQuick => 'Give a quick task';

  @override
  String get teamProjectSettings => 'Project settings';

  @override
  String get teamProjectRoles => 'Roles and agents';

  @override
  String get teamProjectEmpty => 'Give your team a goal to start a project.';

  @override
  String get teamProjectSelect => 'Select a project';

  @override
  String get teamProjectSelectTask =>
      'Select a task to follow its conversation.';

  @override
  String get teamProjectLoad => 'Loading projects';

  @override
  String get teamProjectRetry => 'Try again';

  @override
  String get teamProjectError =>
      'The project could not be updated. Your saved work is still available.';

  @override
  String get teamProjectSpec => 'Open spec';

  @override
  String get teamProjectPlan => 'Review plan';

  @override
  String get teamProjectBoard => 'Board';

  @override
  String get teamProjectGraph => 'Dependencies';

  @override
  String get teamProjectTimeline => 'Timeline';

  @override
  String get teamProjectServers => 'Servers';

  @override
  String get teamProjectMilestones => 'Milestones';

  @override
  String get teamProjectLanes => 'Lanes';

  @override
  String get teamProjectMerge => 'Merge queue';

  @override
  String get teamProjectCost => 'Cost';

  @override
  String get teamProjectDecisions => 'Recent decisions';

  @override
  String get teamProjectPause => 'Pause project';

  @override
  String get teamProjectResume => 'Resume project';

  @override
  String get teamProjectStopConfirmTitle => 'Stop this project?';

  @override
  String get teamProjectStop => 'Stop project';

  @override
  String get teamProjectStopBody =>
      'Running tasks will stop. Their work and project history will be kept.';

  @override
  String get teamProjectAdvance => 'Advance demo';

  @override
  String get teamProjectDigest => 'Since you were away';

  @override
  String get teamProjectDigestRead => 'Mark as read';

  @override
  String get teamProjectAnswer => 'Answer';

  @override
  String get teamProjectAnswerLabel => 'Your answer';

  @override
  String get teamProjectAll => 'Everything';

  @override
  String get teamProjectMerges => 'Merges';

  @override
  String get teamProjectProblems => 'Problems';

  @override
  String get teamProjectMilestoneFilter => 'Milestone';

  @override
  String get teamProjectRepoFilter => 'Repo';

  @override
  String get teamProjectServerFilter => 'Server';

  @override
  String get teamProjectBacklog => 'Backlog';

  @override
  String get teamProjectReady => 'Ready';

  @override
  String get teamProjectWorking => 'Working';

  @override
  String get teamProjectReview => 'Review';

  @override
  String get teamProjectDone => 'Done';

  @override
  String get teamProjectNoTasks => 'No tasks in this view.';

  @override
  String get teamProjectMove => 'Move task';

  @override
  String get teamProjectMoveTo => 'Move to server';

  @override
  String get teamProjectHandoff => 'Hand-off note';

  @override
  String get teamProjectPaused => 'Paused';

  @override
  String get teamProjectStopped => 'Stopped';

  @override
  String get teamProjectFailed => 'Stopped unexpectedly';

  @override
  String get teamProjectStalled => 'No recent progress';

  @override
  String get teamProjectPlanning => 'Shaping the spec';

  @override
  String get teamProjectPlanWaiting => 'Plan ready to review';

  @override
  String get teamProjectNeedsYou => 'Needs your decision';

  @override
  String get teamProjectWaiting => 'Waiting for dependencies';

  @override
  String get teamProjectOnline => 'Reachable';

  @override
  String get teamProjectOffline => 'Not reachable · last known tasks';

  @override
  String get teamProjectNoLimit => 'No limit';

  @override
  String get teamProjectUnknown => 'Not reported';

  @override
  String get teamProjectAcceptMilestoneConfirmTitle => 'Accept this milestone?';

  @override
  String get teamProjectAccept => 'Accept milestone';

  @override
  String get teamProjectMergeConfirmTitle => 'Merge into dev?';

  @override
  String get teamProjectMergeNext => 'Merge checked work into dev';

  @override
  String get teamProjectCostDemo =>
      'Demo figures are simulated; device memory, battery, heat and conversation speed have not been measured.';

  @override
  String teamProjectPlanningElapsed(int minutes) {
    return 'Shaping the spec · $minutes min';
  }

  @override
  String teamProjectPlanningSlow(int minutes) {
    return 'Still shaping the spec · $minutes min';
  }

  @override
  String teamProjectAllTasksDone(int total) {
    return 'All $total tasks complete';
  }

  @override
  String teamProjectProgress(int done, int total, int working) {
    String _temp0 = intl.Intl.pluralLogic(
      working,
      locale: localeName,
      other: ' · $working working',
      zero: '',
    );
    return '$done of $total tasks complete$_temp0';
  }

  @override
  String teamProjectLaneCount(int busy, int total) {
    return '$busy of $total lanes busy';
  }

  @override
  String teamProjectSpend(
    String today,
    String daily,
    String spent,
    String total,
  ) {
    return 'Today: $today / $daily. Total: $spent / $total.';
  }

  @override
  String get teamProjectEditorNewProject => 'New project';

  @override
  String get teamProjectEditorQuickTask => 'Quick task';

  @override
  String get teamProjectEditorSpec => 'Living spec';

  @override
  String get teamProjectEditorPlan => 'Review plan';

  @override
  String get teamProjectEditorSettings => 'Project settings';

  @override
  String get teamProjectEditorRoles => 'Roles and agents';

  @override
  String get teamProjectEditorStartPlanning => 'Start planning';

  @override
  String get teamProjectEditorStartTask => 'Start task';

  @override
  String get teamProjectEditorApproveSpec => 'Approve spec';

  @override
  String get teamProjectEditorApprovePlan => 'Approve and start';

  @override
  String get teamProjectEditorSave => 'Save changes';

  @override
  String get teamProjectEditorSaveDraft => 'Save draft';

  @override
  String get teamProjectEditorName => 'Project name';

  @override
  String get teamProjectEditorGoal => 'Goal';

  @override
  String get teamProjectEditorRepos => 'Repos';

  @override
  String get teamProjectEditorRepoName => 'Repo name';

  @override
  String get teamProjectEditorRepoPath => 'Repo folder';

  @override
  String get teamProjectEditorServer => 'Server';

  @override
  String get teamProjectEditorRemove => 'Remove';

  @override
  String get teamProjectEditorAddRepo => 'Add repo';

  @override
  String get teamProjectEditorRole => 'Role';

  @override
  String get teamProjectEditorPlanFirst => 'Plan first';

  @override
  String get teamProjectEditorMode => 'Execution mode';

  @override
  String get teamProjectEditorSingle => 'Single lane';

  @override
  String get teamProjectEditorParallel => 'Parallel agents';

  @override
  String get teamProjectEditorMaxLanes => 'Maximum lanes';

  @override
  String teamProjectEditorCostMeasured(String host, String memory) {
    return 'On $host: about $memory MB of memory per lane, measured. Battery and conversation speed are not measured yet.';
  }

  @override
  String teamProjectEditorCostNotMeasured(String host) {
    return 'Not measured on $host yet. Your conversation stays first.';
  }

  @override
  String get teamProjectEditorCostNoHost =>
      'Choose where the work runs to see what a lane costs there.';

  @override
  String get teamProjectEditorThisPhone => 'this phone';

  @override
  String get teamProjectEditorGoalRequired => 'Add a goal.';

  @override
  String get teamProjectEditorRepoMissing => 'Add at least one repo.';

  @override
  String get teamProjectEditorRepoIncomplete =>
      'Finish the repo: a name, a folder and where it runs.';

  @override
  String get teamProjectEditorNoFallback => 'No fallback model';

  @override
  String get teamProjectEditorNoFallbackHint =>
      'The work waits for the main model instead of switching.';

  @override
  String get teamProjectEditorReadOnlyRole =>
      'Read-only: this agent can read the project but not change it.';

  @override
  String get teamProjectEditorReadOnlyShort => 'Read-only';

  @override
  String get teamProjectEditorCharging => 'Only while charging';

  @override
  String get teamProjectEditorReview => 'Review level';

  @override
  String get teamProjectEditorMilestonesRisk => 'Milestones and risky points';

  @override
  String get teamProjectEditorEveryStep => 'Every step';

  @override
  String get teamProjectEditorBudget => 'Budget';

  @override
  String get teamProjectEditorSetLimits => 'Set limits';

  @override
  String get teamProjectEditorNoLimit => 'No limit';

  @override
  String get teamProjectEditorDailyBudget => 'Per day (USD)';

  @override
  String get teamProjectEditorTotalBudget => 'Total (USD)';

  @override
  String get teamProjectEditorTaskTokens => 'Token limit per task (optional)';

  @override
  String get teamProjectEditorAutoFix => 'Fix findings automatically';

  @override
  String get teamProjectEditorMaxRounds => 'Maximum fix rounds';

  @override
  String get teamProjectEditorConstraints => 'Constraints';

  @override
  String get teamProjectEditorDecisions => 'Decisions';

  @override
  String get teamProjectEditorOutOfScope => 'Out of scope';

  @override
  String get teamProjectEditorMilestones => 'Milestones';

  @override
  String get teamProjectEditorMilestoneTitle => 'Milestone title';

  @override
  String get teamProjectEditorCriteria => 'Acceptance criteria (one per line)';

  @override
  String get teamProjectEditorMoveUp => 'Move up';

  @override
  String get teamProjectEditorMoveDown => 'Move down';

  @override
  String get teamProjectEditorAddMilestone => 'Add milestone';

  @override
  String get teamProjectEditorHistory => 'Version history';

  @override
  String get teamProjectEditorVersion => 'Version';

  @override
  String get teamProjectEditorPlanHelp =>
      'Review the tasks and their acceptance criteria. Changes here are included when you approve the plan.';

  @override
  String get teamProjectEditorRisky => 'Review gate · risky';

  @override
  String get teamProjectEditorTaskTitle => 'Task title';

  @override
  String get teamProjectEditorRepo => 'Repo';

  @override
  String get teamProjectEditorDependencies => 'Depends on';

  @override
  String get teamProjectEditorRemoveTask => 'Remove task';

  @override
  String get teamProjectEditorRemoteModel => 'The computer\'s model';

  @override
  String get teamProjectEditorAddRole => 'Add role';

  @override
  String get teamProjectEditorRoleName => 'Role name';

  @override
  String get teamProjectEditorInstructions => 'Instructions';

  @override
  String get teamProjectEditorModel => 'Model';

  @override
  String get teamProjectEditorFallback => 'Fallback model';

  @override
  String get teamProjectEditorAllRoles => 'All roles';

  @override
  String get teamProjectEditorChooseMode =>
      'Choose Single lane or Parallel agents.';

  @override
  String get teamProjectEditorPositiveLanes =>
      'Enter a lane limit from 1 to 32.';

  @override
  String get teamProjectEditorChooseBudget =>
      'Set a budget or choose No limit.';

  @override
  String get teamProjectEditorPositiveBudget =>
      'Enter a limit per day and a total limit, each above zero.';

  @override
  String get teamProjectEditorSaveFailed =>
      'Changes could not be saved. Your edits are still here; try saving again.';

  @override
  String get teamProjectEditorRequired => 'Add a goal and at least one repo.';

  @override
  String get teamProjectEditorChooseRoleServer =>
      'Choose a role and a server for this task.';

  @override
  String get teamProjectEditorRepoRequired =>
      'Choose a server and enter the repo name and folder.';

  @override
  String get teamProjectEditorSpecRequired =>
      'Add a goal and at least one milestone with a title and acceptance criteria.';

  @override
  String get teamProjectEditorDraftFailed =>
      'The draft could not be kept on this device. Keep this screen open and try saving again.';

  @override
  String get teamProjectEditorChangedElsewhere =>
      'This project changed while you were editing. Close this sheet and review the latest project before approving changes.';

  @override
  String get teamProjectConversation => 'Task conversation';

  @override
  String get teamProjectTaskMissing => 'This task is no longer available';

  @override
  String get teamProjectRefreshTask => 'Refresh task';

  @override
  String get teamProjectTaskSaveFailed =>
      'The change was not saved. Refresh and try again; your message is still here.';

  @override
  String get teamProjectTaskMessage => 'Message the team…';

  @override
  String get teamProjectTaskInstructions => 'Instructions from the team';

  @override
  String get teamProjectTaskPlan => 'Plan';

  @override
  String get teamProjectTaskApprovePlan => 'Approve and start';

  @override
  String get teamProjectTaskReview => 'Review required';

  @override
  String get teamProjectTaskAccepted => 'Accepted';

  @override
  String get teamProjectTaskAcceptPhase => 'Accept phase';

  @override
  String get teamProjectTaskFindings => 'Verification findings';

  @override
  String get teamProjectTaskFix => 'Fix selected';

  @override
  String get teamProjectTaskRecheck => 'Re-check task';

  @override
  String get teamProjectTaskIgnore => 'Ignore selected finding';

  @override
  String get teamProjectTaskIgnoreReason =>
      'Why is this finding safe to ignore?';

  @override
  String get teamProjectTaskReasonRequired =>
      'Enter a reason to keep with this decision.';

  @override
  String get teamProjectTaskCritical => 'Critical';

  @override
  String get teamProjectTaskMajor => 'Major';

  @override
  String get teamProjectTaskMinor => 'Minor';

  @override
  String get teamProjectTaskMerge => 'Merge queue to dev';

  @override
  String get teamProjectTaskMergeRun => 'Check and merge to dev';

  @override
  String get teamProjectTaskPromoteConfirmTitle => 'Promote dev to main?';

  @override
  String get teamProjectTaskPromote => 'Promote dev to main';

  @override
  String get teamProjectTaskPromoteBody =>
      'This updates protected main to the dev commit you reviewed. The engine will check both commits again before changing main.';

  @override
  String get teamProjectTaskPromotion => 'Protected branch';

  @override
  String get teamProjectTaskDiff => 'View changes';

  @override
  String get teamProjectTaskPause => 'Pause task';

  @override
  String get teamProjectTaskResume => 'Resume task';

  @override
  String get teamProjectTaskStopConfirmTitle => 'Stop this task?';

  @override
  String get teamProjectTaskStop => 'Stop task';

  @override
  String get teamProjectTaskStopBody =>
      'Stop this task and keep its conversation and changes for review.';

  @override
  String get teamProjectTaskRestart => 'Start task again';

  @override
  String get teamProjectTaskAnswer => 'Send answer';

  @override
  String get teamProjectTaskAnswerLabel => 'Your answer';

  @override
  String get teamProjectTaskRunning => 'Working';

  @override
  String get teamProjectTaskWaiting => 'Waiting';

  @override
  String get teamProjectTaskDone => 'Done';

  @override
  String get teamProjectTaskFailed => 'Task stopped before finishing';

  @override
  String get teamProjectTaskStale => 'Last known state';

  @override
  String get teamProjectTaskCollapse => 'Collapse all';

  @override
  String get teamProjectTaskWork => 'Work completed';

  @override
  String get teamProjectTaskEmpty =>
      'The task is queued. Its replies and checks will appear here.';

  @override
  String get teamProjectTaskReceipt => 'Promotion receipt';

  @override
  String get teamProjectTaskVerify => 'Verify task';

  @override
  String get teamProjectTryDemo => '试用 AI Team 演示';

  @override
  String get teamProjectLoadFailure =>
      'The demo could not be opened. Your saved project data has been kept.';

  @override
  String get teamProjectInboxOpen => 'Review project decision';

  @override
  String get teamProjectDemoDisclosure =>
      'Simulated projects. No agents run and no repositories change.';

  @override
  String get teamProjectOff => 'Leave demo';

  @override
  String get teamProjectEditorFixRoundsRange =>
      'Enter a fix-round limit from 0 to 3.';

  @override
  String get teamProjectEditorPositiveTokens =>
      'Enter a positive token limit or leave it empty.';

  @override
  String get teamProjectEditorReloadConfirmTitle => 'Refresh this project?';

  @override
  String get teamProjectEditorReload => 'Refresh latest project';

  @override
  String get teamProjectEditorDiscardDraft =>
      'This replaces your unsaved edits with the latest project. Your saved project is kept.';

  @override
  String get teamProjectEditorRoleRequired => 'Enter a name for this role.';

  @override
  String get teamProjectEditorDefaults => 'New project defaults';

  @override
  String get teamProjectEditorApplyPlan => 'Apply updated plan';

  @override
  String get teamProjectEditorContextFiles => 'Files to read first';

  @override
  String get teamProjectEditorContextFilesHelp =>
      'Optional. One path per line. The team reads these before it plans. The demo does not read or upload files.';

  @override
  String get teamProjectEditorScreenOff => 'Keep working with the screen off';

  @override
  String get teamProjectEditorScreenOffHelp =>
      'This preference is saved for the project. Background work remains subject to the server and system limits.';

  @override
  String get teamProjectEditorDraftApproval =>
      'Draft changes need your approval before they become the project spec.';

  @override
  String get teamProjectEditorChangeRequest =>
      'What should the planner change?';

  @override
  String get teamProjectEditorAskChange => 'Ask to change';

  @override
  String get teamProjectEditorChangeRequired =>
      'Add a goal and describe the change you want.';

  @override
  String get teamProjectTaskApprovedPlan => 'Approved plan';

  @override
  String get teamProjectTaskCriteria => 'Acceptance criteria';

  @override
  String get teamProjectTaskOpenFindings => 'Open findings';

  @override
  String get teamProjectTaskFindingsAddressed => 'Findings addressed';

  @override
  String get teamProjectMergeConfirmBody =>
      'Checked task branches will merge into dev, followed by combined checks. Main stays unchanged.';

  @override
  String get teamProjectEditorDraftClearFailed =>
      'Changes were saved, but the local draft could not be cleared. Close this sheet and review the project before trying again.';

  @override
  String get teamProjectRestartElsewhereConfirmTitle => 'Start over elsewhere?';

  @override
  String get teamProjectRestartElsewhere => 'Start over elsewhere';

  @override
  String get teamProjectRestartElsewhereBody =>
      'Start a new attempt on this server. The previous branch stays on its original server.';

  @override
  String get teamProjectWaitForServer => 'Wait for the original server';

  @override
  String get teamProjectBudgetNear =>
      'Approaching your budget. New work pauses at your chosen limit.';

  @override
  String get teamProjectDemoPlanFailure => 'Demo: unreadable plan';

  @override
  String get teamProjectTaskReviewFindings => 'Select open findings';

  @override
  String get teamProjectTaskResolveAgent => 'Resolve with agent';

  @override
  String get teamProjectTaskResolveManually => 'I’ll resolve';

  @override
  String get teamProjectTaskRecheckResolution => 'Re-check resolution';

  @override
  String get teamProjectTaskVerificationResults => 'Verification results';

  @override
  String get teamProjectTaskCriterionMet => 'Met';

  @override
  String get teamProjectTaskCriterionUnmet => 'Unmet';

  @override
  String get teamProjectTaskCriterionNotApplicable => 'Not applicable';

  @override
  String get teamProjectTaskDemoConflict => 'Demo: create a conflict';

  @override
  String get teamProjectTaskDemoCommit => 'Demo: add a manual commit';

  @override
  String get teamProjectEditorNoOptions =>
      'No options are available yet. Return to AI Team to add a server or role.';

  @override
  String get teamProjectEditorUnknownDate => 'Date unavailable';

  @override
  String get teamProjectEditorYou => 'You';

  @override
  String get teamProjectEditorApprovedBy => 'Approved by';

  @override
  String get teamProjectEditorPlanFailed =>
      'The planner did not return a usable plan. Keep the goal as one task, or ask for a new plan.';

  @override
  String get teamProjectEditorUseAsTask => 'Use as one task';

  @override
  String get teamProjectEditorAskAgain => 'Ask again';

  @override
  String get teamProjectDemoChip => 'Demo';

  @override
  String teamProjectHeadlineMilestone(int current, int total, int working) {
    String _temp0 = intl.Intl.pluralLogic(
      working,
      locale: localeName,
      other: ' · $working working',
      zero: '',
    );
    return 'Milestone $current of $total$_temp0';
  }

  @override
  String teamProjectHeadlineDone(int total) {
    return 'All $total milestones done';
  }

  @override
  String teamProjectGoalStatus(String age, int milestones, int repos) {
    String _temp0 = intl.Intl.pluralLogic(
      milestones,
      locale: localeName,
      other: '$milestones milestones',
      one: '1 milestone',
    );
    String _temp1 = intl.Intl.pluralLogic(
      repos,
      locale: localeName,
      other: '$repos repos',
      one: '1 repo',
    );
    return 'Spec approved $age · $_temp0 · $_temp1';
  }

  @override
  String teamProjectGoalStatusDraft(int milestones, int repos) {
    String _temp0 = intl.Intl.pluralLogic(
      milestones,
      locale: localeName,
      other: '$milestones milestones',
      one: '1 milestone',
    );
    String _temp1 = intl.Intl.pluralLogic(
      repos,
      locale: localeName,
      other: '$repos repos',
      one: '1 repo',
    );
    return 'Draft spec · $_temp0 · $_temp1';
  }

  @override
  String get teamProjectOpenSpec => 'Open spec';

  @override
  String teamProjectRequestWhere(String role, String server) {
    return '$role on $server';
  }

  @override
  String teamProjectRequestBlocks(String role, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks after it wait too',
      one: '1 task after it waits too',
    );
    return '$role waits; $_temp0';
  }

  @override
  String teamProjectMilestoneTasks(int done, int total) {
    return '$done of $total tasks';
  }

  @override
  String teamProjectMilestoneWaits(int number) {
    return 'Waits on $number';
  }

  @override
  String get teamProjectMilestoneNoTasks => 'No tasks yet';

  @override
  String teamProjectLanesTitle(int busy, int total) {
    return 'Lanes $busy/$total busy';
  }

  @override
  String get teamProjectLanesChange => 'Change';

  @override
  String teamProjectLaneRunning(String server, String elapsed) {
    return '$server · $elapsed';
  }

  @override
  String teamProjectLaneWaiting(String server) {
    return '$server · waiting for a free lane';
  }

  @override
  String teamProjectLaneTitle(String role, String task) {
    return '$role · $task';
  }

  @override
  String teamProjectLaneNoteParallel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lanes',
      one: '1 lane',
    );
    return 'Parallel · $_temp0';
  }

  @override
  String get teamProjectLaneNoteSingle => 'Single lane';

  @override
  String teamProjectLaneNoteDemo(String note) {
    return '$note · figures are simulated';
  }

  @override
  String teamProjectElapsedSeconds(int count) {
    return '$count s';
  }

  @override
  String teamProjectElapsedMinutes(int count) {
    return '$count min';
  }

  @override
  String teamProjectElapsedHours(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String teamProjectCostToday(String amount) {
    return '$amount today';
  }

  @override
  String teamProjectCostTodayOf(String amount, String limit) {
    return '$amount of $limit today';
  }

  @override
  String teamProjectCostTotal(String amount) {
    return '$amount total';
  }

  @override
  String teamProjectCostTotalOf(String amount, String limit) {
    return '$amount of $limit total';
  }

  @override
  String get teamProjectCostNoLimit => 'No limit set';

  @override
  String get teamProjectCostNotReported => 'Not reported yet';

  @override
  String teamProjectBoardSummary(int tasks, int milestones) {
    String _temp0 = intl.Intl.pluralLogic(
      tasks,
      locale: localeName,
      other: '$tasks tasks',
      one: '1 task',
    );
    String _temp1 = intl.Intl.pluralLogic(
      milestones,
      locale: localeName,
      other: '$milestones milestones',
      one: '1 milestone',
    );
    return '$_temp0 across $_temp1';
  }

  @override
  String get teamProjectBoardEmpty => 'No tasks yet';

  @override
  String teamProjectTimelineSummary(int count, String age) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count events',
      one: '1 event',
    );
    return '$_temp0 · latest $age';
  }

  @override
  String get teamProjectTimelineEmpty => 'Nothing has happened yet';

  @override
  String teamProjectServersSummary(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servers',
      one: '1 server',
    );
    return '$_temp0';
  }

  @override
  String teamProjectSettingsSummaryParallel(int count) {
    return 'Parallel · up to $count lanes';
  }

  @override
  String get teamProjectSettingsSummarySingle => 'Single lane';

  @override
  String get teamProjectMenu => 'Project menu';

  @override
  String get teamProjectTaskMenu => 'Task menu';

  @override
  String teamProjectDecisionBy(String who, String age) {
    return '$who · $age';
  }

  @override
  String get teamProjectYou => 'You';

  @override
  String teamProjectPlanFor(int number) {
    return 'Plan for milestone $number · waiting for you';
  }

  @override
  String get teamProjectPlanForProject => 'Plan · waiting for you';

  @override
  String teamProjectPlanSummary(int phases, int tasks, int repos) {
    String _temp0 = intl.Intl.pluralLogic(
      phases,
      locale: localeName,
      other: '$phases phases',
      one: '1 phase',
    );
    String _temp1 = intl.Intl.pluralLogic(
      tasks,
      locale: localeName,
      other: '$tasks tasks',
      one: '1 task',
    );
    String _temp2 = intl.Intl.pluralLogic(
      repos,
      locale: localeName,
      other: '$repos repos',
      one: '1 repo',
    );
    return '$_temp0 · $_temp1 · $_temp2';
  }

  @override
  String teamProjectPlanPhase(int number, String title) {
    return 'Phase $number · $title';
  }

  @override
  String get teamProjectPlanReviewPoint => 'Review gate · risky';

  @override
  String teamProjectPlanRepo(String name) {
    return '$name repo';
  }

  @override
  String teamProjectPlanAfter(int number) {
    return 'after $number';
  }

  @override
  String teamProjectPlanCriteria(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count criteria',
      one: '1 criterion',
    );
    return '$_temp0';
  }

  @override
  String teamProjectPlanWho(String role, String server) {
    return '$role · $server';
  }

  @override
  String teamProjectPlanMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '… $count more tasks',
      one: '… 1 more task',
    );
    return '$_temp0';
  }

  @override
  String get teamProjectPlanEdit => 'Edit plan';

  @override
  String get teamProjectPlanAsk => 'Ask to change';

  @override
  String get teamProjectPlanNotYet => 'Not yet';

  @override
  String teamProjectPlanServerTitle(String task) {
    return 'Run \"$task\" on';
  }

  @override
  String get teamProjectPlanServerFixed =>
      'Each task runs on the computer it was planned for. This team cannot move tasks to another computer yet.';

  @override
  String teamProjectMergeEffectDev(String repo, int tasks) {
    String _temp0 = intl.Intl.pluralLogic(
      tasks,
      locale: localeName,
      other: '$tasks checked tasks',
      one: '1 checked task',
    );
    return '$_temp0 from $repo will be merged into dev.';
  }

  @override
  String get teamProjectMergeEffectMain => 'Main is not touched.';

  @override
  String teamProjectReceiptMerged(String repo) {
    return 'Merged into dev · $repo';
  }

  @override
  String teamProjectReceiptPromoted(String repo) {
    return 'Promoted to main · $repo';
  }

  @override
  String teamProjectTimelineRepeated(String text, int count) {
    return '$text · $count times';
  }

  @override
  String get teamProjectPromoteTitle => 'Promote dev → main';

  @override
  String teamProjectPromoteStatus(String repo) {
    return '$repo repo · main is protected. Only you can promote.';
  }

  @override
  String teamProjectPromoteMilestone(int number, String title) {
    return 'Milestone $number · $title';
  }

  @override
  String teamProjectPromoteMerged(int done, int total) {
    return '$done of $total tasks merged';
  }

  @override
  String teamProjectPromoteDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get teamProjectPromoteChecks => 'Checks after merge';

  @override
  String get teamProjectPromoteChecksPassed =>
      'Every check passed after the last merge';

  @override
  String get teamProjectPromoteReview => 'Review';

  @override
  String teamProjectPromoteAccepted(int number) {
    return 'You accepted milestone $number';
  }

  @override
  String get teamProjectPromoteNoReview => 'No review was needed for this work';

  @override
  String teamProjectPromoteChanges(int commits) {
    String _temp0 = intl.Intl.pluralLogic(
      commits,
      locale: localeName,
      other: '$commits commits',
      one: '1 commit',
    );
    return '$_temp0';
  }

  @override
  String teamProjectPromoteFiles(int files) {
    String _temp0 = intl.Intl.pluralLogic(
      files,
      locale: localeName,
      other: '$files files',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String get teamProjectPromoteSeeChanges => 'See changes';

  @override
  String get teamProjectPromoteNotYet => 'Not yet';

  @override
  String teamProjectFindingsTitle(String role, String summary) {
    return 'Checked by $role · $summary';
  }

  @override
  String get teamProjectEditorGoalLabel => 'What should the team achieve?';

  @override
  String get teamProjectEditorWhereRuns => 'Where it runs';

  @override
  String get teamProjectEditorMoreOptions => 'Optional details';

  @override
  String get teamProjectEditorNameHelp =>
      'Optional. Leave empty to use the start of the goal.';

  @override
  String get teamProjectEditorBudgetHelp =>
      'The team pauses when the day or the whole project reaches its limit.';

  @override
  String teamProjectFindingsCritical(int count) {
    return '$count critical';
  }

  @override
  String teamProjectFindingsMajor(int count) {
    return '$count major';
  }

  @override
  String teamProjectFindingsMinor(int count) {
    return '$count minor';
  }

  @override
  String get phoneTeamSetupTitle => 'Turn on AI Team';

  @override
  String get phoneTeamStepReply => 'Let your current reply finish';

  @override
  String get phoneTeamReplyWaiting => 'Finishing your current reply…';

  @override
  String get phoneTeamStepStop => 'Stop OpenCode and close terminals';

  @override
  String get phoneTeamStepCheck => 'Checking this phone is safe for the team';

  @override
  String get phoneTeamStepServer => 'Start OpenCode again, protected';

  @override
  String get phoneTeamNotNeeded => 'Not needed';

  @override
  String get phoneTeamStopTitle => 'Stop OpenCode briefly?';

  @override
  String get phoneTeamStopBody =>
      'Stops the OpenCode server on this phone for about a minute, then starts it again protected. Open terminals close.';

  @override
  String get phoneTeamStopConfirm => 'Stop and continue';

  @override
  String get phoneTeamStopCancel => 'Not now';

  @override
  String get phoneTeamStopWaiting => 'Waiting for your answer';

  @override
  String get phoneTeamDoneTitle => 'AI Team is ready';

  @override
  String get phoneTeamDoneBody =>
      'Give it a goal and the team plans, builds and checks the work.';

  @override
  String get phoneTeamFailUnsafeTitle => 'The team stays off';

  @override
  String get phoneTeamFailUnsafeBody =>
      'This phone can\'t keep the team\'s copy of your code separate from the agents, so the team stays off.';

  @override
  String get phoneTeamFailEngineTitle => 'AI Team didn\'t start';

  @override
  String get phoneTeamFailEngineBody =>
      'The team\'s engine didn\'t start on this phone.';

  @override
  String get phoneTeamFailStopTitle => 'The server didn\'t stop';

  @override
  String get phoneTeamFailStopBody =>
      'OpenCode or a terminal didn\'t close, so the check can\'t run safely yet.';

  @override
  String get phoneTeamFailServerTitle => 'The server didn\'t return';

  @override
  String get phoneTeamFailServerBody =>
      'This phone passed the check, but OpenCode didn\'t start again. Start again to finish.';

  @override
  String get phoneTeamFailNotReadyTitle => 'Not ready yet';

  @override
  String get phoneTeamFailNotReadyBody =>
      'OpenCode is back, but the team can\'t start work yet.';

  @override
  String get phoneTeamFailDeclinedTitle => 'Nothing changed';

  @override
  String get phoneTeamFailDeclinedBody =>
      'OpenCode stays as it is, so the team stays off. Start again when you\'re ready to restart it.';

  @override
  String get phoneTeamFailNoServerTitle => 'Add a server first';

  @override
  String get phoneTeamFailNoServerBody =>
      'The team works with the OpenCode on this phone, and there isn\'t one yet.';

  @override
  String get phoneTeamReasonNotPackaged =>
      'This copy of the app doesn\'t include the team\'s safety tools.';

  @override
  String get phoneTeamStateBackOn => 'OpenCode is back on.';

  @override
  String get phoneTeamStateStillOff =>
      'OpenCode is still off. Start again, or restart it from This phone.';

  @override
  String get phoneTeamStateNotStopped => 'OpenCode was not stopped.';

  @override
  String get phoneTeamStateTerminalsClosed => 'Open terminals were closed.';

  @override
  String get phoneTeamWhyUnsafe =>
      'The check that keeps the team\'s copy of your code separate from the agents did not pass.';

  @override
  String get phoneTeamWhyEngine =>
      'The team\'s engine stopped or did not answer while it was starting.';

  @override
  String get phoneTeamWhyStop =>
      'OpenCode or a terminal did not close when asked.';

  @override
  String get phoneTeamWhyServer =>
      'OpenCode did not answer after it was started again.';

  @override
  String get phoneTeamWhyNotReady =>
      'The team\'s engine answered but said it cannot run work yet.';

  @override
  String get phoneTeamDetails => 'Details';

  @override
  String get phoneTeamOffTitle => 'AI Team is off';

  @override
  String get phoneTeamOffBody =>
      'It needs a quick safety check, for example after an app update.';

  @override
  String get phoneTeamBlocked =>
      'The team can\'t start work until this phone is checked.';

  @override
  String get phoneTeamStripChecking => 'Checking AI Team on this phone';

  @override
  String get phoneTeamStripWaiting => 'AI Team needs to restart OpenCode';

  @override
  String get phoneTeamStripReview => 'Open the check to choose when';

  @override
  String get phoneTeamStripFailed => 'AI Team couldn\'t turn on';

  @override
  String phoneTeamStripStep(int step, int total) {
    return 'Step $step of $total';
  }

  @override
  String get phoneTeamBlockedTitle => 'Check this phone first?';

  @override
  String get teamMigrationTitle => 'AI Team has changed';

  @override
  String get teamMigrationBody =>
      'The new AI Team plans whole projects and runs them on this phone. Your old team keeps taking quick tasks but cannot plan projects, and switching asks before it stops anything.';

  @override
  String get teamMigrationSwitch => 'Switch to the new AI Team on this phone';

  @override
  String get teamMigrationKeep => 'Keep the old team for now';

  @override
  String get teamMigrationMenu => 'What\'s new in AI Team';

  @override
  String get teamProjectPages => 'Project pages';

  @override
  String get teamProjectMergeReady => 'Ready to merge';

  @override
  String get teamProjectMergeChecking => 'Waiting for its checks';

  @override
  String get teamRefusalUnsupportedCommand =>
      'This version of the team can\'t do that yet.';

  @override
  String get teamRefusalUnsupportedCommandNext =>
      'Update the app, then try again.';

  @override
  String get teamRefusalBoundaryUnverified =>
      'The team can\'t work until this phone\'s protection has been checked.';

  @override
  String get teamRefusalBoundaryUnverifiedNext =>
      'Open AI Team and turn it on again.';

  @override
  String get teamRefusalProtocolUnverified =>
      'The team is waiting for OpenCode to restart.';

  @override
  String get teamRefusalProtocolUnverifiedNext => 'Try again in a minute.';

  @override
  String get teamRefusalEngineUnavailable =>
      'The team isn\'t answering right now.';

  @override
  String get teamRefusalEngineUnavailableNext => 'Try again in a moment.';

  @override
  String get teamRefusalTransportUncertain =>
      'The team may not have received that.';

  @override
  String get teamRefusalTransportUncertainNext =>
      'Check the project list before you try again.';

  @override
  String get teamRefusalBusy => 'Another change is still being saved.';

  @override
  String get teamRefusalBusyNext => 'Try again in a moment.';

  @override
  String get teamRefusalSaveFailed =>
      'The change couldn\'t be saved on this phone.';

  @override
  String get teamRefusalSaveFailedNext =>
      'Your edits are still here. Try again.';

  @override
  String get teamRefusalReadOnly => 'The team is read-only right now.';

  @override
  String get teamRefusalReadOnlyNext =>
      'Turn on AI Team on this phone to make changes.';

  @override
  String get teamRefusalClosed => 'The team has been closed.';

  @override
  String get teamRefusalClosedNext => 'Open AI Team again to continue.';

  @override
  String get teamRefusalCommandRefused => 'The team turned this request down.';

  @override
  String get teamRefusalCommandRefusedNext =>
      'Check the goal and the repository folder, then try again.';

  @override
  String get teamRefusalImportFailed =>
      'The team couldn\'t read the repository folder.';

  @override
  String get teamRefusalImportFailedNext =>
      'Check the folder name, then try again.';

  @override
  String get teamRefusalPayloadInvalid =>
      'The team answered in a way this app doesn\'t understand.';

  @override
  String get teamRefusalPayloadInvalidNext => 'Update the app, then try again.';

  @override
  String get teamRefusalSchemaUnsupported =>
      'The team and this app are on different versions.';

  @override
  String get teamRefusalSchemaUnsupportedNext =>
      'Update the app, then try again.';

  @override
  String get teamRefusalEngineClosed => 'The team is shutting down.';

  @override
  String get teamRefusalEngineClosedNext =>
      'Turn on AI Team again to continue.';

  @override
  String get teamRefusalSessionFailed =>
      'The planner stopped before it answered.';

  @override
  String get teamRefusalSessionFailedNext =>
      'Open the Planner model choice and check it, then ask again.';

  @override
  String get teamRefusalModelNotConfigured =>
      'The model for this job didn\'t accept the request.';

  @override
  String get teamRefusalModelNotConfiguredNext =>
      'It may need a sign-in, or it may not be free to use here. Open the Planner model choice, pick another model, then ask again.';

  @override
  String get teamRefusalModelUnavailable =>
      'The chosen model isn\'t available.';

  @override
  String get teamRefusalModelUnavailableNext =>
      'Pick another model in Team settings › Model.';

  @override
  String get teamRefusalAuthFailed =>
      'The model\'s provider didn\'t accept the sign-in.';

  @override
  String get teamRefusalAuthFailedNext =>
      'Check the provider\'s key, then approve the spec again.';

  @override
  String get teamRefusalCloneFailed =>
      'The team couldn\'t copy the project to work on it.';

  @override
  String get teamRefusalCloneFailedNext =>
      'Check the project\'s repository, then approve the spec again.';

  @override
  String get teamRefusalSessionUncertain =>
      'The team isn\'t sure how far its last run got.';

  @override
  String get teamRefusalSessionUncertainNext =>
      'Resume if you can, or approve the spec again.';

  @override
  String get teamRefusalPlanInvalid =>
      'The plan that came back couldn\'t be used.';

  @override
  String get teamRefusalPlanInvalidNext =>
      'Approve the spec again and the team will plan again.';

  @override
  String get teamRefusalNeedsAnswer => 'The planner has a question for you.';

  @override
  String get teamRefusalNeedsAnswerNext => 'Open the spec and answer it.';

  @override
  String get teamRefusalRecoveryReview =>
      'The work stopped part way and needs a look.';

  @override
  String get teamRefusalRecoveryReviewNext =>
      'Check the project, then approve the spec again.';

  @override
  String get teamRefusalAppStopped =>
      'The app closed before the team finished.';

  @override
  String get teamRefusalAppStoppedNext => 'Resume to check where it got to.';

  @override
  String get teamRefusalChatBusy =>
      'The team is waiting for your conversation to finish replying.';

  @override
  String get teamRefusalChatBusyNext => 'It carries on by itself afterwards.';

  @override
  String get teamRefusalBudgetReached =>
      'The project reached its spending limit.';

  @override
  String get teamRefusalBudgetReachedNext =>
      'Raise the limit in the project\'s settings to go on.';

  @override
  String get teamRefusalModelNotConfiguredAction => 'Choose the Planner model';

  @override
  String get teamProjectPlanFailedTitle => 'The plan wasn\'t made';

  @override
  String get teamProjectApproveAgain => 'Approve the spec again';

  @override
  String get teamProjectApproveAgainNote => 'Approve the spec again to retry.';

  @override
  String get teamProjectTaskWorkLive => 'Work so far';

  @override
  String get teamProjectTaskWorkLog => 'Work log';

  @override
  String get teamRefusalDidPlan => 'start planning';

  @override
  String get teamRefusalDidQuick => 'start that task';

  @override
  String get teamRefusalDidApprove => 'start the work';

  @override
  String get teamRefusalDidSpec => 'approve the spec';

  @override
  String get teamRefusalDidPromote => 'promote the work';

  @override
  String get teamRefusalDidStop => 'stop the project';

  @override
  String get teamRefusalDidPause => 'pause the project';

  @override
  String get teamRefusalDidResume => 'resume the project';

  @override
  String get teamRefusalDidSave => 'save your changes';

  @override
  String teamRefusalUnknown(String action) {
    return 'The team couldn\'t $action.';
  }

  @override
  String get teamRefusalUnknownNext =>
      'Try again. If it keeps happening, open Details for the code.';

  @override
  String get teamRefusalCode => 'Code';

  @override
  String get phoneTeamProtectedProot =>
      'Protected by this phone\'s Linux sandbox';

  @override
  String get phoneTeamProtectedLandlock =>
      'Protected by Android\'s file protection';

  @override
  String get teamRefusalRepositoryEmpty =>
      'This repository has no commits yet.';

  @override
  String get teamRefusalRepositoryEmptyNext =>
      'Make a first commit in it, then start planning again.';

  @override
  String get teamRefusalRepositoryLink =>
      'The team couldn\'t safely copy this repository.';

  @override
  String get teamRefusalRepositoryLinkNext =>
      'Try again. If it keeps happening, report the problem.';

  @override
  String get teamRefusalRepositoryDamaged =>
      'The repository copy didn\'t match the original.';

  @override
  String get teamRefusalRepositoryDamagedNext =>
      'Try again. If it keeps happening, report the problem.';

  @override
  String get teamRefusalPlanTaskName => 'A task in the plan has no name.';

  @override
  String get teamRefusalPlanTaskNameNext =>
      'Give every task a name, then approve again.';

  @override
  String get teamRefusalPlanPhase => 'A phase in the plan isn\'t complete.';

  @override
  String get teamRefusalPlanPhaseNext =>
      'Check each phase has tasks and criteria, then approve again.';

  @override
  String get teamServerPhoneFailed =>
      'AI Team on this phone isn\'t answering, so its work can\'t be reached.';

  @override
  String get teamServerPhoneNotReady =>
      'AI Team on this phone isn\'t ready: its safety check hasn\'t passed.';

  @override
  String get teamServerPhoneNoAnswer =>
      'OpenCode on this phone didn\'t answer the last check.';

  @override
  String get phoneTeamOffReview => 'Review and choose when';

  @override
  String teamProjectInterruptedRow(String name) {
    return '$name: work was interrupted, tap to resume';
  }

  @override
  String get teamProjectResumeUnavailable =>
      'This version of AI Team can\'t resume interrupted work yet. You can stop the project and start it again.';

  @override
  String get teamProjectInterrupted => 'Interrupted, ready to resume';

  @override
  String get teamProjectEditorContextFilesHelpReal =>
      'Optional. One path per line. The team reads these before it plans.';

  @override
  String get addServerCleartextWarning =>
      '此私有网络或 Tailscale 地址使用明文 HTTP。你的密码和验证码在 HTTP 层以未加密方式传输。请仅在可信的私有网络或通过 Tailscale 使用；在公共 Wi-Fi 上有风险。';

  @override
  String get addServerCleartextConfirm => '仍然使用';

  @override
  String get addServerCleartextConfirmed =>
      '已为此地址启用明文 HTTP。此网络中的任何人都可能读取你发送的内容。';

  @override
  String get storageAccessTitle => 'Allow access to files?';

  @override
  String get storageAccessBody =>
      'This folder is in your phone’s shared storage. Android hides the files in it from apps unless you allow All files access.';

  @override
  String get storageAccessWhyScope =>
      'The app reads and changes files only in folders you open as projects.';

  @override
  String get storageAccessWhyAgent =>
      'The agent needs it to work in your folder in place. Without it you would see only hidden items such as .git.';

  @override
  String get storageAccessWhyOff =>
      'You can turn it off any time in Android Settings, under All files access.';

  @override
  String get storageAccessAllow => '允许访问文件';

  @override
  String get storageAccessNotNow => 'Not now';

  @override
  String get storageAccessUseAppSpace => 'Use the app’s project space';

  @override
  String get storageAccessRefusedTitle => 'Folder not opened';

  @override
  String get storageAccessRefusedBody =>
      'Without access to files this folder’s files cannot be shown, so it was not opened. Allow access, or choose a folder in the app’s project space.';

  @override
  String get storageTermuxTitle => 'Allow Termux storage?';

  @override
  String get storageTermuxBody =>
      'Your server runs in Termux, and Termux cannot read your phone’s shared storage yet. Without that, this folder shows only hidden items such as .git.';

  @override
  String get storageTermuxAllow => '打开 Termux';

  @override
  String get storageTermuxStillTitle => 'Allow storage in Termux';

  @override
  String get storageTermuxStillBody =>
      'In Termux, allow storage when Android asks (the command is termux-setup-storage), then open the folder again.';

  @override
  String get filesAccessNeededTitle => '文件已隐藏';

  @override
  String get filesAccessNeededBody => '此文件夹位于手机的共享存储中，应用暂时无法读取其中大部分文件。只显示隐藏项。';

  @override
  String get filesAccessNeededTermuxBody =>
      '此文件夹位于手机的共享存储中，Termux 暂时无法读取其中大部分文件。只显示隐藏项。';

  @override
  String get storageRestartTitle => 'Restart to open folder?';

  @override
  String get storageRestartBody =>
      'OpenCode on this phone has to restart before it can see this folder. This takes about 30 seconds.';

  @override
  String get storageRestartPause =>
      'Running replies and AI Team work pause and carry on afterwards.';

  @override
  String get storageRestartBusy =>
      'A reply or AI Team task is running right now. It will pause while OpenCode restarts.';

  @override
  String get storageRestartConfirm => 'Restart and open';

  @override
  String get storageRestartFailedTitle => 'Restart did not finish';

  @override
  String get storageRestartFailedBody =>
      'The folder was not opened. Try again, or start OpenCode from This phone.';

  @override
  String get kitQueuedChecking => '正在确认你的消息是否已送达…';

  @override
  String get kitQueuedUncertain => '我们无法确认你的消息是否已送达。';

  @override
  String kitQueuedLastChecked(String time) {
    return '上次检查：$time。';
  }

  @override
  String get kitQueuedStorageFull => '此手机目前无法安全地记录发送，因此你的消息没有发出。它仍保留在这里。';

  @override
  String get queuedReceiptConfirmed => 'Message received.';

  @override
  String get queuedReceiptStillUncertain =>
      'Still can\'t confirm it arrived. Nothing was sent again.';

  @override
  String get queuedReceiptStorageProblem =>
      'This phone can\'t safely record or check sends right now. Free up some storage and try again.';

  @override
  String get queuedReceiptDetailSentAt => '发送时间';

  @override
  String get queuedReceiptDetailCommand => '命令 ID';

  @override
  String get queuedReceiptDetailReceipt => '回执 ID';

  @override
  String get queuedReceiptDetailNote => '连接在我们确认收到之前已中断。';

  @override
  String get kitToolRetry => '重试';

  @override
  String get folderBrowserPlaceLabel => '位置';

  @override
  String get folderBrowserPlaceProjects => '项目空间';

  @override
  String get folderBrowserPlacePhone => '此手机';

  @override
  String get folderBrowserInternalStorage => '内部存储';

  @override
  String get folderBrowserOpenedBefore => '之前打开过';

  @override
  String get folderBrowserShowHidden => '显示隐藏文件夹';

  @override
  String get folderBrowserHintEmpty => '空';

  @override
  String folderBrowserHintMore(String names, int count) {
    return '$names，另有 $count 个';
  }

  @override
  String get folderBrowserEmptyPhoneBody => '打开它，或返回上一级。';

  @override
  String get remoteFolderRecent => 'Recent folders';

  @override
  String get remoteFolderProjects => 'Projects on this server';

  @override
  String folderBrowserNewProjectIn(String name) {
    return 'In $name';
  }

  @override
  String folderBrowserNewProjectCreates(String path) {
    return '将创建 $path';
  }

  @override
  String get folderBrowserCreateAndOpen => '创建并打开';

  @override
  String get folderBrowserFoldersLabel => 'Folders';

  @override
  String get folderBrowserPhoneRefused => '手机存储已关闭。请允许访问以在此查看。';

  @override
  String get folderBrowserFindProjects => 'Find projects';

  @override
  String get phoneScanTitle => '此手机上的项目';

  @override
  String get phoneScanLooking => 'Looking…';

  @override
  String phoneScanFound(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count found',
      one: '1 found',
    );
    return '$_temp0';
  }

  @override
  String phoneScanStopped(int seconds, int count) {
    return '$seconds 秒后已停止 · 找到 $count 个';
  }

  @override
  String phoneScanFirstShown(int count) {
    return '显示前 $count 个';
  }

  @override
  String get phoneScanLookDeeper => '深入查找';

  @override
  String get phoneScanEmptyTitle => '未找到项目';

  @override
  String get phoneScanEmptyBody => '浏览文件夹，或新建项目。';

  @override
  String get phoneScanGit => 'Git';

  @override
  String get phoneScanKindDart => 'Dart';

  @override
  String get phoneScanKindNode => 'Node';

  @override
  String get phoneScanKindPython => 'Python';

  @override
  String get phoneScanKindRust => 'Rust';

  @override
  String get phoneScanKindGo => 'Go';

  @override
  String get phoneScanKindJava => 'Java';

  @override
  String get phoneScanKindRuby => 'Ruby';

  @override
  String get phoneScanKindPhp => 'PHP';

  @override
  String get phoneScanKindDotnet => '.NET';

  @override
  String get phoneScanKindCpp => 'C/C++';

  @override
  String get phoneScanKindGit => 'Folder';

  @override
  String get openProjectTitle => '打开项目';

  @override
  String get openProjectSearchPhone => '在此手机上搜索';

  @override
  String get openProjectChooseFolder => '选择文件夹';

  @override
  String get openProjectChangeFolder => '更改文件夹';

  @override
  String openProjectUseFolder(String name) {
    return '使用 $name';
  }

  @override
  String get phoneScanSearching => '正在搜索此手机';

  @override
  String phoneScanChecked(int folders, int found) {
    String _temp0 = intl.Intl.pluralLogic(
      folders,
      locale: localeName,
      other: '$folders 个文件夹',
      one: '1 个文件夹',
    );
    return '已检查 $_temp0 · 找到 $found 个';
  }

  @override
  String phoneScanDoneIn(int count, String time) {
    return '$time 内找到 $count 个';
  }

  @override
  String get phoneScanStop => '停止';

  @override
  String get openProjectChange => '更改';

  @override
  String openProjectIn(String folder) {
    return '在 $folder 中';
  }

  @override
  String get effectsGlowStyle => '样式';

  @override
  String get effectsGlowStyleClassic => '经典';

  @override
  String get effectsGlowStyleSoft => '柔和光环';

  @override
  String get effectsGlowColours => '颜色';

  @override
  String get effectsGlowColoursOne => '单色';

  @override
  String get effectsGlowColoursTwo => '双色';

  @override
  String get effectsGlowSpeed => '速度';

  @override
  String get effectsGlowSpeedSlow => '慢';

  @override
  String get effectsGlowSpeedNormal => '正常';

  @override
  String get effectsGlowSpeedFast => '快';

  @override
  String get approvalModeAskDetail => '每个请求都由你来回应。';

  @override
  String get approvalModeConfirmEverythingBody =>
      '此服务器上的智能体将在所有对话中不经询问地运行命令并修改文件。';

  @override
  String get approvalsSheetSubagents => '子智能体沿用此设置';

  @override
  String approvalsSheetSetByParent(String name) {
    return '由 $name 设定';
  }

  @override
  String get approvalsSheetSetByServer => '由此服务器设定';

  @override
  String get approvalsSheetFootnote => '应用断开连接时会停止。服务器的拒绝规则仍然有效。';

  @override
  String get approvalsSheetHistory => '已自动批准';

  @override
  String get chatsHomeTitle => '对话';

  @override
  String get chatsHomeAllProjects => '所有项目';

  @override
  String get chatsHomeNeedsYou => '需要你处理';

  @override
  String chatsHomeNeedsYouCount(int count) {
    return '需要你处理 · $count';
  }

  @override
  String get chatsHomeRunning => '运行中';

  @override
  String get chatsHomeRowWorking => '进行中';

  @override
  String get chatsHomeDone => '已完成';

  @override
  String get chatsHomeFailed => '已失败';

  @override
  String get chatsHomeToday => '今天';

  @override
  String get chatsHomeEarlier => '更早';

  @override
  String chatsHomeOnlyProject(String project) {
    return '仅显示 $project 中的对话。此服务器无法列出所有项目。';
  }

  @override
  String get chatsHomeIncomplete => '部分对话无法加载';

  @override
  String shellServerPlusOthers(String name, int count) {
    return '$name +$count';
  }

  @override
  String get chatSubagentReadOnly => '这个子智能体只回应它的主对话，请在那里发送消息。';

  @override
  String get chatsHomeOpening => '正在打开…';

  @override
  String chatsHomeUnreachable(String servers) {
    return '$servers 没有响应，未显示它的对话。';
  }

  @override
  String get chatsSourcesUnreachable => '没有响应';

  @override
  String get chatsSourcesAll => '所有连接';

  @override
  String chatsSourcesSome(int shown, int total) {
    return '$total 个连接中的 $shown 个';
  }

  @override
  String get chatsSourcesSheetTitle => '此列表中的连接';

  @override
  String get chatsSourcesMain => '新对话从这里开始';

  @override
  String get chatsSourcesOnPhone => '在这部手机上';

  @override
  String get chatsSourcesElsewhere => '在另一台电脑上';

  @override
  String get chatsSourcesAgents => '这部手机上的智能体';

  @override
  String get chatsSourcesAlways => '始终显示';

  @override
  String chatsHomeStillLoading(String agents) {
    return '正在加载 $agents 的对话…';
  }

  @override
  String get chatsHomeEmptyTitle => '还没有对话';

  @override
  String get chatsHomeEmptyBody => '开始一次对话后，它会显示在这里。';

  @override
  String get chatsHomeStartChat => '开始对话';

  @override
  String get chatsHomeNoMatchTitle => '没有匹配的对话';

  @override
  String get chatsHomeNoMatchBody => '没有符合所选筛选条件的内容。';

  @override
  String get chatsHomeClearFilters => '清除筛选';

  @override
  String chatsHomeProjectEmptyTitle(String project) {
    return '$project 中没有对话';
  }

  @override
  String chatsHomeStartChatIn(String project) {
    return '在 $project 中开始对话';
  }

  @override
  String get chatsHomeNewChat => '新对话';

  @override
  String get chatsHomeOpenFailed => '无法打开这个对话。下拉可刷新列表。';

  @override
  String get chatsFilterSheetTitle => '显示以下来源的对话';

  @override
  String chatsFilterChatCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个对话',
    );
    return '$_temp0';
  }

  @override
  String chatsFilterRunningCount(int running) {
    return '$running 个运行中';
  }

  @override
  String get chatsFilterNeedsYouWord => '需要你处理';

  @override
  String get chatsFilterOpenProject => '打开项目…';

  @override
  String get chatsNewSeparateCopy => '在单独的副本中';

  @override
  String get chatsNewPrompt => '我们要做什么？';

  @override
  String get chatsNewChooseProject => '选择项目';

  @override
  String get chatsNewNeedProject => '请选择一个项目来开始对话。';

  @override
  String get chatsNewFailed => '对话没有开始。你的消息还在这里。';

  @override
  String get chatsNewFailedTitle => 'The conversation didn\'t start';

  @override
  String get chatsNewFailedReportHint =>
      'Report a problem includes these details.';

  @override
  String get shellTabChats => '对话';

  @override
  String get shellTabFiles => '文件';

  @override
  String get discoverChatsAliases =>
      'chats conversations sessions work home recent pinned new conversation inbox activity needs you approvals permissions questions forms waiting running finished';

  @override
  String chatProjectChipSemantics(String name) {
    return '项目 $name。打开包含其文件、终端和更改的菜单。';
  }

  @override
  String chatProjectServerChipSemantics(String name, String server) {
    return '$server 上的项目 $name。打开包含其文件、终端和更改的菜单。';
  }

  @override
  String get chatProjectMenuLabel => '项目工具';

  @override
  String get agentsChooseTitle => '选择智能体';

  @override
  String agentsChipSemantics(String agent) {
    return 'Agent $agent. Change agent';
  }

  @override
  String get agentsStateReady => '就绪';

  @override
  String get agentsStateCantReopen => '无法重新打开旧对话';

  @override
  String agentsStateNotInstalled(String size) {
    return '未安装 · $size';
  }

  @override
  String get agentsStateNotInstalledNoSize => '未安装';

  @override
  String get agentsStateSignInNeeded => '需要登录';

  @override
  String get agentsStateChecking => '正在检查登录状态…';

  @override
  String get agentsStatePhoneCheck => '需要检查手机';

  @override
  String get agentsStateStopped => '已在后台停止';

  @override
  String get agentsStateLimit => '已达到套餐上限';

  @override
  String get agentsStateUnavailable => '这部手机上暂不可用';

  @override
  String agentsSetupTitle(String agent, String size) {
    return '设置 $agent · $size';
  }

  @override
  String agentsSetupTitleNoSize(String agent) {
    return '设置 $agent';
  }

  @override
  String agentsSetupBody(String agent) {
    return '$agent 在这部手机上运行。安装会下载该智能体及其所需内容。';
  }

  @override
  String agentsSetupSizeNote(String size) {
    return '$size 是智能体本身的大小。共享组件可能会额外占用空间。';
  }

  @override
  String agentsInstallAction(String agent) {
    return '安装 $agent';
  }

  @override
  String get agentsCancelSetup => '取消设置';

  @override
  String agentsInstalling(String agent) {
    return '正在安装 $agent…';
  }

  @override
  String get agentsPreparing => 'Preparing the agent connection…';

  @override
  String get agentsSetupInterrupted => '设置在完成前中断。请重新安装以继续。';

  @override
  String get agentsSetupFailed => '设置未完成。请重新安装再试一次。';

  @override
  String get agentsCheckTitle => '检查此手机';

  @override
  String agentsCheckRunning(String agent) {
    return '正在检查 $agent…';
  }

  @override
  String agentsCheckPassed(String agent) {
    return '$agent 已在此手机上就绪。';
  }

  @override
  String agentsCheckFailed(String agent) {
    return '$agent 未通过检查。';
  }

  @override
  String agentsCheckAction(String agent) {
    return '检查 $agent';
  }

  @override
  String get agentsStepInstall => '已安装';

  @override
  String get agentsStepVersion => '版本';

  @override
  String get agentsStepConnection => '连接';

  @override
  String get agentsStepReady => '就绪';

  @override
  String get agentsFailUnavailable => '此手机暂时还不能运行该智能体。';

  @override
  String agentsResumeFailed(String agent) {
    return '$agent didn\'t start again. Tap Resume to try once more. If it still won\'t start, run its phone check.';
  }

  @override
  String get agentsFailStorage => '无法保存此设置。请释放一些空间后重新运行。';

  @override
  String get agentsFailInstall => '智能体未能安装。请重新安装。';

  @override
  String get agentsFailInterrupted => '设置在完成前中断。请重新安装。';

  @override
  String get agentsFailVersion => '已安装的智能体未通过版本检查。';

  @override
  String get agentsFailDaemon => '智能体连接未能启动。';

  @override
  String get agentsFailHello => 'Paseo 未确认连接。请重试以重新启动并再次检查。';

  @override
  String get agentsFailArchitecture => '此智能体与本手机的处理器不匹配。';

  @override
  String get agentsFailStale => '此次检查已过期。请重新运行。';

  @override
  String get agentsFailBusy => '另一项设置正在进行。请等待其完成。';

  @override
  String agentsSignInTitle(String agent) {
    return '使用 $agent 登录';
  }

  @override
  String agentsSignInIntro(String agent) {
    return '$agent 通过自带的提示完成登录，使用你自己的 Claude 账号并遵循 Anthropic 的条款。应用不会获取你的登录信息。';
  }

  @override
  String agentsSignInTerminalIntro(String agent) {
    return '$agent 会打开其登录页面。请在那里用你的 Claude 账号登录，然后返回。如果 $agent 要求输入代码，请在页面上复制，然后选择“粘贴”。';
  }

  @override
  String agentsSignInIntroOther(String agent) {
    return '$agent 通过自带的提示完成登录，使用你在其服务商的账号。应用不会获取你的登录信息。';
  }

  @override
  String agentsSignInTerminalIntroOther(String agent) {
    return '$agent 在此通过自带的提示登录。如果它打开页面，请在那里登录后返回。如果要求输入代码或密钥，请选择“粘贴”。';
  }

  @override
  String get agentsSignInAgain => '重新登录';

  @override
  String agentsSignInTerminalNotYet(String agent) {
    return '$agent 尚未登录。准备好后请重新开始登录。';
  }

  @override
  String get agentsSignInStopFailed => '无法停止登录。请保持应用打开并重试。';

  @override
  String get agentsSignInChecking => '正在检查登录状态…';

  @override
  String agentsSignInStart(String agent) {
    return '使用 $agent 登录';
  }

  @override
  String get agentsSignedIn => '已登录';

  @override
  String agentsSignedInBody(String agent) {
    return '$agent 已可开始新的对话。';
  }

  @override
  String agentsSignInDone(String agent) {
    return '使用 $agent';
  }

  @override
  String agentsSignedInAs(String account) {
    return '已登录为 $account';
  }

  @override
  String agentsSignOutAction(String agent) {
    return '退出 $agent 登录';
  }

  @override
  String agentsSignOutTitle(String agent) {
    return '退出 $agent 登录？';
  }

  @override
  String agentsSignOutBody(String agent) {
    return '在你重新登录之前，$agent 无法开始新的对话。';
  }

  @override
  String agentsSignOutKept(String agent) {
    return '你与 $agent 的对话会保留。';
  }

  @override
  String agentsSignOutFailed(String agent) {
    return '无法确认 $agent 已退出登录。请重试。';
  }

  @override
  String agentsRemoveAction(String agent) {
    return '移除 $agent';
  }

  @override
  String agentsRemoveTitle(String agent) {
    return '移除 $agent？';
  }

  @override
  String get agentsRemoveBody => '这会从此手机上移除已安装的智能体。你的账号和对话会保留，之后可以重新安装。';

  @override
  String agentsRemoving(String agent) {
    return '正在移除 $agent…';
  }

  @override
  String agentsRemoved(String agent, String size) {
    return '已移除 $agent。释放了 $size。';
  }

  @override
  String agentsAlreadyRemoved(String agent) {
    return '$agent 已被移除。';
  }

  @override
  String get agentsRemoveUnsupported => '此智能体无法在这里移除。';

  @override
  String get agentsRemoveBusy => '此智能体正在使用。请等其任务完成后重试。';

  @override
  String get agentsRemoveUnconfirmed => '无法确认该智能体已被移除。请检查此手机后重试。';

  @override
  String get agentsDone => '完成';

  @override
  String get agentsModelTitle => '选择模型';

  @override
  String get agentsModelDefault => '默认模型';

  @override
  String get agentsModelLoading => '正在读取模型…';

  @override
  String get agentsSignInBadCode => '该代码不完整。请从浏览器复制完整的代码（中间有一个 #）并重新粘贴。';

  @override
  String get agentsSignInFailed => '登录未完成。请重新开始。';

  @override
  String agentsSignInRejected(String agent) {
    return '$agent 未接受该代码。它可能已过期或已被使用。请点按“获取新代码”。';
  }

  @override
  String get agentsSignInHostDown => '智能体未在运行。请先恢复它，再登录。';

  @override
  String get agentsSignInUnavailable => '此手机上暂时还不能登录';

  @override
  String agentsSignInLimit(String agent) {
    return '$agent 的套餐额度已用完 · 请稍后再试';
  }

  @override
  String agentsLimitReset(String agent, String time) {
    return '$agent 的套餐额度已用完 · $time重置';
  }

  @override
  String agentsLimitUnknown(String agent) {
    return '已达到 $agent 的套餐上限 · 请稍后再试';
  }

  @override
  String agentsSignedOutLine(String agent) {
    return '$agent 已退出登录';
  }

  @override
  String agentsSignInAction(String agent) {
    return '登录 $agent';
  }

  @override
  String agentsStoppedLine(String agent) {
    return '$agent 已在后台停止';
  }

  @override
  String agentsResumeAction(String agent) {
    return '恢复 $agent';
  }

  @override
  String get agentsResumeNoticeTitle => '要开始新的对话吗？';

  @override
  String agentsResumeNoticeBody(String agent) {
    return '将开始新的对话。$agent 无法重新打开这个对话，它会保持原样。';
  }

  @override
  String get agentsStartNew => '开始新对话';

  @override
  String get agentsCancel => '取消';

  @override
  String get agentsRestartLine => '请关闭并重新打开应用，以完成登录信息的清除。';

  @override
  String get agentsRestartAction => '关闭应用';

  @override
  String get agentsSectionTitle => '智能体';

  @override
  String get agentsRunOnBuiltIn => '智能体在内置服务器上运行';

  @override
  String get agentsSwitchToBuiltIn => '切换到内置服务器';

  @override
  String get agentsChecking => '正在查找这部手机上的智能体…';

  @override
  String get agentsStateNeedsArm => '需要 64 位手机';

  @override
  String get agentsStateNoDownload => '尚无已验证的下载';

  @override
  String get agentsInstallHint => '安装';

  @override
  String get agentsActionFailed => '此手机上操作未成功。打开“详情”查看原因。';

  @override
  String get chatsHomeOtherFolders => '其他文件夹';

  @override
  String get agentsSignInPaste => '粘贴';

  @override
  String get chatRequestAnswerAllowed => '已允许';

  @override
  String get chatRequestAnswerRejected => '已拒绝';

  @override
  String agentCardAsks(String agent) {
    return '$agent asks';
  }

  @override
  String agentCardReports(String agent) {
    return '$agent reports';
  }

  @override
  String agentCardAsksAnnouncement(String agent, String title) {
    return '$agent asks: $title';
  }

  @override
  String get agentCardSend => 'Send';

  @override
  String get agentCardConfirmDefault => 'Yes, go ahead';

  @override
  String get agentCardCancelDefault => 'Cancel';

  @override
  String get agentCardChoosePrompt => 'Choose an option to send.';

  @override
  String get agentCardChooseOneOrMore => 'Choose at least one option to send.';

  @override
  String get agentCardFormFix => 'Fill in the required fields to send.';

  @override
  String get agentCardFieldRequired => 'This field is required.';

  @override
  String get agentCardFieldNumber => 'Enter a number.';

  @override
  String agentCardFieldMin(String min) {
    return 'Enter $min or more.';
  }

  @override
  String agentCardFieldMax(String max) {
    return 'Enter $max or less.';
  }

  @override
  String get agentCardTextNote =>
      'The agent sees this, and it is saved in the conversation.';

  @override
  String get agentCardBusy =>
      'The agent is still working. You can answer when it stops.';

  @override
  String get agentCardSending => 'Sending your answer…';

  @override
  String get agentCardUnknown =>
      'We can\'t tell yet whether this card was answered. It updates when the conversation does.';

  @override
  String get agentCardDeliveryUnknown =>
      'We couldn\'t confirm that your answer arrived. Check the conversation before answering again.';

  @override
  String get agentCardFailed =>
      'Your answer didn\'t go through. Nothing was sent, and you can try again.';

  @override
  String get agentCardSent => 'Sent';

  @override
  String get agentCardShow => 'Show the card';

  @override
  String get agentCardNotAnswered => 'Not answered';

  @override
  String get agentCardUnreadable => 'This card couldn\'t be shown';

  @override
  String get agentCardDetails => 'Details';

  @override
  String get agentCardComposerHint => '或输入你的回答';

  @override
  String get agentCardDangerTitle => 'Send this answer?';

  @override
  String get agentCardDangerBody =>
      'Your answer goes to the agent as a message. The agent decides what to do with it.';

  @override
  String get agentCardPhotoTake => 'Take photo';

  @override
  String get agentCardPhotoChoose => 'Choose photo';

  @override
  String agentCardPhotoRemove(int number) {
    return 'Remove photo $number';
  }

  @override
  String agentCardPhotoName(int number) {
    return 'Photo $number';
  }

  @override
  String agentCardPhotoCount(int count, int max) {
    return '$count of $max';
  }

  @override
  String get agentCardPhotoMax => 'That\'s all the photos this card takes.';

  @override
  String get agentCardPhotoNone => 'Add a photo to send.';

  @override
  String get agentCardPhotoUnavailable =>
      'Photos can\'t be added from here. Type your answer instead.';

  @override
  String get agentCardPhotoTooLarge =>
      'Photos can be up to 10 MB each and 20 MB together.';

  @override
  String get agentCardChartBar => 'Bar chart';

  @override
  String get agentCardChartLine => 'Line chart';

  @override
  String agentCardChartSeries(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count series',
      one: '1 series',
    );
    return '$_temp0';
  }

  @override
  String agentCardChartPoints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count points',
      one: '1 point',
    );
    return '$_temp0';
  }

  @override
  String agentCardChartHighest(String where, String value) {
    return 'highest $where: $value';
  }

  @override
  String get agentCardChartNone => 'no data';

  @override
  String agentCardTableLabel(int columns, int rows) {
    return 'Table, $columns columns, $rows rows';
  }

  @override
  String get agentCardDiffFile => 'File';

  @override
  String get agentCardDiffAdded => 'Added';

  @override
  String get agentCardDiffRemoved => 'Removed';

  @override
  String agentCardDiffMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'and $count more files',
      one: 'and 1 more file',
    );
    return '$_temp0';
  }

  @override
  String agentCardProgressValue(int percent) {
    return '$percent%';
  }

  @override
  String get cardsFromAgentsTitle => 'Cards from agents';

  @override
  String get cardsFromAgentsSupporting =>
      'Agents can show you choices, forms and reports as cards, and ask for a photo.';

  @override
  String get cardsStatusOff => 'Off';

  @override
  String get cardsStatusChecking => 'Checking this phone…';

  @override
  String cardsStatusOn(String agents) {
    return 'On for $agents';
  }

  @override
  String cardsStatusPartial(String agents, String reason) {
    return 'On for $agents. $reason';
  }

  @override
  String cardsStatusRestart(String agents) {
    return 'Restart $agents to finish turning this on.';
  }

  @override
  String cardsStatusUnavailable(String reason) {
    return 'Not available. $reason';
  }

  @override
  String cardsStatusFailed(String reason) {
    return 'Couldn\'t turn this on. $reason';
  }

  @override
  String get cardsSettingFailed => 'Couldn\'t change this setting. Try again.';

  @override
  String get cardsAgentClaude => 'Claude Code';

  @override
  String get cardsProblemUnsupportedHost =>
      'Agents on this server can\'t show cards.';

  @override
  String get cardsProblemRuntimeMissing =>
      'The tools cards need aren\'t on this phone yet.';

  @override
  String get cardsProblemNotQualified =>
      'Cards haven\'t been checked to work with the agents here yet.';

  @override
  String get cardsProblemPermissionDenied =>
      'This phone wouldn\'t allow the change.';

  @override
  String get cardsProblemConflict =>
      'Another setup already uses the same name. Nothing was changed.';

  @override
  String get cardsProblemInstallationFailed => 'Cards couldn\'t be installed.';

  @override
  String get cardsProblemRegistrationFailed =>
      'The agent couldn\'t be told about cards.';

  @override
  String get cardsProblemVerificationFailed =>
      'Cards were installed but didn\'t pass the check.';

  @override
  String get cardsProblemRemovalFailed =>
      'Cards couldn\'t be fully removed. Try again after restarting the agent.';

  @override
  String get cardsProblemStorageFailed =>
      'The phone couldn\'t save the setting.';

  @override
  String get cardsProblemBusy =>
      'The phone is busy with something else. Try again in a moment.';

  @override
  String get agentCardFieldRequiredHint => 'Required';

  @override
  String get agentCardYourAnswer => 'Your answer';

  @override
  String get agentCardDangerConfirm => 'Send answer';

  @override
  String get agentsSignInOpenPage => '打开登录页面';

  @override
  String agentsSignInCopyCode(String code) {
    return '复制代码 $code';
  }

  @override
  String cardsProblemNotQualifiedFor(int count, String agents) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$agents haven\'t been checked to work with cards yet.',
      one: '$agents hasn\'t been checked to work with cards yet.',
    );
    return '$_temp0';
  }

  @override
  String cardsProblemRegistrationFailedFor(String agents) {
    return '$agents couldn\'t be told about cards.';
  }

  @override
  String cardsProblemVerificationFailedFor(String agents) {
    return 'Cards were installed for $agents but didn\'t pass the check.';
  }

  @override
  String cardsProblemRemovalFailedFor(String agents) {
    return 'Cards couldn\'t be fully removed from $agents. Try again after a restart.';
  }

  @override
  String get crashReportsLabel => 'Crash reports';

  @override
  String get crashReportsSwitch => 'Save crash reports on this phone';

  @override
  String get crashReportsSwitchBody =>
      'Kept on this phone. Never sent automatically.';

  @override
  String get crashReportsUnavailable =>
      'Crash reports aren\'t available right now. Restart the app and try again.';

  @override
  String get crashReportsFailed =>
      'Couldn\'t update crash reports. Restart the app and try again.';

  @override
  String get crashReportsNone => 'No crash reports yet';

  @override
  String get crashReportsNoneBody =>
      'One appears here if the app closes or stops responding.';

  @override
  String get crashKindError => 'The app hit an unexpected error';

  @override
  String get crashKindScreen => 'A screen couldn\'t be shown';

  @override
  String get crashKindClosed => 'The app closed unexpectedly';

  @override
  String get crashKindNotResponding => 'The app stopped responding';

  @override
  String get crashReportPreviewBody =>
      'Kept on this phone only. It\'s sent only if you include saved errors in a problem report yourself.';

  @override
  String get crashReportDetailSource => 'Source';

  @override
  String get crashReportDetailCategory => 'Category';

  @override
  String crashReportsDelete(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Delete $count saved crash reports',
      one: 'Delete 1 saved crash report',
    );
    return '$_temp0';
  }

  @override
  String get crashReportsDeleteTitle => 'Delete saved crash reports?';

  @override
  String get crashReportsDeleteBody =>
      'Deletes the saved crash reports. Saving crash reports stays on.';

  @override
  String get crashReportsDeleteConfirm => 'Delete crash reports';

  @override
  String get crashReportsNote =>
      'Only what kind of problem happened and when is kept: no error messages, conversations or passwords. Keeps the latest 20 reports.';

  @override
  String crashReportsOnClears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Turning this on clears the $count saved errors above.',
      one: 'Turning this on clears the saved error above.',
    );
    return '$_temp0';
  }

  @override
  String get crashReportsOffDeletes =>
      'Turning this off deletes the saved crash reports.';

  @override
  String crashReportsOffDeletesAndClears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Turning this off deletes the saved crash reports and clears the $count saved errors above.',
      one:
          'Turning this off deletes the saved crash reports and clears the saved error above.',
    );
    return '$_temp0';
  }

  @override
  String crashReportsOffClears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Turning this off clears the $count saved errors above.',
      one: 'Turning this off clears the saved error above.',
    );
    return '$_temp0';
  }

  @override
  String crashReportsDeleteBodyWithErrors(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Deletes the crash reports and clears the $count saved errors above. Saving crash reports stays on.',
      one:
          'Deletes the crash reports and clears the saved error above. Saving crash reports stays on.',
    );
    return '$_temp0';
  }

  @override
  String get crashReportsClearedToo =>
      'The saved crash reports are deleted too.';

  @override
  String get recentErrorScreen => 'A screen couldn\'t be drawn';

  @override
  String get recentErrorConnection => 'Lost the live connection to the server';

  @override
  String get recentErrorAndroidExit => 'Android closed the app';

  @override
  String get recentErrorTemperature => 'Phone temperature changed';

  @override
  String get recentErrorStartup => 'The app had trouble starting';

  @override
  String get recentErrorReportStore => 'Couldn\'t open saved problem reports';

  @override
  String get recentErrorGeneric => 'Something went wrong';

  @override
  String get chatUiToolBackgroundTaskFinished => 'Background task finished';

  @override
  String get chatUiToolBackgroundTaskFailed => 'Background task failed';

  @override
  String get chatUiToolBackgroundTaskEnded => 'Background task ended';

  @override
  String get chatUiToolBackgroundTaskStopped => 'Background task stopped';

  @override
  String get chatUiToolShowCard => 'Show card';

  @override
  String get chatUiToolShowedCard => '展示了一张卡片';

  @override
  String get chatUiToolCardFailed => '无法显示此卡片';

  @override
  String get chatStallModelSlow => '模型响应比平时慢。请等待，或停止回复后重试。';

  @override
  String get chatStallHelperDown => '此手机上智能体的辅助程序已停止。请停止回复并重试。';

  @override
  String get chatStallConnectionLost => '与智能体的连接已断开。请停止回复，待连接恢复后重试。';

  @override
  String get chatStallConnectionUnchecked =>
      '已有一段时间没有任何返回，且无法检查连接。请等待，或停止回复后重试。';

  @override
  String get kitWorkHideSteps => '隐藏步骤';

  @override
  String connectionSwitchingTo(String target) {
    return '正在切换到 $target…';
  }

  @override
  String get shellServerSwitching => '正在切换…';

  @override
  String get agentsStateNotCertified => '此版本尚未认证';

  @override
  String get agentsChipSignIn => '登录';

  @override
  String get agentsChipResume => '恢复';

  @override
  String get agentsChipCheck => '检查';

  @override
  String agentNamesPair(String first, String second) {
    return '$first and $second';
  }

  @override
  String get diagnosticsExitHistoryTitle => 'Recent app exits';

  @override
  String get diagnosticsExitHistoryNote =>
      'Android records each time the app closes. Nothing here is sent automatically.';

  @override
  String get diagnosticsExitHistoryUnsupported => 'Not available on this phone';

  @override
  String get diagnosticsExitHistoryUnsupportedBody =>
      'Android 11 and later keep this record.';

  @override
  String get diagnosticsExitHistoryFailed =>
      'Couldn\'t read recent app exits. Try again, or reopen the app.';

  @override
  String get diagnosticsExitNormal => 'App closed';

  @override
  String get diagnosticsExitUpdate => 'App updated';

  @override
  String get diagnosticsExitForceStop => 'App stopped';

  @override
  String get diagnosticsExitLowMemory => 'Phone needed memory';

  @override
  String get diagnosticsExitCrash => 'App stopped unexpectedly';

  @override
  String get diagnosticsExitKilled => 'Android ended the app';

  @override
  String get diagnosticsExitReasonCode => 'Reason code';

  @override
  String get diagnosticsExitImportance => 'Importance';

  @override
  String get diagnosticsExitSummary => 'Summary';

  @override
  String get diagnosticsReportOpen => 'Share saved crash reports';

  @override
  String get diagnosticsReportTitle => 'Preview crash report';

  @override
  String get diagnosticsReportPrivacy =>
      'Only error categories and times, no messages or conversations. Nothing leaves this phone until you tap Share report.';

  @override
  String diagnosticsReportSize(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reports · $size',
      one: '1 report · $size',
    );
    return '$_temp0';
  }

  @override
  String get diagnosticsReportShare => 'Share report';

  @override
  String get diagnosticsReportStale =>
      'Saved details changed. Check the new report before sharing.';

  @override
  String get diagnosticsReportShareFailed =>
      'Couldn\'t open sharing. Try again.';

  @override
  String get diagnosticsReportCaptureOff =>
      'Saved crash reports are off. Turn them on to save future app errors.';

  @override
  String get diagnosticsReportEmpty => 'No saved crash reports to share.';

  @override
  String get diagnosticsUnavailable =>
      'These details are unavailable. Reopen the app and try again.';

  @override
  String backgroundPauseTimeLimit(String at) {
    return '后台连接已于 $at 暂停以节省电量。';
  }

  @override
  String get backgroundPauseRestricted => '后台连接已暂停：电池使用受限。';

  @override
  String backgroundPauseUserStopped(String at) {
    return '应用于 $at 关闭时，后台连接已停止。';
  }

  @override
  String backgroundPauseAppUpdated(String at) {
    return '应用于 $at 更新时，后台连接已停止。';
  }

  @override
  String get backgroundPauseInterrupted => '后台连接因未知原因停止。';

  @override
  String get backgroundPauseDeviceRestarted =>
      'Background connection stopped when the phone restarted.';

  @override
  String get backgroundPauseResume => '恢复后台连接';

  @override
  String get backgroundPauseResumeShort => '恢复';

  @override
  String get backgroundPauseResuming => '正在恢复后台连接…';

  @override
  String get backgroundPauseResumeFailed => '无法恢复。请打开“保持运行”设置。';

  @override
  String get backgroundPauseOpenKeepRunning => '打开“保持运行”设置';

  @override
  String get backgroundPauseResumed => '后台连接已恢复。';

  @override
  String get diagnosticsExitNoProblems => 'No unexpected closes recently.';

  @override
  String diagnosticsExitRoutine(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count routine closes (updates, you closed it)',
      one: '1 routine close (updates, you closed it)',
    );
    return '$_temp0';
  }

  @override
  String diagnosticsExitShowAll(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Show all $count',
      one: 'Show all 1',
    );
    return '$_temp0';
  }

  @override
  String get diagnosticsExitUnknown => 'Closed for an unknown reason';

  @override
  String diagnosticsExitToday(String time) {
    return 'Today $time';
  }

  @override
  String diagnosticsExitYesterday(String time) {
    return 'Yesterday $time';
  }

  @override
  String get liveToolCommand => 'Running a command…';

  @override
  String get liveToolEdit => 'Editing files…';

  @override
  String get liveToolRead => 'Reading files…';

  @override
  String get liveToolSearch => 'Searching files…';

  @override
  String get liveToolWeb => 'Browsing the web…';

  @override
  String get liveToolSubagent => 'Running a subagent…';

  @override
  String get liveToolPlan => 'Planning…';

  @override
  String get liveToolWorking => '正在处理…';

  @override
  String get liveToolCard => 'Showing a card…';

  @override
  String get liveToolBackgroundTask => 'Checking a background task…';

  @override
  String liveToolOther(String tool) {
    return 'Running $tool…';
  }

  @override
  String get e7LocaleUiJapanese => '日本語';

  @override
  String get e7LocaleUiChinese => '简体中文';

  @override
  String get e7LocaleUiSpanish => 'Español';

  @override
  String get e7LocaleUiPortuguese => 'Português (Brasil)';

  @override
  String get e7LocaleUiRussian => 'Русский';

  @override
  String connectorCardSuggests(String agent) {
    return '$agent suggests a connector';
  }

  @override
  String connectorCardAnnouncement(String agent, String name) {
    return '$agent suggests a connector: $name';
  }

  @override
  String get connectorCardRuns => 'Runs';

  @override
  String get connectorCardLasts => 'Lasts';

  @override
  String get connectorCardLastsValue => 'While this server runs';

  @override
  String get connectorCardRunsNode => 'On this server, with Node';

  @override
  String get connectorCardRunsPython => 'On this server, with Python';

  @override
  String get connectorCardRunsDocker => 'In Docker, which the app cannot start';

  @override
  String get connectorCardRunsNone => 'Nothing the app can start';

  @override
  String get connectorCardRunsHosted => 'Hosted';

  @override
  String get connectorCardConnect => 'Connect';

  @override
  String get connectorCardConnecting => 'Connecting…';

  @override
  String get connectorCardChecking => 'Checking the connection…';

  @override
  String get connectorCardSignInNeeded =>
      'This connector needs you to sign in.';

  @override
  String get connectorCardSignIn => 'Sign in';

  @override
  String get connectorCardOpenSignIn => 'Open sign-in page';

  @override
  String get connectorCardSignInWaiting =>
      'Waiting for sign-in to finish in your browser.';

  @override
  String get connectorCardManualCode =>
      'Paste the browser return URL or authorization code to finish sign-in.';

  @override
  String get connectorCardCodeLabel => 'Return URL or code';

  @override
  String get connectorCardCodeRequired => 'Paste the return URL or code first.';

  @override
  String get connectorCardFinishSignIn => 'Finish sign-in';

  @override
  String get connectorCardCheckStatus => 'Refresh';

  @override
  String get connectorCardCancelSignIn => 'Cancel sign-in';

  @override
  String get connectorCardCancelTitle => 'Cancel sign-in?';

  @override
  String connectorCardCancelBody(String name) {
    return '$name stops waiting, and its saved sign-in is cleared. You would sign in again to use it.';
  }

  @override
  String get connectorCardKeepWaiting => 'Keep waiting';

  @override
  String get connectorCardConnected => 'Connected';

  @override
  String get connectorCardToolsReady => 'Tools ready';

  @override
  String get connectorCardLoadedTools =>
      'Loaded tools. Continue this conversation to use them.';

  @override
  String get connectorCardConnectedUnconfirmed =>
      'Connected. Tool availability has not been confirmed.';

  @override
  String get connectorCardFailureUnavailable =>
      'This agent cannot connect tools from a conversation.';

  @override
  String get connectorCardFailureInvalidSuggestion =>
      'This connector suggestion is not available. Browse connectors in Tools.';

  @override
  String get connectorCardFailureSetupRequired =>
      'This connector needs setup in Tools before it can connect.';

  @override
  String get connectorCardFailureNameConflict =>
      'A connector with this name already exists. Check it in Tools.';

  @override
  String get connectorCardFailureSourceChanged =>
      'This conversation\'s connection changed. Reopen the connector card.';

  @override
  String get connectorCardFailureConnectFailed =>
      'Could not confirm the connection. Check its status before trying again.';

  @override
  String get connectorCardFailureAuthenticationFailed =>
      'Sign-in could not be confirmed. Check its status before trying again.';

  @override
  String get connectorCardFailureOauthUnavailable =>
      'This connector cannot sign in from a conversation.';

  @override
  String get connectorCardFailureNotConnected =>
      'The connector is not connected yet. Check its setup in Tools.';

  @override
  String get connectorCardOpenTools => 'Open connectors in Tools';

  @override
  String get connectorCardTryAgain => 'Try again';

  @override
  String get connectorCardReopen => 'Reopen card';

  @override
  String get chatUiToolSearchedConnectors => 'Searched connectors';

  @override
  String get chatUiConnectorSearchEmpty =>
      'No connectors found in the loaded catalogue.';

  @override
  String get chatUiConnectorSearchNotLoaded =>
      'The catalogue could not be loaded right now. Ask again in a moment.';

  @override
  String get chatUiConnectorSearchOff => 'Catalogue is off';

  @override
  String get chatUiConnectorSearchOffBody =>
      'The connector catalogue is a public list of connectors. Turning it on downloads that list and sends your search words to the public registry; nothing gets connected.';

  @override
  String get chatUiConnectorSearchTurnOn => 'Turn on connector catalogue';

  @override
  String get chatUiConnectorSearchTurnedOn =>
      'Catalogue is on. Ask the agent to search again.';

  @override
  String get chatUiConnectorSearchTurnOnFailed =>
      'The catalogue could not be turned on. Try again.';

  @override
  String get chatUiConnectorSearchUnavailable =>
      'Connector search is unavailable. Try again from Tools.';

  @override
  String get chatUiConnectorSearchInvalid =>
      'Invalid connector search request.';

  @override
  String get chatUiConnectorSearchNotConnected => 'Not connected';

  @override
  String get kitMarkdownImage => 'Image';

  @override
  String get toolCardPlan => 'Plan';

  @override
  String get toolCardWorktreeSetup => 'Setting up a separate copy';

  @override
  String get toolCardWhatItDid => 'What it did';

  @override
  String get toolCardTechnicalDetails => '技术详情';

  @override
  String toolCardPageStatus(String status) {
    return 'Page answered $status';
  }

  @override
  String toolCardAsked(String prompt) {
    return 'Asked: $prompt';
  }

  @override
  String get chatUiAgentNote => '注意';

  @override
  String get chatUiAgentWarning => '警告';

  @override
  String get chatUiAgentProblem => '问题';

  @override
  String get chatUiCompactedAutomatically => '已自动压缩以腾出空间。';

  @override
  String get chatUiCompactedWhenAsked => '已按你的要求压缩。';

  @override
  String chatUiCompactedFrom(String tokens) {
    return '原本约有 $tokens 个 token。';
  }

  @override
  String get chatRequestTitleFetch => '打开网页';

  @override
  String get chatRequestTitleWebSearch => '搜索网络';

  @override
  String get chatRequestTitleSearch => '搜索项目';

  @override
  String get chatRequestTitleTask => '启动辅助智能体';

  @override
  String get chatRequestTitleSkill => '使用技能';

  @override
  String get chatRequestTitleMode => '切换智能体的模式';

  @override
  String get chatRequestDetailRunsIn => '运行位置';

  @override
  String get chatRequestDetailAsks => '请求内容';

  @override
  String get chatRequestDetailRange => '文件的部分内容';

  @override
  String get chatRequestDetailHelper => '辅助程序类型';

  @override
  String chatRequestReadFrom(String line) {
    return '从第 $line 行起';
  }

  @override
  String chatRequestReadLines(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 行',
      one: '1 行',
    );
    return '$_temp0';
  }

  @override
  String get toolCardWhatWasSent => 'What was sent';

  @override
  String get toolCardWhatCameBack => 'What came back';

  @override
  String get kitRequestShowMore => '展开';

  @override
  String get kitRequestShowLess => '收起';

  @override
  String paseoCheckReady(String agents) {
    return '那台电脑上已就绪：$agents。';
  }

  @override
  String get paseoCheckNoneReady => '那台电脑上还没有可用的智能体。';

  @override
  String get serverRowDetailsVersion => '版本';

  @override
  String get capabilityDevServices => 'Dev servers';

  @override
  String get capabilityDevServicesDetail =>
      'Start a project\'s server or preview, and stop it again';

  @override
  String get capabilityWebSearch => 'Web search';

  @override
  String get capabilityWebSearchDetail =>
      'Let the agent look things up on the web';

  @override
  String get capabilityDeleteMessage => 'Delete a message';

  @override
  String get capabilityDeleteMessageDetail =>
      'Remove a message from a conversation';

  @override
  String get capabilitySavedPermissions => 'Saved approvals';

  @override
  String get capabilitySavedPermissionsDetail =>
      'See and remove the actions you always allowed';

  @override
  String get capabilityMcpAdd => 'Add MCP servers';

  @override
  String get capabilityMcpAddDetail =>
      'Add an MCP server or change its settings from the app';

  @override
  String get capabilityApprovals => 'Ask before acting';

  @override
  String get capabilityApprovalsDetail =>
      'Choose whether the agent asks for approval or acts on its own';

  @override
  String get capabilitySteer => 'Send while it works';

  @override
  String get capabilitySteerDetail =>
      'Add a message while the agent is busy; it reads it during the current turn';

  @override
  String get serverSettingsAuthPasswordSaved => 'Password saved on this phone';

  @override
  String get serverSettingsAuthTokenSaved =>
      'Connection token saved on this phone';

  @override
  String get serverSettingsAuthTokenMissing => 'No connection token saved';

  @override
  String connectionPasswordRejectedFor(String server) {
    return '$server 的密码已更改。请更新密码以重新连接。';
  }

  @override
  String connectionTokenRejectedFor(String server) {
    return '$server 拒绝了连接令牌。请更新令牌以重新连接。';
  }

  @override
  String serverSettingsEditTitle(String server) {
    return 'Edit $server';
  }

  @override
  String get serverSettingsEditDetail => 'Change its name, address or sign-in';

  @override
  String serverSettingsRemoveTitle(String server) {
    return 'Remove $server';
  }

  @override
  String get serverSettingsRemoveDetail =>
      'Forget it on this phone. Its conversations stay on the server.';

  @override
  String get serverSettingsRecheckAgents => 'Check for agents again';

  @override
  String get serverSettingsRecheckAgentsDetail =>
      'Use it after signing in to an agent on that computer.';

  @override
  String get serverSettingsRecheckChecking => 'Checking for agents…';

  @override
  String get serverSettingsRecheckFailed =>
      'Could not check for agents. Try again in a moment.';

  @override
  String integrationsMcpDetails(String name) {
    return 'Details for $name';
  }

  @override
  String get usageBusiestDays => 'Busiest days';

  @override
  String usageDaySteps(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count steps',
      one: '1 step',
    );
    return '$_temp0';
  }

  @override
  String modelPickerAgentUses(String model) {
    return '使用 $model';
  }

  @override
  String get sessionMenuArchive => '归档对话';

  @override
  String get sessionMenuArchiveHint =>
      'Moves it to Archived; the server keeps it';

  @override
  String get sessionMenuDelete => '删除对话';

  @override
  String get sessionMenuDeleteHint => 'Removes it and its history for good';

  @override
  String sessionArchiveTitle(String title) {
    return '归档“$title”？';
  }

  @override
  String get sessionArchiveBody => '它会移到“已归档”，你仍可在那里阅读。';

  @override
  String sessionDeleteTitle(String title) {
    return '删除“$title”？';
  }

  @override
  String get sessionDeleteBody => '对话及其历史记录将被永久删除，且无法撤销。';

  @override
  String monitorUnreachableTitle(String server) {
    return '$server can\'t be reached';
  }

  @override
  String get monitorUnreachableDetail =>
      'Its questions will show here once it\'s back.';

  @override
  String monitorUnreachableCheck(String server) {
    return 'Check $server again';
  }

  @override
  String agentsStateLimitReset(String time) {
    return '套餐额度已用完 · $time重置';
  }

  @override
  String get exportMarkdownUnredacted =>
      'The transcript is not redacted. It holds exactly what you see, including any secrets or private paths in the conversation.';

  @override
  String teamUiGateAnswerConfirmCancelNamedBody(String task) {
    return '“$task” stops. Its open work stays as it is.';
  }

  @override
  String teamProjectStopNamedBody(String project) {
    return '“$project” stops. Its running tasks stop and their work and history stay.';
  }

  @override
  String teamProjectTaskStopNamedBody(String task) {
    return '“$task” stops. Its conversation and changes stay for review.';
  }

  @override
  String get teamAgentUnavailableState => 'Can\'t start';

  @override
  String get teamAgentUnavailableModelWords =>
      'Its model isn\'t set up on the computer';

  @override
  String get teamAgentUnavailableOtherWords =>
      'The computer can\'t run it right now';

  @override
  String teamAgentUnavailableTitle(String agent) {
    return '$agent can\'t start';
  }

  @override
  String teamAgentUnavailableBody(String reason) {
    return '$reason. Fix it on the computer, then check again.';
  }

  @override
  String get teamAgentUnavailableHostSays => 'What the computer says';

  @override
  String get teamControlForceStop => 'Force stop';

  @override
  String get teamProjectControlSuspendWord => 'Pause project';

  @override
  String get teamProjectControlResumeWord => 'Resume project';

  @override
  String get teamProjectControlRemoveWord => 'Delete project';

  @override
  String get teamJobTurnOnWord => 'Turn on';

  @override
  String get teamJobTurnOffWord => 'Turn off';

  @override
  String get teamHomeProjectsTitle => 'Projects';

  @override
  String get teamRigStateActive => 'Active';

  @override
  String get teamRigStatePaused => 'Paused';

  @override
  String teamRigPausedTitle(String project) {
    return '$project is paused';
  }

  @override
  String get teamRigPausedBody =>
      'No new work starts in it until you resume it.';

  @override
  String teamRigPause(String project) {
    return 'Pause project $project';
  }

  @override
  String teamRigResume(String project) {
    return 'Resume project $project';
  }

  @override
  String teamRigPauseTitle(String project) {
    return 'Pause $project?';
  }

  @override
  String teamRigPauseBody(String project) {
    return 'No new work starts in “$project” until you resume it. Nothing is deleted.';
  }

  @override
  String get teamRigPauseConfirm => 'Pause project';

  @override
  String teamRigDelete(String project) {
    return 'Delete project $project';
  }

  @override
  String teamRigDeleteTitle(String project) {
    return 'Delete $project?';
  }

  @override
  String teamRigDeleteBody(String project) {
    return '“$project” is removed from this team. Its folder and files on the computer are not touched.';
  }

  @override
  String get teamRigDeleteConfirm => 'Delete project';

  @override
  String get teamRigDeleteLost => 'The team stops working on it';

  @override
  String get teamRigDeleteKeptFiles => 'Its folder and files on the computer';

  @override
  String get teamRigDeleteKeptHistory => 'Its past tasks and history';

  @override
  String get teamRigFolderLabel => 'Folder on the computer';

  @override
  String get teamRigNotFoundTitle => 'This project is gone';

  @override
  String get teamRigNotFoundBody =>
      'The computer no longer lists it. Go back to the team.';

  @override
  String teamProjectDelete(String project) {
    return 'Delete project $project';
  }

  @override
  String teamProjectDeleteTitle(String project) {
    return 'Delete $project?';
  }

  @override
  String teamProjectDeleteBody(String project) {
    return '“$project” is deleted from this phone\'s AI Team, with the team\'s copy of its code. This can\'t be undone.';
  }

  @override
  String get teamProjectDeleteConfirm => 'Delete project';

  @override
  String get teamProjectDeleteLostPlan =>
      'Its plan, tasks and history are deleted';

  @override
  String get teamProjectDeleteLostRunning => 'Running work stops';

  @override
  String get teamProjectDeleteKept =>
      'The folder you added it from stays as it is';

  @override
  String teamAgentForceStop(String agent) {
    return 'Force stop $agent';
  }

  @override
  String teamAgentForceStopTitle(String agent) {
    return 'Force stop $agent?';
  }

  @override
  String teamAgentForceStopBody(String agent) {
    return '$agent ends at once, without finishing what it is doing. Work it hasn\'t saved may be lost.';
  }

  @override
  String teamAgentStopStuckTitle(String agent) {
    return '$agent didn\'t stop';
  }

  @override
  String get teamAgentStopStuckBody =>
      'The normal stop didn\'t end it. You can force it to end now.';

  @override
  String get teamJobsTitle => 'Scheduled jobs';

  @override
  String get teamJobsWholeTeamTitle => 'For the whole team';

  @override
  String get teamJobsEmptyTitle => 'No scheduled jobs';

  @override
  String get teamJobsEmptyBody =>
      'The computer starts nothing on its own for this project.';

  @override
  String get teamJobsFailedTitle => 'Couldn\'t read scheduled jobs';

  @override
  String get teamJobsFailedBody =>
      'Check the connection to the computer, then try again.';

  @override
  String get teamJobsLoading => 'Reading scheduled jobs';

  @override
  String teamJobEveryDayAt(String time) {
    return 'Every day at $time';
  }

  @override
  String teamJobEveryWeekdayAt(String time) {
    return 'Every weekday at $time';
  }

  @override
  String teamJobEveryDowAt(String day, String time) {
    return 'Every $day at $time';
  }

  @override
  String get teamJobEveryHour => 'Every hour';

  @override
  String teamJobEveryMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count minutes',
      one: 'Every minute',
    );
    return '$_temp0';
  }

  @override
  String teamJobEveryHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count hours',
      one: 'Every hour',
    );
    return '$_temp0';
  }

  @override
  String teamJobEverySeconds(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count seconds',
      one: 'Every second',
    );
    return '$_temp0';
  }

  @override
  String get teamJobOnSchedule => 'On a schedule';

  @override
  String get teamJobRepeats => 'Repeats on its own';

  @override
  String get teamJobWhenEvent => 'When something happens';

  @override
  String get teamJobManual => 'Only when started by hand';

  @override
  String get teamJobWebhook => 'When a web request arrives';

  @override
  String get teamJobCondition => 'When its check passes';

  @override
  String get teamJobOther => 'Starts on its own';

  @override
  String get agentFeaturesLabel => '智能体设置';

  @override
  String agentFeaturesSheetTitle(String agent) {
    return '$agent 设置';
  }

  @override
  String agentFeatureChipOff(String name) {
    return '$name，已关闭';
  }

  @override
  String agentFeatureChipOn(String name) {
    return '$name，已开启';
  }

  @override
  String get agentFeatureFastChip => '快速';

  @override
  String get agentFeaturesLoadFailed => '无法加载此智能体的设置。';

  @override
  String get agentFeatureFastTitle => '快速模式';

  @override
  String get agentFeatureFastDetail => '支持的模型回复更快，但费用更高。';

  @override
  String get agentFeatureSaving => '正在保存…';

  @override
  String agentFeatureChangeFailed(String name) {
    return '无法更改 $name。它将保持原有设置。';
  }

  @override
  String get claudeImportTitle => '从 Claude Code 导入';

  @override
  String claudeImportIntro(String project) {
    return 'Pick a conversation you started in Claude Code in $project. It opens here so you can carry on.';
  }

  @override
  String claudeImportRowDetail(String project, String when) {
    return '$project · $when';
  }

  @override
  String get claudeImportUntitled => 'Untitled conversation';

  @override
  String get claudeImportEmptyTitle => 'Nothing to import';

  @override
  String get claudeImportEmptyBody =>
      'Conversations you start in Claude Code in this project show up here.';

  @override
  String get claudeImportLoadFailedTitle => 'Could not look';

  @override
  String get claudeImportLoadFailedBody =>
      'The list did not load. Check the connection, then try again.';

  @override
  String claudeImportAlready(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count more conversations are already here.',
      one: '1 more conversation is already here.',
    );
    return '$_temp0';
  }

  @override
  String get claudeImportWorking => 'Importing…';

  @override
  String get claudeImportFailed =>
      'That conversation could not be imported. Try again.';

  @override
  String hostUpdateRow(String computer) {
    return 'Update agents on $computer';
  }

  @override
  String hostUpdateRowRunning(String version) {
    return 'Running $version. Installs the newest agent software.';
  }

  @override
  String get hostUpdateRowUnknown =>
      'Installs the newest agent software on that computer.';

  @override
  String get hostUpdateConfirmTitle => 'Update agents?';

  @override
  String hostUpdateConfirmBody(String computer) {
    return 'This installs the newest agent software on $computer and restarts it.';
  }

  @override
  String hostUpdateConfirmPauses(String computer) {
    return 'Conversations on $computer pause while it restarts.';
  }

  @override
  String get hostUpdateConfirmKept =>
      'Your conversations and settings stay as they are.';

  @override
  String get hostUpdateConfirmAction => 'Update agents';

  @override
  String get hostUpdateStarting => 'Starting the update…';

  @override
  String get hostUpdateDownloading => 'Downloading the newest version…';

  @override
  String get hostUpdateInstalling => 'Installing…';

  @override
  String get hostUpdateFinishing => 'Finishing up…';

  @override
  String hostUpdateDone(String version) {
    return 'Updated to $version. The app reconnects by itself.';
  }

  @override
  String get hostUpdateDoneNoVersion =>
      'Updated. The app reconnects by itself.';

  @override
  String hostUpdateCurrent(String computer) {
    return '$computer is already up to date.';
  }

  @override
  String get hostUpdateFailed =>
      'The update did not finish. Try again, or update it on that computer.';

  @override
  String get hostUpdateDropped =>
      'The connection dropped during the update. The app is reconnecting.';

  @override
  String get hostUpdateDetailsRow => 'Why it failed';

  @override
  String get hostUpdateDetailsTitle => 'Update details';

  @override
  String get hostUpdateDetailsMessage => 'Message from the computer';

  @override
  String get filesTextSurface => '文件内文本';

  @override
  String get filesSearchText => '在文件中搜索文本';

  @override
  String filesSearchInside(String query) {
    return '在文件内容中搜索“$query”';
  }

  @override
  String get filesTextHintTitle => '在文件内搜索';

  @override
  String get filesTextHintBody => '输入单词或短语，查看包含它的每一行。';

  @override
  String get filesNoTextTitle => '无匹配项';

  @override
  String get filesNoTextBody => '没有文件包含该文本。请检查拼写，或减少关键词。';

  @override
  String get filesTextFailedTitle => '无法搜索文件';

  @override
  String filesTextLimited(int count) {
    return '显示前 $count 个匹配项。输入更多内容可缩小范围。';
  }

  @override
  String filesTextMatchLine(int line) {
    return '第 $line 行';
  }

  @override
  String get productErrorComputer => '无法连接到你的电脑。请确认它已开机并联网，然后重试。';

  @override
  String get productErrorProjectGit =>
      'This project\'s Git history can\'t be read, so the conversation couldn\'t start. Restore the project from a copy, or clone it again.';

  @override
  String kitGalleryPosition(int current, int total) {
    return '$current of $total';
  }

  @override
  String kitGalleryPictureLabel(int current, int total, String name) {
    return 'Picture $current of $total: $name';
  }

  @override
  String get kitGalleryEdit => 'Edit';

  @override
  String get kitGallerySend => 'Send';

  @override
  String get kitGalleryLoading => 'Loading picture';

  @override
  String get kitGalleryLoadFailed => 'This picture could not be loaded';

  @override
  String get kitGalleryLoadFailedBody =>
      'Check the connection, then try again.';

  @override
  String get kitGalleryTryAgain => 'Try again';

  @override
  String get kitMarkupTitle => 'Edit picture';

  @override
  String get kitMarkupColours => 'Pen colour';

  @override
  String get kitMarkupRed => 'Red';

  @override
  String get kitMarkupYellow => 'Yellow';

  @override
  String get kitMarkupWhite => 'White';

  @override
  String get kitMarkupBlack => 'Black';

  @override
  String get kitMarkupUndo => 'Undo';

  @override
  String get kitMarkupClear => 'Clear';

  @override
  String get kitMarkupCrop => 'Crop';

  @override
  String get kitMarkupApply => 'Apply';

  @override
  String get kitMarkupCancel => 'Cancel';

  @override
  String get kitMarkupDone => 'Done';

  @override
  String get kitMarkupCanvas =>
      'Picture being edited. Draw on it with your finger.';

  @override
  String get kitMarkupCropHandle => 'Crop corner. Drag to resize.';

  @override
  String get kitMarkupCropArea => 'Crop area. Drag to move it.';

  @override
  String get kitMarkupFailed => 'The edited picture could not be made';

  @override
  String get kitMarkupFailedBody =>
      'Try again, or go back and send the original.';

  @override
  String kitContextRingSemantics(String percent) {
    return 'Context $percent % used';
  }

  @override
  String get kitContextRingTapHint => 'Show context details';

  @override
  String get kitContextRingCompacting => 'Compacting';

  @override
  String get kitContextRingCompactingSemantics => 'Context, compacting';

  @override
  String get kitContextSheetTitle => '上下文窗口';

  @override
  String kitContextSheetTokens(String used, String limit) {
    return '$used of $limit tokens';
  }

  @override
  String get kitContextSheetModel => 'Model';

  @override
  String get kitContextSheetWindow => 'Context window';

  @override
  String get kitContextSheetMeasured => 'Measured';

  @override
  String get kitContextSheetMeasuredValue => 'After the last reply';

  @override
  String get kitContextSheetExplain =>
      'The context window is how much of the conversation the model can read at once: your messages, its replies, files and tool results. When it fills up, older parts have to be summarised or left out, so compacting before then keeps the answers sharp.';

  @override
  String get kitContextSheetChartTitle => 'Each reply';

  @override
  String kitContextChartSemantics(String count, String percent) {
    return 'Context after each of $count replies, the newest at $percent %';
  }

  @override
  String get kitContextChartCompacted => 'Compacted here';

  @override
  String get kitContextSheetCompactNow => '立即压缩';

  @override
  String get phraseChipsRowLabel => '快捷短语';

  @override
  String phraseChipsSend(String phrase) {
    return '发送：$phrase';
  }

  @override
  String get phraseChipsMenuLabel => '短语选项';

  @override
  String get phraseChipsEdit => '编辑';

  @override
  String get phraseChipsHide => '隐藏';

  @override
  String get phraseChipsWorkingStarter => '进展如何？';

  @override
  String get settingsPhraseChipsTitle => '短语建议';

  @override
  String get settingsPhraseChipsSupporting =>
      'Your common short phrases, above the message box. Learned on this phone from what you send.';

  @override
  String get settingsPhraseChipsShowHidden => '显示已隐藏的短语';

  @override
  String settingsPhraseChipsHiddenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 条已隐藏的短语',
      one: '1 条已隐藏的短语',
    );
    return '$_temp0';
  }

  @override
  String get kitFactToldWord => 'You told it';

  @override
  String get kitFactSeenWord => 'From a source';

  @override
  String get kitFactGuessedWord => 'It guessed';

  @override
  String get kitFactCalculatedWord => 'Worked out';

  @override
  String kitFactToldLine(String date) {
    return 'You told it · $date';
  }

  @override
  String kitFactSeenLine(String source, String date) {
    return 'From $source · $date';
  }

  @override
  String kitFactSeenNoSourceLine(String date) {
    return 'From a source · $date';
  }

  @override
  String kitFactGuessedLine(String date) {
    return 'It guessed · $date';
  }

  @override
  String kitFactGuessedFromLine(String date, String source) {
    return 'It guessed · $date · from $source';
  }

  @override
  String kitFactCalculatedLine(String date) {
    return 'Worked out · $date';
  }

  @override
  String kitFactWaitingLine(String line) {
    return '$line · waiting for your OK';
  }

  @override
  String get fbSourceChat => 'a conversation you saved';

  @override
  String get fbSourceShare => 'text you shared';

  @override
  String get fbSourceNote => 'a note';

  @override
  String get fbSourceImport => 'pasted text';

  @override
  String get fbSourceStatement => 'a statement';

  @override
  String get fbSourceOther => 'another source';

  @override
  String get fbKindPerson => 'Person';

  @override
  String get fbKindDocument => 'Document';

  @override
  String get fbKindSubscription => 'Subscription';

  @override
  String get fbKindWarranty => 'Warranty';

  @override
  String get fbKindBill => 'Bill';

  @override
  String get fbKindCard => 'Card';

  @override
  String get fbKindAccount => 'Account';

  @override
  String get fbKindOrganization => 'Organization';

  @override
  String get fbKindPlace => 'Place';

  @override
  String get fbKindProject => 'Project';

  @override
  String get fbKindTopic => 'Topic';

  @override
  String get fbKindEvent => 'Event';

  @override
  String get fbKindOther => 'Thing';

  @override
  String get fbMemoryTitle => 'Memory';

  @override
  String fbMemoryFromFactsBook(int count) {
    return '$count waiting';
  }

  @override
  String get fbMemoryFromFactsBookNone => 'All clear';

  @override
  String get fbMemoryQuiet => 'Nothing in memory needs you.';

  @override
  String fbMemoryReview(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changes to review',
      one: '1 change to review',
    );
    return '$_temp0';
  }

  @override
  String fbMemoryNotSaved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count notes not saved yet',
      one: '1 note not saved yet',
    );
    return '$_temp0';
  }

  @override
  String get fbMemoryNotSavedDetail => 'Kept on this phone';

  @override
  String get fbMemoryReviewDetail => 'Needs your OK';

  @override
  String get fbMemoryRecoveryKit => 'Save your recovery kit';

  @override
  String get fbMemoryRecent => 'Recently added to memory';

  @override
  String get fbMemoryOpenAboutYou => 'Open About you';

  @override
  String get fbMemoryOpenAboutYouDetail =>
      'Search, browse and see what is waiting';

  @override
  String get fbMemoryAddSomething => 'Add something';

  @override
  String get fbMemoryAddSomethingDetail => 'A note or pasted text';

  @override
  String get fbMemoryUnreachable => 'Memory could not be reached right now.';

  @override
  String fbAddedLine(String when) {
    return 'Added $when';
  }

  @override
  String get fbAboutYouTitle => 'About you';

  @override
  String fbStatusLastSaved(String when) {
    return 'Last saved $when';
  }

  @override
  String get fbStatusStale => 'Showing what was last saved';

  @override
  String get fbSearchLabel => 'Search your memory';

  @override
  String get fbEmptyTitle => 'Nothing here yet';

  @override
  String get fbEmptyBody =>
      'Add a note, share some text from another app, or paste text from another assistant. What you add shows up here with where it came from.';

  @override
  String get fbListAll => 'All';

  @override
  String get fbListCards => 'Cards';

  @override
  String get fbListPeople => 'People';

  @override
  String get fbListDocuments => 'Documents';

  @override
  String get fbListLockedNote =>
      'Locked notes are not shown. Unlock with your fingerprint or PIN to include them.';

  @override
  String fbKindLine(String kind, String detail) {
    return '$kind · $detail';
  }

  @override
  String get fbAreaMoney => 'Money area';

  @override
  String get fbAreaHealth => 'Health area';

  @override
  String fbAreaOther(String area) {
    return '$area area';
  }

  @override
  String get fbErrorTitle => 'Memory did not answer';

  @override
  String get fbErrorUnreachable =>
      'Memory could not be reached. What you add is kept on this phone until it can be saved.';

  @override
  String get fbErrorLocked => 'This is in the locked folder. Unlock it first.';

  @override
  String get fbErrorNotFound => 'That is not in memory any more.';

  @override
  String get fbErrorGeneric => 'Something went wrong. Try again.';

  @override
  String fbErrorRequest(String id) {
    return 'Request $id';
  }

  @override
  String get fbSearchTitle => 'Search';

  @override
  String fbSearchMatches(int count, String query) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matches for “$query”',
      one: '1 match for “$query”',
      zero: 'No matches for “$query”',
    );
    return '$_temp0';
  }

  @override
  String get fbSearchWordsOnly =>
      'Matches words in your notes. It does not search by meaning.';

  @override
  String get fbSearchEachHit =>
      'Each result shows where it came from and when. A source can still be wrong.';

  @override
  String get fbSearchLocked =>
      'Locked notes are not searched until you unlock.';

  @override
  String get fbSearchNoneTitle => 'Nothing matches';

  @override
  String get fbSearchNoneBody => 'Try other words.';

  @override
  String get fbThingFacts => 'Facts';

  @override
  String get fbThingNoFacts => 'No facts yet.';

  @override
  String get fbThingLinks => 'Linked to';

  @override
  String get fbThingLocked => 'Locked folder';

  @override
  String get fbKeepIt => 'Yes, keep it';

  @override
  String get fbNotRight => 'Not right';

  @override
  String get fbDecisionKept => 'Kept.';

  @override
  String get fbDecisionRemoved => 'Removed from memory.';

  @override
  String get fbCaptureTitle => 'Add something';

  @override
  String get fbCaptureKindLabel => 'What you are adding';

  @override
  String get fbCaptureNote => 'Note';

  @override
  String get fbCapturePaste => 'Paste';

  @override
  String get fbCaptureNoteLabel => 'What should it remember?';

  @override
  String get fbCaptureNoteHint =>
      'Dentist next Wednesday at 10. Bring the insurance card.';

  @override
  String get fbCapturePasteLabel => 'Paste text from another app or assistant';

  @override
  String get fbCaptureSave => 'Save';

  @override
  String get fbCaptureFootnote =>
      'Anything shared from another app lands here too. A note that cannot be saved yet waits in Not saved yet. It never disappears.';

  @override
  String get fbCaptureSaved =>
      'Saved. Memory will check it for changes for you to review.';

  @override
  String fbCaptureSavedReminder(String when) {
    return 'Saved with a reminder for $when.';
  }

  @override
  String get fbCaptureKept =>
      'It could not be saved yet. It is kept on this phone.';

  @override
  String get fbCaptureSeeNotSaved => 'See Not saved yet';

  @override
  String get fbReminderTitle => 'Check this reminder';

  @override
  String fbReminderWrote(String text) {
    return 'You wrote: “$text”';
  }

  @override
  String get fbReminderDate => 'Date';

  @override
  String get fbReminderTime => 'Time';

  @override
  String get fbReminderZone => 'Time zone';

  @override
  String get fbReminderZoneHome => 'Home time zone';

  @override
  String get fbReminderZoneHomeDetail =>
      'Rings at this time in your home zone, wherever you are.';

  @override
  String get fbReminderZoneFloating => 'This phone\'s time';

  @override
  String get fbReminderZoneFloatingDetail =>
      'Stays at the same clock time wherever you are.';

  @override
  String get fbReminderLocale => 'Language of dates';

  @override
  String get fbReminderRepeat => 'Repeats';

  @override
  String get fbRepeatNever => 'Never';

  @override
  String get fbRepeatDaily => 'Every day';

  @override
  String get fbRepeatWeekly => 'Every week';

  @override
  String get fbRepeatMonthly => 'Every month';

  @override
  String get fbRepeatYearly => 'Every year';

  @override
  String get fbReminderAmbiguousDate => 'I could not tell the date. Check it.';

  @override
  String get fbReminderAmbiguousTime => 'I could not tell the time. Check it.';

  @override
  String get fbReminderHelp => 'Change anything that is wrong before saving.';

  @override
  String get fbReminderSave => 'Save reminder';

  @override
  String get fbReminderChange => 'Change what I wrote';

  @override
  String get fbReminderWhat => 'Remind me about';

  @override
  String get fbNeedsYouTitle => 'Needs you';

  @override
  String fbNeedsYouWaiting(int count) {
    return '$count waiting';
  }

  @override
  String get fbNeedsYouNone => 'Nothing needs you right now.';

  @override
  String get fbNeedsYouNoneBody =>
      'Questions, changes to review and notes not saved yet show up here.';

  @override
  String get fbNeedsYouSeeWhy => 'See why';

  @override
  String get fbNeedsYouAnswered => 'Thanks. That is answered.';

  @override
  String get fbNotSavedTitle => 'Not saved yet';

  @override
  String fbNotSavedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items kept on this phone',
      one: '1 item kept on this phone',
    );
    return '$_temp0';
  }

  @override
  String get fbNotSavedIntro =>
      'Kept until you discard them: on this phone, or by Memory. None is in your cloud yet.';

  @override
  String get fbNotSavedFooter =>
      'They stay here until you discard them. At 30 days Memory asks: Retry, Export or Discard.';

  @override
  String get fbNotSavedEmptyTitle => 'Everything is saved';

  @override
  String get fbNotSavedEmptyBody =>
      'Notes that cannot be saved yet will wait here.';

  @override
  String get fbNotSavedTryNow => 'Try now';

  @override
  String get fbNotSavedCopy => 'Copy text';

  @override
  String get fbNotSavedDiscard => 'Discard note';

  @override
  String get fbNotSavedRetry => 'Try again';

  @override
  String get fbNotSavedExport => 'Export';

  @override
  String get fbNotSavedThirtyDays =>
      'This has been kept for 30 days. Retry it, export the text, or discard it.';

  @override
  String get fbNotSavedDiscardTitle => 'Discard this note?';

  @override
  String get fbNotSavedDiscardBody =>
      'It was never saved. Discarding removes it from this phone.';

  @override
  String get fbNotSavedSaved => 'Saved.';

  @override
  String get fbNotSavedStill => 'Still not saved. It stays here.';

  @override
  String fbNotSavedSince(String when) {
    return 'Since $when';
  }

  @override
  String get fbReasonUnreachable => 'Memory could not be reached.';

  @override
  String fbReasonWaitingFor(String device) {
    return 'Waiting for $device.';
  }

  @override
  String get fbReasonStorageFull =>
      'This phone is full. Free some space, then try again.';

  @override
  String get fbReasonCloudQuota =>
      'Your cloud is full. Free some space, then try again.';

  @override
  String get fbReasonKeyLocked =>
      'The locked folder is locked. Unlock it, then try again.';

  @override
  String get fbReasonTooLarge => 'It is too large to save.';

  @override
  String get fbReasonRejected => 'Memory could not accept it.';

  @override
  String get fbReasonClassification =>
      'Memory could not sort it yet. Try again.';

  @override
  String get fbDismiss => 'Dismiss';

  @override
  String get fbCaptureNeedsText => 'Write something first.';

  @override
  String get fbAreaFamily => 'Family area';

  @override
  String get fbAreaWork => 'Work area';

  @override
  String get fbAreaNameMoney => 'Money';

  @override
  String get fbAreaNameHealth => 'Health';

  @override
  String get fbAreaNameFamily => 'Family';

  @override
  String get fbAreaNameWork => 'Work';

  @override
  String get fbAreasTitle => 'Areas and sharing';

  @override
  String get fbAreasIntro =>
      'Each area keeps its own rules. Other apps and agents read an area only if you let them.';

  @override
  String get fbAreasOthersRead => 'Other apps and agents can read it';

  @override
  String get fbAreasOthersReadDetail =>
      'Turn off to keep this area to you alone.';

  @override
  String get fbAreasLockedFolder => 'Locked folder';

  @override
  String get fbAreasNormalStorage => 'Normal storage';

  @override
  String get fbAreasReviewFirst => 'New facts wait for your OK first.';

  @override
  String get fbAreasReviewAuto => 'Only safe clean-up happens on its own.';

  @override
  String get fbAreasFixed => 'These areas are built in.';

  @override
  String fbAreasShareConfirmTitle(String area) {
    return 'Let others read $area?';
  }

  @override
  String get fbAreasShareConfirmBody =>
      'Apps and agents you have paired will be able to read what is in this area. You can turn it off again.';

  @override
  String get fbAreasShareConfirm => 'Let them read';

  @override
  String get fbCaptureFull =>
      'This phone\'s queue is full, so the note was not kept. Your text is still here. Send or discard a waiting note first.';

  @override
  String get fbCaptureQueuedNode =>
      'Memory is holding it until it can be saved.';

  @override
  String get fbCaptureReminderFailed =>
      'The reminder was not made. Try it again from the note.';

  @override
  String fbCareWaiting(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count waiting for your OK',
      one: '1 waiting for your OK',
    );
    return '$_temp0';
  }

  @override
  String get fbCareApprove => 'Approve';

  @override
  String get fbCareEdit => 'Edit';

  @override
  String get fbCareReject => 'Reject';

  @override
  String get fbCareSkip => 'Skip';

  @override
  String get fbCareApproved => 'Approved.';

  @override
  String get fbCareRejected => 'Rejected. It will not be proposed again.';

  @override
  String get fbCareSkipped => 'Skipped. It stays here.';

  @override
  String get fbCareStale =>
      'That changed after it was proposed, so nothing was applied. It is off this list now.';

  @override
  String get fbCareNeedsOwner =>
      'This phone cannot approve changes yet. Set up approval to continue.';

  @override
  String get fbCareNeedsOwnerShort => 'Set up approval first';

  @override
  String get fbCareSetupApproval => 'Set up approval';

  @override
  String get fbCareEditTitle => 'Edit before approving';

  @override
  String get fbCareEditLabel => 'Fact';

  @override
  String get fbCareEditSave => 'Approve with my edit';

  @override
  String get fbCareClassFactAdd => 'Add a fact';

  @override
  String get fbCareClassFactUpdate => 'Change a fact';

  @override
  String get fbCareClassFactSupersede => 'Replace a fact';

  @override
  String get fbCareClassMerge => 'Merge two things';

  @override
  String get fbCareClassLink => 'Link two things';

  @override
  String get fbCareClassArchive => 'Archive';

  @override
  String get fbCareClassForget => 'Forget';

  @override
  String get fbCareClassWatch => 'Keep an eye on something';

  @override
  String get fbCareClassReminder => 'Reminder';

  @override
  String get fbCareClassImport => 'From pasted text';

  @override
  String get fbCareClassPromotion => 'A fact for a stricter area';

  @override
  String get fbCareRiskMoney => 'Money';

  @override
  String get fbCareRiskHealth => 'Health';

  @override
  String get fbCareRiskId => 'ID';

  @override
  String get fbCareRiskContradiction => 'Contradicts something you told it';

  @override
  String get fbCareRiskLowConfidence => 'Not sure';

  @override
  String get fbConnectTitle => 'Connect to my server';

  @override
  String get fbConnectRow => 'Set up Memory';

  @override
  String get fbConnectRowDetail => 'Your notes, on this phone';

  @override
  String get fbConnectIntro =>
      'Connect this app to a Memory server on your home network or your tailnet, or on this phone.';

  @override
  String get fbConnectAddress => 'Address of the node';

  @override
  String get fbConnectAddressHint => '127.0.0.1:8787';

  @override
  String get fbConnectCode => 'One-time pairing code';

  @override
  String get fbConnectCodeHelp =>
      'The node prints it when you run its pair command. It works once, for five minutes.';

  @override
  String get fbConnectOwnerTitle => 'Approve changes (optional)';

  @override
  String get fbConnectOwnerBody =>
      'Reviewing proposals and changing sharing are signed with this phone\'s own key. Give the node the public key below, then enter the owner device id it returns.';

  @override
  String get fbConnectOwnerKey => 'This phone\'s public key';

  @override
  String get fbConnectOwnerId => 'Owner device id';

  @override
  String get fbConnectButton => 'Connect';

  @override
  String get fbConnectNeeds => 'Enter the address and the code first.';

  @override
  String get fbConnectFailedTitle => 'Could not connect';

  @override
  String fbDisconnect(String name) {
    return 'Disconnect $name';
  }

  @override
  String get fbDisconnectDetail =>
      'Forget the pairing, token and approval key on this phone';

  @override
  String fbDisconnectTitle(String name) {
    return 'Disconnect $name?';
  }

  @override
  String get fbDisconnectBody =>
      'This phone forgets the node\'s pairing, token and approval key. The node\'s notes stay where they are, and notes waiting on this phone stay until you discard them.';

  @override
  String get fbErrorAddress =>
      'That address is not on a private network. Use this phone, your home network or your tailnet.';

  @override
  String get fbErrorBadResponse =>
      'Memory answered in a way this app cannot read. Update the app, or update the memory program.';

  @override
  String get fbErrorForbidden => 'This phone is not allowed to do that.';

  @override
  String get fbErrorNotEnabled => 'That is turned off in this memory.';

  @override
  String get fbErrorOwner =>
      'This phone cannot approve changes yet. Set up approval first.';

  @override
  String get fbErrorPairCode =>
      'That code did not work. Ask the node for a new one.';

  @override
  String get fbErrorSlow => 'Memory is busy. Try again in a moment.';

  @override
  String get fbErrorStale =>
      'That changed since you looked. Look again, then try once more.';

  @override
  String get fbErrorStarting => 'Memory is starting. Try again in a moment.';

  @override
  String get fbErrorUnauthorized =>
      'This phone is not signed in to Memory. Set it up again.';

  @override
  String fbErrorCode(String code) {
    return 'Code $code';
  }

  @override
  String get fbKeyLocked => 'Locked';

  @override
  String get fbKeyUnlocked => 'Unlocked';

  @override
  String get fbKindInvoice => 'Invoice';

  @override
  String get fbKindHealth => 'Health';

  @override
  String get fbModuleStorage => 'Storage';

  @override
  String get fbModuleCloud => 'Cloud backup';

  @override
  String get fbModuleCare => 'Needs you';

  @override
  String get fbNotSavedAtNode => 'Held by Memory';

  @override
  String get fbNotSavedOnPhone => 'On this phone';

  @override
  String get fbNotSavedNodeItem => 'A note Memory is holding';

  @override
  String get fbReasonModuleNotConfigured => 'nothing connected yet';

  @override
  String get fbReasonModuleNotEnabled => 'not turned on yet';

  @override
  String get fbReasonOutboxFull =>
      'The queue on this phone is full. Send or discard a waiting note.';

  @override
  String get fbReasonParserError => 'Memory could not read it. Try again.';

  @override
  String get fbReminderAdjusted => 'Memory adjusted the time';

  @override
  String get fbReminderMismatch =>
      'Memory read this differently. Check the date, time and zone, then try again.';

  @override
  String fbReminderPause(String what) {
    return 'Pause “$what”';
  }

  @override
  String fbReminderResume(String what) {
    return 'Resume “$what”';
  }

  @override
  String get fbRemindersTitle => 'Reminders';

  @override
  String get fbRemindersActive => 'Active';

  @override
  String get fbRemindersPaused => 'Paused';

  @override
  String get fbRemindersDone => 'Done';

  @override
  String get fbRemindersEmptyTitle => 'No reminders yet';

  @override
  String get fbRemindersEmptyBody =>
      'Add a reminder, or turn on “Also remind me about it” when you add a note, and it shows up here.';

  @override
  String get fbSourceSaved => 'something you saved';

  @override
  String get fbStateReady => 'Ready';

  @override
  String get fbStateWaiting => 'Waiting';

  @override
  String get fbStateStale => 'Stale';

  @override
  String get fbStateFailed => 'Failed';

  @override
  String get fbStateOff => 'Off';

  @override
  String get fbStateNotSetUp => 'Not set up';

  @override
  String get fbStatusTitle => 'Status';

  @override
  String get fbStatusSearch => 'Search';

  @override
  String get fbStatusBackup => 'Backup';

  @override
  String get fbStatusBackedUp => 'Backed up';

  @override
  String get fbStatusNoBackup => 'No backup yet';

  @override
  String get fbStatusThisPhone => 'This phone';

  @override
  String get fbStatusApprove => 'Approve changes from this phone';

  @override
  String fbStatusSince(String when) {
    return 'updated $when';
  }

  @override
  String get fbThingWaitingNote =>
      'Facts marked \"waiting for your OK\" are in Needs you.';

  @override
  String fbWhenDaily(String time) {
    return 'Every day at $time';
  }

  @override
  String fbWhenWeekly(String time) {
    return 'Every week at $time';
  }

  @override
  String fbWhenMonthly(String time) {
    return 'Every month at $time';
  }

  @override
  String fbWhenYearly(String time) {
    return 'Every year at $time';
  }

  @override
  String get fbWhenCustom => 'Custom schedule';

  @override
  String get fbDeveloperFactsBook => 'Memory (preview)';

  @override
  String get fbDeveloperFactsBookDetail =>
      'Shows the Memory section in your conversations. Off by default.';

  @override
  String get fbDeveloperTitle => 'Developer';

  @override
  String get fbErrorBadRequest =>
      'Memory did not accept that. Check what you entered and try again.';

  @override
  String get fbErrorNodeFull =>
      'Memory\'s own queue is full. Keep your text and try again later.';

  @override
  String get fbErrorIndexRebuilding =>
      'Search is getting ready. Try again in a moment.';

  @override
  String get fbErrorAuthUnavailable =>
      'This phone has no fingerprint, face or screen lock set up, so it cannot approve changes. Set one up in the phone\'s settings, then try again.';

  @override
  String get fbErrorAuthCancelled =>
      'Approval was cancelled. Nothing was changed.';

  @override
  String get fbErrorAuthLocked =>
      'Too many wrong tries. Wait a little, then try again.';

  @override
  String get fbErrorAuthFailed =>
      'The phone could not confirm it is you. Nothing was changed.';

  @override
  String fbErrorSlowAfter(int seconds) {
    return 'Memory is busy. Try again in $seconds seconds.';
  }

  @override
  String get fbAuthReason => 'Approve this change in Memory';

  @override
  String fbWhenWeeklyOn(String days, String time) {
    return 'Every week on $days at $time';
  }

  @override
  String fbWhenMonthLast(String time) {
    return 'Every month on the last day at $time';
  }

  @override
  String fbWhenMonthlyOn(int day, String time) {
    return 'Every month on day $day at $time';
  }

  @override
  String fbWhenYearlyOn(String date, String time) {
    return 'Every year on $date at $time';
  }

  @override
  String get fbReminderNeedsTitle => 'Write the reminder first.';

  @override
  String get fbReminderWhatHint => 'Call the dentist';

  @override
  String get fbReminderDayOfMonth => 'Day of the month';

  @override
  String get fbReminderLastDay => 'Last day';

  @override
  String get fbRemindersAdd => 'Add a reminder';

  @override
  String fbThingOriginally(String source, String date) {
    return 'Originally read from $source · $date';
  }

  @override
  String get fbExportTitle => 'Export this note';

  @override
  String get fbExportBody =>
      'This is the note as an encrypted object. It does not unlock the locked folder, and opening it needs the recovery details from when Memory was set up on its own device.';

  @override
  String get fbExportObject => 'Encrypted object';

  @override
  String get fbExportCopy => 'Copy export';

  @override
  String get fbSettingsTitle => 'Memory settings';

  @override
  String get fbSettingsBrief => 'Morning brief';

  @override
  String get fbSettingsBriefCap => 'Items a day';

  @override
  String get fbSettingsBriefCapDetail => 'The most the brief shows in one day.';

  @override
  String get fbSettingsBriefOff => 'None';

  @override
  String fbSettingsBriefItems(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }

  @override
  String get fbSettingsBriefTime => 'Brief time';

  @override
  String get fbSettingsQuietHours => 'Quiet hours';

  @override
  String get fbSettingsPrivacy => 'Privacy';

  @override
  String get fbSettingsLockTimeout => 'Locked folder stays open for';

  @override
  String fbSettingsMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return '$_temp0';
  }

  @override
  String get fbSettingsAreasDetail => 'Who else may read each area';

  @override
  String get fbSettingsThisNode => 'This memory';

  @override
  String get fbSettingsHomeZone => 'Home time zone';

  @override
  String get fbSettingsSpending => 'Spending limit';

  @override
  String get fbSettingsSpendingNone => 'Nothing may be spent';

  @override
  String get fbSettingsFootnote =>
      'The lock time and the home zone are set on the memory server. Changes here need this phone\'s approval.';

  @override
  String get fbSettingsNeedsOwner =>
      'This phone cannot approve changes yet, so settings are shown but not changed. Set up approval to change them.';

  @override
  String get fbModuleReplication => 'Replication';

  @override
  String get fbStatusChecked => 'Checked';

  @override
  String get fbStatusUnknown => 'Not known';

  @override
  String get fbStatusCloudCopy => 'Cloud copy';

  @override
  String get fbStatusCloudUnknown =>
      'Not known yet. No cloud copy has been checked.';

  @override
  String fbStatusCloudAge(String age) {
    return '$age old';
  }

  @override
  String get fbStatusHistory => 'Signed history';

  @override
  String get fbStatusHistoryNotChecked => 'Not checked';

  @override
  String get fbStatusHistoryVerified =>
      'Verified against the key pinned when you paired';

  @override
  String get fbStatusHistoryFailed =>
      'Could not be verified. Do not approve anything until it is.';

  @override
  String get fbStatusHistoryForked =>
      'Two competing histories were found. Approvals are paused.';

  @override
  String get fbStatusNoReplication =>
      'Replication is off, so your notes exist only in this memory, and how fresh a cloud copy is cannot be known.';

  @override
  String get fbStatusNotYet => 'Not turned on';

  @override
  String get fbNotYetCloud => 'Cloud sync and backup';

  @override
  String get fbNotYetUnlock => 'Opening the locked folder';

  @override
  String get fbNotYetAlarms => 'Reminder alarms on this phone';

  @override
  String get fbNotAvailableYet => 'Off';

  @override
  String get fbReminderClockNote =>
      'If a time does not exist that day because the clocks change, it runs at the first time that does.';

  @override
  String get fbCaptureReminderNotMade =>
      'The reminder was not made yet. Add it again once the note is saved.';

  @override
  String get fbNotSavedDiscardBodyNode =>
      'Memory will delete the copy it is holding. It was never saved.';

  @override
  String get fbAreaNameGeneral => 'General';

  @override
  String get fbAreaNameHome => 'Home';

  @override
  String get fbAreaNameTravel => 'Travel';

  @override
  String get fbAreaNameUnsorted => 'Unsorted';

  @override
  String get fbAreaNameId => 'ID';

  @override
  String get fbModuleIndex => 'Search index';

  @override
  String get fbModuleMembership => 'Devices';

  @override
  String get fbTriggersTitle => 'When something new arrives';

  @override
  String get fbTriggersSettingsDetail =>
      'Rules that suggest reminders and conversations from messages you share';

  @override
  String get fbTriggersUnavailableTitle => 'Rules are off here';

  @override
  String get fbTriggersUnavailableBody =>
      'This memory does not offer rules. Update it to use them.';

  @override
  String get fbTriggersEmptyTitle => 'No rules yet';

  @override
  String get fbTriggersEmptyBody =>
      'A rule watches for one kind of message and only suggests. Nothing is saved or sent until you approve.';

  @override
  String get fbTriggersNew => 'New rule';

  @override
  String fbTriggersGroupShare(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rules',
      one: '1 rule',
    );
    return 'Text you share · $_temp0';
  }

  @override
  String fbTriggersGroupChat(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rules',
      one: '1 rule',
    );
    return 'Conversations you save · $_temp0';
  }

  @override
  String fbTriggersGroupNote(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rules',
      one: '1 rule',
    );
    return 'Notes you write · $_temp0';
  }

  @override
  String get fbTriggersRecent => 'Recent messages';

  @override
  String get fbTriggersFootnote =>
      'A rule only suggests. Nothing is saved or sent until you approve. Ignored items are counted, never kept.';

  @override
  String fbRuleFinds(String template, String outcomes) {
    return 'Looks for $template → $outcomes';
  }

  @override
  String get fbTemplateAppointment => 'an appointment';

  @override
  String get fbTemplateDelivery => 'a delivery';

  @override
  String get fbTemplateBooking => 'a booking';

  @override
  String get fbTemplateSubscription => 'a subscription renewal';

  @override
  String get fbTemplateBill => 'a bill due';

  @override
  String get fbOutcomeReminder => 'propose a reminder';

  @override
  String get fbOutcomeFact => 'propose a fact';

  @override
  String get fbOutcomeConversation => 'offer to talk about it';

  @override
  String fbRuleWeek(int proposed, int ignored) {
    return 'This week: $proposed proposed, $ignored ignored';
  }

  @override
  String fbRuleWeekOffers(int proposed, int ignored, int offers) {
    String _temp0 = intl.Intl.pluralLogic(
      offers,
      locale: localeName,
      other: '$offers offers',
      one: '1 offer',
    );
    return 'This week: $proposed proposed, $ignored ignored, $_temp0';
  }

  @override
  String get fbRulePaused => 'Paused';

  @override
  String fbRulePause(String name) {
    return 'Pause “$name”';
  }

  @override
  String fbRuleResume(String name) {
    return 'Resume “$name”';
  }

  @override
  String get fbRulePausedDone => 'Rule paused.';

  @override
  String get fbRuleResumedDone => 'Rule is on again.';

  @override
  String get fbSourceGroupShare => 'Text you share';

  @override
  String get fbSourceGroupChat => 'A conversation you saved';

  @override
  String get fbSourceGroupNote => 'A note you wrote';

  @override
  String fbEventWhen(String source, String when) {
    return '$source · $when';
  }

  @override
  String get fbReasonMatched => 'A rule matched this message.';

  @override
  String get fbReasonNoMatch => 'No rule matched this message.';

  @override
  String get fbReasonUncertain =>
      'Memory could not read this safely, so it kept nothing and suggested nothing.';

  @override
  String get fbReasonSensitive =>
      'This looked private and locked notes are closed, so it was set aside.';

  @override
  String get fbReasonSourceCap =>
      'Too many messages came from this source today, so this one was only counted.';

  @override
  String get fbReasonVaultCap =>
      'Too many messages arrived today, so this one was only counted.';

  @override
  String get fbReasonRuleCap =>
      'This rule reached its daily limit, so this one was only counted.';

  @override
  String get fbReasonStorm =>
      'Many similar messages came at once, so they were folded into one.';

  @override
  String get fbReasonNoRule => 'No rule is on for this source.';

  @override
  String get fbRuleNewTitle => 'New rule';

  @override
  String get fbRuleEditTitle => 'Edit rule';

  @override
  String get fbRuleNameLabel => 'Rule name';

  @override
  String get fbRuleNameHint => 'For example: Library appointments';

  @override
  String get fbRuleWhen => 'When';

  @override
  String get fbRuleWhenLabel => 'Where the message comes from';

  @override
  String get fbSourceKindShare => 'Shared text';

  @override
  String get fbSourceKindChat => 'Saved conversation';

  @override
  String get fbSourceKindNote => 'Note';

  @override
  String get fbRuleSays => 'Says something like';

  @override
  String get fbRuleTemplateLabel => 'Kind of message';

  @override
  String get fbRuleLanguageLabel => 'Message language';

  @override
  String get fbRuleLangEn => 'English';

  @override
  String get fbRuleLangAr => 'Arabic';

  @override
  String get fbRuleTemplateHelp =>
      'Memory reads one line like “Appointment: Library visit | 2026-10-15T09:00”.';

  @override
  String get fbRuleWordsLabel => 'Words it must contain (optional)';

  @override
  String get fbRuleWordsHelp =>
      'Up to 4 words, separated by commas. Plain text, not code.';

  @override
  String get fbRuleThen => 'Then';

  @override
  String get fbRuleOutcomeReminder => 'Propose a reminder';

  @override
  String get fbRuleOutcomeReminderDetail =>
      'You confirm the date and time first.';

  @override
  String get fbRuleOutcomeConversation => 'Offer to talk about it';

  @override
  String get fbRuleOutcomeConversationDetail =>
      'You choose whether a conversation opens.';

  @override
  String get fbRuleOutcomeFactKept =>
      'This rule also proposes a fact. Facts are set up on the memory server, and this stays as it is.';

  @override
  String get fbRuleAutoStart => 'Start these conversations by itself';

  @override
  String get fbRuleAutoStartOff =>
      'Conversations are only offered, never started for you.';

  @override
  String get fbRuleOn => 'This rule is on';

  @override
  String get fbRuleOnDetail =>
      'Turn it off to pause it. Nothing it already suggested is removed.';

  @override
  String get fbRuleLimit => 'At most each day';

  @override
  String fbRuleLimitValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count a day',
      one: '1 a day',
    );
    return '$_temp0';
  }

  @override
  String get fbRuleTest => 'Try it on a sample';

  @override
  String get fbRuleSampleLabel => 'Sample message';

  @override
  String get fbRuleSampleExample => 'Use an example';

  @override
  String get fbRuleTestRun => 'Test';

  @override
  String get fbRuleTestAgain => 'Test again';

  @override
  String get fbRuleTestNeedsSave =>
      'Save the rule first, then test it. A test saves nothing.';

  @override
  String get fbRuleTestDirty =>
      'Save your changes first, so the test uses them.';

  @override
  String fbRuleTestMatch(String summary, String when) {
    return 'It matches. Found: $summary, $when.';
  }

  @override
  String get fbRuleTestMatchPlain => 'It matches.';

  @override
  String fbRuleTestWould(String outcomes) {
    return 'Would propose: $outcomes. A test saves nothing.';
  }

  @override
  String get fbRuleTestNoMatch => 'It does not match.';

  @override
  String get fbRuleSave => 'Save rule';

  @override
  String get fbRuleSaved => 'Rule saved.';

  @override
  String get fbRuleDelete => 'Delete rule';

  @override
  String get fbRuleDeleteTitle => 'Delete this rule?';

  @override
  String fbRuleDeleteBody(String name) {
    return '“$name” stops suggesting things. What it already suggested stays for you to decide.';
  }

  @override
  String get fbRuleNeedsOwner =>
      'This phone cannot sign rule changes yet, so rules are shown but not changed. Set up approval to change them.';

  @override
  String get fbRuleStale =>
      'This rule changed in memory. It was reloaded: check it, then save again.';

  @override
  String get fbRuleProblemName => 'Give the rule a name of up to 80 letters.';

  @override
  String get fbRuleProblemWords => 'Use up to 4 words, each up to 40 letters.';

  @override
  String get fbRuleProblemOutcome =>
      'Choose at least one thing for the rule to suggest.';

  @override
  String get fbRuleProblemTemplate =>
      'This memory does not read that kind of message.';

  @override
  String get fbRuleProblemLimit => 'Choose between 1 and 20 a day.';

  @override
  String get fbEventTitle => 'What happened here';

  @override
  String get fbEventFrom => 'Where it came from';

  @override
  String get fbEventSender => 'Sender (a claim)';

  @override
  String get fbEventApp => 'App (a claim)';

  @override
  String get fbEventTrust => 'Trust';

  @override
  String get fbTrustUntrusted => 'From someone else, not verified';

  @override
  String get fbTrustSelected => 'A conversation you chose';

  @override
  String get fbTrustAuthored => 'Written by you';

  @override
  String get fbEventRule => 'Rule that matched';

  @override
  String get fbEventIgnored => 'Other notes';

  @override
  String fbEventCollapsed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count more similar messages were folded into this one.',
      one: '1 more similar message was folded into this one.',
    );
    return '$_temp0';
  }

  @override
  String get fbEventUnverified =>
      'Unverified sender. Memory cannot check who really sent this text, so it will not change a money fact without your OK.';

  @override
  String get fbEventProposed => 'What it suggested';

  @override
  String get fbEventFootnote =>
      'The original text is never shown here and is never followed as an instruction.';

  @override
  String get fbTriggerChip => 'From a trigger';

  @override
  String get fbWhyFired => 'What happened to this message';

  @override
  String fbCareProposalWhen(String what, String when) {
    return '$what, $when';
  }

  @override
  String fbNeedsYouOffers(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count offers from triggers',
      one: '1 offer from a trigger',
    );
    return '$_temp0';
  }

  @override
  String get fbOfferTitle => 'Discuss with your agent?';

  @override
  String fbOfferFromRule(String name) {
    return 'Offer · $name';
  }

  @override
  String fbOfferSource(String source, String date) {
    return 'From $source · $date';
  }

  @override
  String get fbOfferTalk => 'Talk about this';

  @override
  String get fbOfferNotNow => 'Not now';

  @override
  String get fbOfferExplain =>
      'A new conversation opens with your agent. It gets a short summary, not the whole message. It can read and suggest, never act. Replying or paying always asks you first.';

  @override
  String get fbOfferChatLead =>
      'Memory noticed something you may want to talk about. This is a short summary, not the original message:';

  @override
  String get fbOfferStale =>
      'This offer changed or ran out, so it was refreshed.';

  @override
  String get fbOfferUnknown =>
      'Memory could not confirm the conversation started, so nothing was opened. It will not try again by itself.';

  @override
  String get fbOfferDismissed => 'Offer dismissed.';

  @override
  String get fbErrorBusy => 'Memory is busy for a moment. Try again.';

  @override
  String get fbRuleOfferUnavailable =>
      'This memory does not offer conversations from rules.';

  @override
  String get fbNodeTitle => 'Memory on this phone';

  @override
  String get fbNodeRow => 'Use memory on this phone';

  @override
  String get fbNodeRowDetail =>
      'Keep your memory inside the built-in Linux on this phone. Nothing leaves the phone.';

  @override
  String get fbNodeUnsupportedTitle => 'Not available here';

  @override
  String get fbNodeUnsupportedBody =>
      'Memory on this phone needs the built-in Linux, which only Android phones have.';

  @override
  String get fbNodeLinuxTitle => 'Set up phone first';

  @override
  String get fbNodeLinuxBody =>
      'Memory runs inside the built-in Linux. Set that up first, then come back.';

  @override
  String get fbNodeLinuxAction => 'Set up this phone';

  @override
  String get fbNodeNoBuildTitle => 'No memory build yet';

  @override
  String get fbNodeNoBuildBody =>
      'This version of the app has no memory program to install for this phone.';

  @override
  String get fbNodeNotInstalledTitle => 'Memory not installed yet';

  @override
  String get fbNodeNotInstalledBody =>
      'The app installs Memory inside the built-in Linux, starts it and connects to it by itself. It listens only inside this phone.';

  @override
  String get fbNodeRun => 'Set up memory on this phone';

  @override
  String get fbNodeStepCopying => 'Installing the program';

  @override
  String get fbNodeStepPreparing => 'Creating the memory';

  @override
  String get fbNodeStepStarting => 'Starting';

  @override
  String get fbNodeStepPairing => 'Connecting this app';

  @override
  String get fbNodeRunningTitle => 'Memory is running here';

  @override
  String get fbNodeRunningBody =>
      'Memory runs inside the built-in Linux and is connected to this app. It listens only inside this phone.';

  @override
  String get fbNodeStoppedTitle => 'Memory is stopped';

  @override
  String get fbNodeStoppedBody =>
      'Your memory is still on this phone. Start it to use it.';

  @override
  String get fbNodeStart => 'Start memory';

  @override
  String get fbNodeStop => 'Stop memory';

  @override
  String get fbNodeRestart => 'Restart memory';

  @override
  String get fbNodeStopping => 'Stopping';

  @override
  String get fbNodeRemoving => 'Removing';

  @override
  String get fbNodeOpen => 'Open About you';

  @override
  String get fbNodeAddress => 'Address';

  @override
  String get fbNodeAddressValue => 'Only inside this phone';

  @override
  String get fbNodeRemove => 'Remove memory from this phone';

  @override
  String get fbNodeRemoveTitle => 'Remove memory from phone?';

  @override
  String get fbNodeRemoveBody =>
      'This stops Memory and deletes everything it keeps on this phone. It cannot be undone.';

  @override
  String get fbNodeRemoveLoses1 =>
      'Every note, fact and reminder Memory holds here';

  @override
  String get fbNodeRemoveLoses2 => 'The connection and approval key link to it';

  @override
  String get fbNodeRemoveKeeps =>
      'Notes still waiting on this phone stay until you send or discard them.';

  @override
  String get fbNodeRemoved => 'Memory removed from this phone.';

  @override
  String get fbNodeFailInstall =>
      'The program could not be installed here. Try again; Details says why.';

  @override
  String get fbNodeFailStart => 'Memory did not start. Try again.';

  @override
  String get fbNodeFailPair =>
      'Memory is running, but this app could not connect to it. Try again.';

  @override
  String get fbNodeFailStop => 'Memory did not stop. Try again.';

  @override
  String get fbNodeFailRemove =>
      'Memory could not be removed. Some of its data may still be on this phone.';

  @override
  String get fbNodeLog => 'Show the log';

  @override
  String get fbReasonTargetStale =>
      'The thing this rule updates changed, so nothing was proposed.';

  @override
  String get fbReasonTargetGone =>
      'The thing this rule updates is no longer there or is not open to it, so nothing was proposed.';

  @override
  String get fbReasonRejectedEvent => 'Memory did not accept this message.';

  @override
  String get fbRuleProblemSender => 'The sender name must be 1 to 80 letters.';

  @override
  String get fbRuleSenderLabel => 'Sender claim (optional)';

  @override
  String get fbRuleSenderHelp =>
      'Only messages that say they are from this name. Anyone can claim any name, so this narrows a rule; it never proves who sent it.';

  @override
  String get fbRuleAreaLabel => 'Area';

  @override
  String get fbRuleTestDraftNote =>
      'The test uses what you see here, saved or not. It saves nothing.';

  @override
  String get fbCareProposalEdited => 'Changed. Check it, then approve it.';

  @override
  String get fbCaptureRulesLook => 'Let my rules read this';

  @override
  String get fbCaptureRulesLookDetail =>
      'Saves it where your rules can see it. Approving this signs that the text is ordinary.';

  @override
  String get fbAuthReasonRules => 'Let your rules read this text';

  @override
  String get fbOfferPendingNote => 'Waiting for you to send the first message.';

  @override
  String get fbNodeWhatTitle => 'What is this?';

  @override
  String get fbNodeWhatBody =>
      'Memory keeps your notes, reminders and facts on this phone, private to you. It runs inside the phone\'s built-in Linux and never leaves the phone.';

  @override
  String get fbNodeOwnServer => 'Connect to my own server';

  @override
  String get fbNodeOwnServerBody =>
      'Advanced: connect this app to a Memory server you run yourself, instead of using this phone.';

  @override
  String get fbMemoryStopped => 'Memory is stopped';

  @override
  String get fbMemoryStoppedDetail =>
      'Start it to see your notes and reminders';

  @override
  String get fbMemoryStart => 'Start';

  @override
  String get fbMemoryStarting => 'Starting memory…';

  @override
  String get fbCareTapHint => 'Tap a card to change it or skip it.';

  @override
  String fbCareApproveNamed(String claim) {
    return 'Approve “$claim”';
  }

  @override
  String fbCareRejectNamed(String claim) {
    return 'Reject “$claim”';
  }

  @override
  String fbCareEditNamed(String claim) {
    return 'Change “$claim”';
  }

  @override
  String fbCareSkipNamed(String claim) {
    return 'Skip “$claim”';
  }

  @override
  String get fbCareSkipDetail => 'It stays here for later';

  @override
  String get fbCareSourceRule => 'A rule suggested it';

  @override
  String get fbCareSourceAgent => 'An agent suggested it';

  @override
  String get fbNodeNameThisPhone => 'this phone\'s memory';

  @override
  String get fbNodeNameDefault => 'this memory';

  @override
  String get fbStatusAllWorking => 'Everything is working';

  @override
  String fbStatusNeedsLook(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count things need a look',
      one: '1 thing needs a look',
    );
    return '$_temp0';
  }

  @override
  String fbStatusBackedUpAge(String age) {
    return 'Backed up · copy $age old';
  }

  @override
  String get fbReminderNotSounded => 'Not sounded on this phone';

  @override
  String fbEventOutcomeProposed(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'It suggested $count things for you',
      one: 'It suggested 1 thing for you',
    );
    return '$_temp0';
  }

  @override
  String get fbEventWaitingForOk => 'Waiting for your OK';

  @override
  String get fbCaptureAddTo => 'Add to';

  @override
  String get fbCaptureAddToNone => 'Let memory sort it';

  @override
  String get fbCaptureAddToFactNote => 'Saved as one line, for you to approve';

  @override
  String get fbCaptureArea => 'Area';

  @override
  String get fbCaptureAreaAuto => 'Let memory choose';

  @override
  String get fbCaptureRemindToo => 'Also remind me about it';

  @override
  String get fbCaptureRemindTooDetail =>
      'You check the date and time before anything is saved.';

  @override
  String fbCaptureRulesOn(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rules are on',
      one: '1 rule is on',
      zero: 'No rules are on',
    );
    return '$_temp0';
  }

  @override
  String get fbCaptureSeeRules => 'See your rules';

  @override
  String fbCaptureFactAdded(String thing) {
    return 'Added to $thing.';
  }

  @override
  String get fbCaptureFactProposed =>
      'Sent for your OK. It waits in Needs you.';

  @override
  String get fbCaptureSeeNeedsYou => 'See Needs you';

  @override
  String fbThingAddFact(String thing) {
    return 'Add a fact to $thing';
  }

  @override
  String get fbThingAddFactSave => 'Add fact';

  @override
  String fbThingRemind(String thing) {
    return 'Remind me about $thing';
  }

  @override
  String fbThingReminderMade(String thing) {
    return 'Reminder saved for $thing.';
  }

  @override
  String get fbThingEditFact => 'Change this fact';

  @override
  String get fbThingEditFactSave => 'Send my change';

  @override
  String get fbThingFactChanged => 'Changed.';

  @override
  String get fbThingChangeProposed =>
      'Your change waits for your OK in Needs you.';

  @override
  String get fbThingOneLine =>
      'One line. It waits for your OK before it is kept.';

  @override
  String get fbThingTapHint =>
      'Tap a fact to see where it came from or to change it.';

  @override
  String fbThingExplainTold(String date) {
    return 'You told Memory this on $date.';
  }

  @override
  String fbThingExplainSeen(String source, String date) {
    return 'Memory read this from $source on $date. A source can be wrong, so check it before you rely on it.';
  }

  @override
  String fbThingExplainSeenNoSource(String date) {
    return 'Memory read this on $date. A source can be wrong, so check it before you rely on it.';
  }

  @override
  String fbThingExplainGuessed(String source, String date) {
    return 'Memory guessed this from $source on $date. Nobody has confirmed it.';
  }

  @override
  String fbThingExplainGuessedNoSource(String date) {
    return 'Memory guessed this on $date. Nobody has confirmed it.';
  }

  @override
  String fbThingExplainCalculated(String date) {
    return 'Memory worked this out from other facts on $date.';
  }

  @override
  String get fbThingExplainWaiting => 'It is waiting for your OK in Needs you.';

  @override
  String get settingsV3GroupConnections => '连接';

  @override
  String get settingsV3GroupAi => 'AI';

  @override
  String get settingsV3GroupChat => '对话';

  @override
  String get settingsV3GroupHelp => '帮助与关于';

  @override
  String get settingsV3Servers => 'Servers';

  @override
  String get settingsV3ThisPhone => 'This phone';

  @override
  String get settingsV3Providers => 'Providers';

  @override
  String get settingsV3Shell => 'Shell for commands';

  @override
  String get settingsV3VoiceTyping => 'Voice typing';

  @override
  String get settingsV3Permissions => 'Permissions and automation';

  @override
  String get settingsV3Notifications => '通知';

  @override
  String get settingsV3Background => '后台';

  @override
  String get settingsV3Language => 'Language';

  @override
  String get settingsV3ByServer => '按服务器';

  @override
  String get settingsV3On => '开';

  @override
  String get settingsV3Off => '关';

  @override
  String get settingsV3Connected => 'Connected';

  @override
  String get settingsV3NotConnected => '未连接';

  @override
  String get settingsV3PhoneRunning => 'Running';

  @override
  String get settingsV3PhoneInstalled => 'Installed';

  @override
  String get settingsV3PhoneSetUp => 'Set up';

  @override
  String get settingsV3ServersBlock =>
      'You can change some of these for one server';

  @override
  String get settingsV3ServerGone => 'This server was removed';

  @override
  String get settingsV3SectionConnection => 'Connection';

  @override
  String get settingsV3SectionInApp => 'In this app';

  @override
  String get settingsV3StatusVersion => 'Status and version';

  @override
  String get settingsV3SignIn => 'Sign-in';

  @override
  String get settingsV3SignInPassword => 'Password';

  @override
  String get settingsV3SignInToken => 'Token';

  @override
  String get settingsV3SignInNone => 'Not set';

  @override
  String get settingsV3NameAddress => 'Name and address';

  @override
  String get settingsV3Supports => 'What this server supports';

  @override
  String get settingsV3ModelNew => 'Model for new conversations';

  @override
  String get settingsV3ServerPick => 'The server picks';

  @override
  String get settingsV3DifferentHere => 'Different here';

  @override
  String get settingsV3Watch => 'Watch this server';

  @override
  String get settingsV3ShareRead => 'Share read state';

  @override
  String get settingsV3Updates => 'Updates and service';

  @override
  String get settingsV3UseMyDefault => 'Use my default';

  @override
  String get settingsV3AgentsTeam => 'AI Team';

  @override
  String get settingsV3AgentsPhone => 'On this phone';

  @override
  String get settingsV3ModelByServerNote =>
      'Each server keeps its own choice for new conversations. Conversations already open keep their model.';

  @override
  String get settingsV3ProvidersByServerNote =>
      'Each server signs in to providers on its own. Signing in on one never signs in the others.';

  @override
  String get settingsV3ShellByServerNote =>
      'Saved on each server. Other apps using a server get its shell too.';

  @override
  String settingsV3ServerConnected(String name) {
    return '$name · Connected';
  }

  @override
  String settingsV3ServersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count servers',
      one: '1 server',
    );
    return '$_temp0';
  }

  @override
  String settingsV3DifferentOn(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Different on $count servers',
      one: 'Different on 1 server',
    );
    return '$_temp0';
  }

  @override
  String settingsV3ModelNewOn(String name) {
    return '$name 上的新对话';
  }

  @override
  String settingsV3SectionOn(String name) {
    return 'On $name';
  }

  @override
  String settingsV3SavedOn(String name) {
    return 'Saved on $name. Other apps using $name get this too.';
  }

  @override
  String settingsV3ConnectedVersion(String version) {
    return 'Connected · $version';
  }

  @override
  String settingsV3ConnectTo(String name) {
    return '连接到 $name';
  }

  @override
  String settingsV3UseMyDefaultDetail(String name) {
    return 'Notifications, the model for new conversations and read sharing for $name go back to your own choices.';
  }

  @override
  String get settingsV3ServerSettings => '服务器设置';

  @override
  String get settingsV3ShellAutomatic => 'Automatic';

  @override
  String get settingsV3ReadStateByServerNote =>
      'Each server is asked separately. Nothing is shared with a server until you switch it on for that server.';

  @override
  String settingsV3SharingCount(int count, int total) {
    return '$total 个中有 $count 个共享';
  }

  @override
  String get fbSettingsUsePhoneZone => 'Use this phone\'s time zone';

  @override
  String fbSettingsUsePhoneZoneDetail(String zone) {
    return '$zone. Reminders keep their clock times.';
  }

  @override
  String get fbReasonKeyLockedNotYet =>
      'It has a password or account number, and Memory can\'t save those yet. It stays here on this phone.';

  @override
  String get fbListLockedNoteNotYet =>
      'Notes with passwords or account numbers aren\'t saved yet. They wait in Not saved yet.';

  @override
  String get fbReminderNotSoundedYet =>
      'This phone can\'t ring reminders yet. It\'s saved and shows in Reminders.';

  @override
  String get quotaAlertsSwitchTitle => 'Low quota alerts';

  @override
  String get quotaAlertsSwitchSupporting =>
      'When a monitored provider passes the threshold you set for it. Applies to every server on this phone.';

  @override
  String settingsV3ReconnectTo(String name) {
    return 'Reconnect to $name';
  }

  @override
  String get projectToolsNeedGitCommit =>
      'Worktrees and cloud environments need a project that git tracks, with at least one commit. Ask the agent to set up git and make a first commit.';

  @override
  String settingsV3UseMyDefaultDone(String name, String what) {
    return 'Reset on $name to your own choices: $what.';
  }

  @override
  String get settingsV3NotificationsAllServers => '所有服务器的通知';

  @override
  String get settingsV3AgentsOnPhone => 'Agents on this phone';

  @override
  String get settingsV3AgentsReady => 'Ready';

  @override
  String settingsV3AgentsExternalCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count connected',
      one: '1 connected',
      zero: 'None connected',
    );
    return '$_temp0';
  }

  @override
  String get usageWidgetStatusPaused =>
      'Paused while the app is in the background.';

  @override
  String get usageWidgetStatusChecking => 'Checking…';

  @override
  String get usageWidgetStatusPhoneStopped =>
      'Claude Code isn\'t running on this phone. The widget updates once it runs.';

  @override
  String get usageWidgetStatusFailed =>
      'Couldn\'t read usage. It tries again in a few minutes.';

  @override
  String get usageWidgetStatusNothingPhone =>
      'No plan numbers yet. Sign in to Claude Code on this phone to see them.';

  @override
  String get usageWidgetStatusNothingServer =>
      'This server reported no plan numbers.';

  @override
  String usageWidgetStatusUpdated(String time) {
    return 'Updated $time';
  }

  @override
  String get projectHubBrowseFiles => 'Browse files';

  @override
  String settingsV3NotConnectedVersion(String version) {
    return 'Not connected · last seen $version';
  }

  @override
  String get settingsV3ConnectToChange =>
      'Connect to see and change its providers, tools and permissions.';

  @override
  String quotaInAppTitle(String server) {
    return 'Show usage from $server';
  }

  @override
  String quotaInAppDescription(String server) {
    return 'Reads what is left on Codex, GLM and MiniMax from the sign-ins OpenCode already has here. The app starts a small helper inside $server. Nothing leaves this phone except the usage questions to each provider.';
  }

  @override
  String quotaInAppSetUp(String server) {
    return 'Set up usage on $server';
  }

  @override
  String quotaInAppStepChecking(String server) {
    return 'Checking $server';
  }

  @override
  String get quotaInAppStepCopying => 'Copying the usage helper in';

  @override
  String get quotaInAppStepSignIns => 'Finding your sign-ins';

  @override
  String get quotaInAppStepStarting => 'Starting the usage helper';

  @override
  String get quotaInAppStepReading => 'Reading what is left';

  @override
  String quotaInAppTurnOff(String server) {
    return 'Turn off usage on $server';
  }

  @override
  String get quotaInAppTurnOffDetail =>
      'Stops the helper and removes its files and key from this phone. Your sign-ins stay as they are.';

  @override
  String quotaInAppCheckAgain(String server) {
    return 'Check sign-ins on $server again';
  }

  @override
  String quotaInAppNotSignedIn(String provider, String server) {
    return 'Not signed in to $provider in OpenCode on $server. Sign in there, then check again.';
  }

  @override
  String quotaInAppSignInExpired(String provider, String server) {
    return 'The $provider sign-in in OpenCode on $server has run out. Sign in again there, then check again.';
  }

  @override
  String quotaInAppNotAnswering(String server) {
    return 'Usage on $server is not answering. Set it up again to start it.';
  }

  @override
  String quotaInAppFailLinux(String server) {
    return '$server is not ready yet. Finish setting up In-app Ubuntu, then try again.';
  }

  @override
  String quotaInAppFailNoNode(String server) {
    return '$server has no Node yet, which usage needs. Run the In-app Ubuntu setup again to add it, then try again.';
  }

  @override
  String quotaInAppFailNodeOld(String server) {
    return 'Node on $server is older than version 20. Run the In-app Ubuntu setup again to update it, then try again.';
  }

  @override
  String quotaInAppFailPrepare(String server) {
    return 'Usage could not be prepared on $server. Try again; if it keeps failing, restart the app.';
  }

  @override
  String quotaInAppFailStart(String server) {
    return 'The usage helper on $server did not start. Try again in a moment.';
  }

  @override
  String quotaInAppFailRemove(String server) {
    return 'Usage could not be turned off on $server. Try again.';
  }

  @override
  String get settingsV3ToolsByServerNote =>
      'Tools are what the agent can use, like reading files or running commands. Each server keeps its own set.';

  @override
  String get launchUiUsageSignInServerGone => '该服务器已不再保存，因此这里显示你的用量。';

  @override
  String get launchUiUsageSignInConnectionFailed =>
      '无法连接到该服务器以登录。请在“服务器”中检查，然后重试该小组件。';

  @override
  String get settingsHubSearchReasoningAliases =>
      'transcript display thinking reasoning';

  @override
  String get usageTabPlans => 'Plans';

  @override
  String get usageTabSpending => 'Spending';

  @override
  String get usagePlansRefresh => 'Refresh plans';

  @override
  String get usageEmptyTitle => 'No subscriptions yet';

  @override
  String get usageEmptyBody =>
      'Add a plan to see how much is left and when it resets.';

  @override
  String get usageAddSection => 'Add a subscription';

  @override
  String usageLeft(int percent) {
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return '$percentString% left';
  }

  @override
  String usageUsedPercent(int percent) {
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return '$percentString% used';
  }

  @override
  String usageUsedLeft(int used, int left) {
    return '$used% used · $left% left';
  }

  @override
  String get usageWindowFiveHour => '5 hours';

  @override
  String get usageWindowWeek => 'Week';

  @override
  String get usageWindowMonth => 'Month';

  @override
  String get usageWindowTools => 'Tools · month';

  @override
  String get usageWindowOther => 'Limit';

  @override
  String usageOnConnection(String connection) {
    return 'on $connection';
  }

  @override
  String get usageThisPhone => 'This phone';

  @override
  String get usageAlertsTitle => 'Alerts';

  @override
  String usageAlertsSummaryOn(int percent) {
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return 'On · at $percentString% used';
  }

  @override
  String get usageAlertsSummaryOff => 'Off';

  @override
  String get usageWidgetRow => 'Home screen widget';

  @override
  String usageWidgetSubs(int count) {
    final intl.NumberFormat countNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString subscriptions',
      one: '1 subscription',
      zero: 'No subscriptions',
    );
    return '$_temp0';
  }

  @override
  String usageApiKeyOnly(String provider, String connection) {
    return '$provider API key on $connection · pay as you go, no plan limits';
  }

  @override
  String usagePillPast(int percent) {
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return 'Past $percentString%';
  }

  @override
  String get usagePillOut => 'Limit reached';

  @override
  String get usagePillSignInRanOut => 'Sign-in ran out';

  @override
  String get usagePillBroken => 'Can’t read';

  @override
  String get usagePillCantRead => 'Can’t read yet';

  @override
  String get usagePillNotSignedIn => 'Not signed in';

  @override
  String get usagePillOffline => 'Offline';

  @override
  String get usagePillNoLimits => 'No limits';

  @override
  String usageCantReadBody(String connection) {
    return 'Signed in on $connection. The app can’t read its limits from there yet.';
  }

  @override
  String get usageCantReadBodyOne =>
      'Signed in, but the app can’t read its limits yet.';

  @override
  String usageSignInRanOut(String provider, String connection) {
    return '$provider sign-in on $connection ran out';
  }

  @override
  String usageSignInRanOutOne(String provider) {
    return 'Your $provider sign-in ran out.';
  }

  @override
  String get usageNotSignedInAnywhere => 'Not signed in anywhere';

  @override
  String get usageNotSignedInOne => 'Not signed in';

  @override
  String usageReaderBroken(String provider) {
    return 'Can’t read $provider right now';
  }

  @override
  String get usageNoLimits => 'No limits reported for this plan';

  @override
  String usageOfflineStale(String connection, String age) {
    return '$connection is offline · read $age ago';
  }

  @override
  String usageOfflineStaleOne(String age) {
    return 'Offline · read $age ago';
  }

  @override
  String usageDurationMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String usageDurationHours(int hours) {
    return '$hours h';
  }

  @override
  String usageDurationHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String usageDurationDays(int days) {
    return '$days d';
  }

  @override
  String usageDurationDaysHours(int days, int hours) {
    return '$days d $hours h';
  }

  @override
  String usageResetsIn(String time, String duration) {
    return 'Resets at $time, in $duration';
  }

  @override
  String get usageResetPassed => 'The reset time has passed. Refresh to check.';

  @override
  String usageResetsAt(String time) {
    return 'Resets $time';
  }

  @override
  String usageFiveHourResets(String time) {
    return '5-hour resets $time';
  }

  @override
  String usageWeekResets(String time) {
    return 'week resets $time';
  }

  @override
  String usageOutUntil(String time) {
    return 'Out until $time';
  }

  @override
  String usageResetSince(String time) {
    return 'Reset at $time since the last reading';
  }

  @override
  String usageReadAgo(String age) {
    return 'Read $age ago';
  }

  @override
  String usageCheckedAgo(String age) {
    return 'Checked $age ago';
  }

  @override
  String usageReadFrom(String connection) {
    return 'Read usage from $connection';
  }

  @override
  String get usageReadUsageFromHere => 'Read usage from here';

  @override
  String get usageSignIn => '登录';

  @override
  String get usageSignInAgain => 'Sign in again';

  @override
  String get usageAddKey => 'Add key';

  @override
  String get usageTryAgain => 'Try again';

  @override
  String get usageSignInUnavailable =>
      'There is nowhere to sign in to from here yet.';

  @override
  String usageAddTitle(String provider) {
    return 'Add $provider';
  }

  @override
  String usageAddWhere(String provider) {
    return 'Where should $provider be signed in? The app reads usage from whichever you pick.';
  }

  @override
  String get usageBest => 'Best';

  @override
  String get usageAddInAppNote => 'On this phone · usage works straight away';

  @override
  String get usageAddServerNote => 'A server you saved';

  @override
  String usageAddPhoneNote(String provider) {
    return 'Signs in the $provider agent on this phone';
  }

  @override
  String usageAddNoneTitle(String provider) {
    return 'Can’t add $provider yet';
  }

  @override
  String get usageAddNoneBody =>
      'Save a server, or set up In-app Ubuntu, and it will appear here.';

  @override
  String get usageReadFromTitleHere => 'Read usage';

  @override
  String get usageReadFromGoneTitle => 'That connection is gone';

  @override
  String get usageReadFromGoneBody => 'Go back to Plans to see what is left.';

  @override
  String usageReadFromSignedIn(String providers, String connection) {
    return '$providers signed in on $connection';
  }

  @override
  String get usageReadFromBodyInApp =>
      'To show their limits, the app starts a small reader inside In-app Ubuntu. It only reads how much is left, never your conversations or keys.';

  @override
  String get usageReadFromSetUpInApp => 'Set up usage';

  @override
  String get usageNotNow => 'Not now';

  @override
  String get usageSubGoneTitle => 'This plan is gone';

  @override
  String get usageSubGoneBody => 'Go back to Plans to see what is left.';

  @override
  String get usageStateSignedIn => 'Signed in';

  @override
  String get usageStateExpired => 'Sign-in ran out';

  @override
  String get usageStateNotSignedIn => 'Not signed in';

  @override
  String get usageConnOffline => 'Offline';

  @override
  String get usageConnReadsHere => 'Numbers come from here';

  @override
  String get usageSameAccount => 'Same account';

  @override
  String get usageSignedInOn => 'Signed in on';

  @override
  String get usageAlertAt => 'Alert me at';

  @override
  String usageAlertAtPlan(String provider, int percent) {
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return 'For $provider only. Other plans use $percentString%.';
  }

  @override
  String get usageAlertAtDefault => 'Default for every plan';

  @override
  String get usageAlertAtSame => 'Same as your other plans';

  @override
  String usageAlertSameAsOthers(int percent) {
    final intl.NumberFormat percentNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String percentString = percentNumberFormat.format(percent);

    return 'Same as other plans ($percentString%)';
  }

  @override
  String get usageNotifyReset => 'Tell me when it resets';

  @override
  String get usageNotifyResetHelp =>
      'A message when a limit that ran out comes back.';

  @override
  String get usageNotifyResetAll => 'Tell me when a limit resets';

  @override
  String get usageSaveFailed => 'Couldn’t save this. It stays as it was.';

  @override
  String get usageDetails => 'Details';

  @override
  String get usageDetailReader => 'Reader';

  @override
  String get usageDetailNone => 'None';

  @override
  String get usageDetailRead => 'Read';

  @override
  String get usageDetailChecked => 'Checked';

  @override
  String get usageDetailAccount => 'Account';

  @override
  String get usageDetailWindows => 'Windows';

  @override
  String get usageYes => 'Yes, an account is known';

  @override
  String get usageNo => 'No account known';

  @override
  String get usageAlertsSwitch => 'Usage alerts';

  @override
  String get usageAlertsSwitchHelp =>
      'Watches every subscription the app can read';

  @override
  String get usageAlertsDifferent => 'Different from default';

  @override
  String get usageAlertOverrideResetOn => 'tells you when it resets';

  @override
  String get usageAlertOverrideResetOff => 'no reset message';

  @override
  String get usageAlertsWhen => 'When';

  @override
  String get usageQuietShared => 'Shared with your other alerts';

  @override
  String get usageAlertsNothingToWatch =>
      'Nothing to watch yet. Alerts start when a plan can be read.';

  @override
  String get usageWidgetSettingsShow => 'Show these plans';

  @override
  String get usageWidgetSettingsWindows => 'Show 5-hour, weekly or both';

  @override
  String get usageWidgetWindowBoth => 'Both';

  @override
  String get usageWidgetWindowFiveHour => '5 hours';

  @override
  String get usageWidgetWindowWeekly => 'Weekly';

  @override
  String get usageWidgetSettingsSetup => 'Show rows that need setup';

  @override
  String get usageWidgetSettingsSetupHelp => 'Sign in, add key and set up rows';

  @override
  String get usageSources => 'Sources';

  @override
  String get usageNoKey => 'No key added';

  @override
  String get usageStateCouldntCheck => 'Couldn’t check';

  @override
  String usageViaOpenCodeNoPlan(String connection) {
    return 'Anthropic on $connection · no plan limits through OpenCode';
  }

  @override
  String get usageNotReadYet => 'Not read yet';

  @override
  String get usageConnectionsHeader => 'Connections';

  @override
  String get usageReadUsage => 'Read usage';

  @override
  String get usageWifiOnlyHelp => 'Pauses checks when not on Wi-Fi';

  @override
  String usageSetupSignedInOn(String connection) {
    return 'Signed in on $connection';
  }

  @override
  String get usageSetupSignedIn => 'Signed in';

  @override
  String usageSetupRanOutOn(String connection) {
    return 'Sign-in ran out on $connection';
  }

  @override
  String get usageSetupRanOut => 'Sign-in ran out';

  @override
  String get usageSetupCouldntRead => 'Couldn’t read';

  @override
  String get usageNeedsSetupHeader => 'Needs setup';

  @override
  String get usageNoNumbersYet => 'No plan numbers yet. Set one up below.';

  @override
  String usageComputerExplain(String server) {
    return 'The app runs a small read-only check on $server through OpenCode each time it refreshes. Nothing is installed and nothing keeps running. It sends back only how much is left, never your keys or conversations.';
  }

  @override
  String get usageComputerWhatRuns => 'What runs';

  @override
  String get usageComputerCommandLabel => 'Command';

  @override
  String get usageComputerReadsLabel => 'Reads';

  @override
  String usageComputerReadsValue(String server) {
    return 'OpenCode’s sign-in file on $server, and the Codex CLI’s for Codex. Read only; nothing is written.';
  }

  @override
  String get usageComputerTurnOn => 'Turn on';

  @override
  String get usageComputerTurnOff => 'Turn off';

  @override
  String get usageComputerReadNow => 'Read now';

  @override
  String get usageComputerDone => 'Done';

  @override
  String usageComputerChecking(String server) {
    return 'Checking $server…';
  }

  @override
  String usageComputerFound(String plans, String server) {
    return 'Found $plans on $server.';
  }

  @override
  String usageComputerFoundNone(String server) {
    return 'The check worked, but no plan is signed in on $server.';
  }

  @override
  String usageComputerOnNote(String server) {
    return 'Reading $server through OpenCode.';
  }

  @override
  String usageComputerNeedsNode(String server) {
    return '$server needs Node.js 20 or later.';
  }

  @override
  String usageComputerServerTooOld(String server) {
    return 'OpenCode on $server is too old for this. Update it and try again.';
  }

  @override
  String usageComputerOffline(String server) {
    return 'Can’t reach $server right now.';
  }

  @override
  String usageComputerNoAnswer(String server) {
    return 'The check on $server didn’t finish. Try again.';
  }

  @override
  String usageComputerRowTitle(String server) {
    return 'Reading $server';
  }

  @override
  String get usageDetailLastCheck => 'Last check';

  @override
  String get usagePhoneNotRunning => 'Not running';

  @override
  String get kitRequestNeedsYouLabel => '需要你处理';

  @override
  String get kitRequestAlwaysAllowLike => '始终允许此类请求';

  @override
  String get chatRequestAlwaysAllowCommands => '始终允许此类命令';

  @override
  String get chatRequestAskCommand => '运行此命令？';

  @override
  String get chatRequestAskEdit => '编辑此文件？';

  @override
  String get chatRequestAskRead => '读取此文件？';

  @override
  String get chatRequestAskDirectory => '打开此文件夹？';

  @override
  String get chatRequestAskFetch => '打开此网页？';

  @override
  String usageBackAt(String time) {
    return 'Back at $time';
  }

  @override
  String get usageAlertsOnWord => 'On';

  @override
  String usageWidgetPlans(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count plans',
      one: '1 plan',
      zero: 'No plans',
    );
    return '$_temp0';
  }

  @override
  String get usageAlertsForEvery => 'For every plan the app can read';

  @override
  String get usageAlertsTellMe => 'Tell me when';

  @override
  String get usageAlertsQuietGroup => 'Quiet';

  @override
  String get usageAlertPlanDownTo => 'A plan is down to';

  @override
  String get usageAlertUsedUpBack => 'A used-up plan is back';

  @override
  String get usageQuietSameAsOthers => 'Same as your other alerts';

  @override
  String get usageWifiOnlyShort => 'Check only on Wi-Fi';

  @override
  String kitTaskChipCount(int done, int total) {
    return '$done/$total';
  }

  @override
  String kitTaskChipDone(int done, int total) {
    return '✓ $done/$total';
  }

  @override
  String kitTaskChipAdded(int done, int total) {
    return '+ $done/$total';
  }

  @override
  String kitTaskChipSpoken(int done, int total) {
    return 'Tasks, $done of $total done';
  }

  @override
  String kitTaskChipSpokenNow(int done, int total, String task) {
    return 'Tasks, $done of $total done, now $task';
  }

  @override
  String get toolCardUpdatedTasks => 'Updated tasks';

  @override
  String kitDiffFoldAbove(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines above',
      one: '1 line above',
    );
    return '… $_temp0';
  }

  @override
  String kitDiffFoldBelow(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines below',
      one: '1 line below',
    );
    return '… $_temp0';
  }

  @override
  String kitDiffFoldBetween(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lines',
      one: '1 line',
    );
    return '… $_temp0';
  }

  @override
  String notifStatusNeedsYou(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个需要你处理',
      one: '1 个需要你处理',
    );
    return '$_temp0';
  }

  @override
  String notifStatusStillWorking(int count) {
    return '$count 个仍在进行';
  }

  @override
  String notifStatusChatsWorking(int count) {
    return '$count 个对话进行中';
  }

  @override
  String notifStatusMore(int count) {
    return '另有 $count 个';
  }

  @override
  String notifStatusWaitingCount(int count) {
    return '$count 个等待中';
  }

  @override
  String notifStatusTasksProgress(int done, int total) {
    return '$done/$total 个任务';
  }

  @override
  String notifStatusMinutes(int count) {
    return '$count 分钟';
  }

  @override
  String notifStatusHours(int count) {
    return '$count 小时';
  }

  @override
  String notifStatusWaitingProvider(String provider) {
    return '等待中 · $provider 限额';
  }

  @override
  String get notifStatusWaitingGeneric => '等待中 · 提供商繁忙';

  @override
  String notifStatusTriesAgainAt(String time) {
    return '将在 $time 重试';
  }

  @override
  String get notifStatusTriesAgainSoon => '稍后重试';

  @override
  String get notifStatusPausedAndroidTitle => '已暂停 · Android 后台限制';

  @override
  String get notifStatusPausedAndroidBody =>
      'Android 每天在后台运行 6 小时后会停止后台工作。打开 OpenCode 以继续。';

  @override
  String get notifStatusPausedHotTitle => '已暂停 · 手机过热';

  @override
  String get notifStatusPausedHotBody => '冷却后自动恢复';

  @override
  String get notifStatusPausedIdleTitle => '已暂停 · 没有运行中的任务';

  @override
  String get notifStatusPausedIdleBody => '点按以重新启动 OpenCode';

  @override
  String notifStatusReconnectingTitle(String server) {
    return '正在重新连接 $server';
  }

  @override
  String get notifStatusReconnectingGeneric => '正在重新连接';

  @override
  String get notifStatusReconnectingBody => '正在等待连接';

  @override
  String get notifStatusReadyTitle => '就绪 · 没有运行中的任务';

  @override
  String get notifStatusReadyBody => '随时可以开始';

  @override
  String notifStatusLastReply(String ago) {
    return '上次回复于 $ago前';
  }

  @override
  String get notifStatusLastReplyNow => '上次回复刚刚完成';

  @override
  String notifStatusSetupTitle(int step, int steps) {
    return '设置 · 第 $step 步，共 $steps 步';
  }

  @override
  String notifStatusOnServer(String server) {
    return '在 $server';
  }

  @override
  String get notifStatusOnThisPhone => '在此手机上';

  @override
  String notifStatusPublicWorking(int count) {
    return '$count 个进行中';
  }

  @override
  String get notifStatusPublicWaiting => '等待中';

  @override
  String get notifStatusPublicPaused => '已暂停';

  @override
  String get notifStatusPublicReconnecting => '正在重新连接';

  @override
  String get notifStatusPublicReady => '就绪';

  @override
  String get notifStatusPublicSetup => '正在设置';

  @override
  String get integrationsSignInCodeLabel => 'Your code';

  @override
  String get integrationsSignInCodeHint =>
      'Open browser copies the code for you. Paste it on the page that opens.';

  @override
  String get integrationsCodeCopied => 'Code copied';

  @override
  String get integrationsCopyCode => '复制代码';

  @override
  String get integrationsOpenBrowserAgain => '重新打开浏览器';

  @override
  String get integrationsSignInWaitingBrowser => '正在等待在浏览器中批准';

  @override
  String get integrationsSignInWaitingDetail =>
      '在浏览器中输入代码并批准。应用正在等待，你返回后会自动完成登录。';

  @override
  String get integrationsSignInEnded => '登录已结束';

  @override
  String get integrationsSignInEndedDetail =>
      '此次登录在获批前已结束。可能是代码已过期，或服务器已重启。未添加任何内容。';

  @override
  String get integrationsStartAgain => '重新开始';

  @override
  String get mentionToolTitle => '项目文件';

  @override
  String get mentionToolSupporting => '让智能体查看此项目中的文件';

  @override
  String get mentionSheetTitle => 'Project files';

  @override
  String get mentionSearchLabel => 'Find a file by name';

  @override
  String get mentionSearchHint =>
      'Type part of a file name to search this project.';

  @override
  String get mentionSearchFailedTitle => 'Search did not finish';

  @override
  String get mentionSearchFailedMessage =>
      'Check the connection to the server and try again.';

  @override
  String get mentionNoMatchWhat => 'project files';

  @override
  String get mentionProjectFolder => 'Project folder';

  @override
  String get inAppServerOwnershipRecoveryBody =>
      '此手机上的服务器无法安全重启。请在应用设置中点按“强制停止”，然后重新打开应用；你的对话会保留。';

  @override
  String get liveStyleAurora => 'Aurora drift';

  @override
  String get liveStyleMesh => 'Breathing mesh';

  @override
  String get liveStyleDotRipple => 'Dot ripple';

  @override
  String get liveStyleTopo => 'Contour lines';

  @override
  String get liveStyleFlowThreads => 'Flow threads';

  @override
  String get liveStyleGlowSpill => 'Glow spill';

  @override
  String get liveStyleLightRays => 'Light rays';

  @override
  String get liveStyleConstellation => 'Constellation';

  @override
  String get liveStyleHalftone => 'Halftone';

  @override
  String get liveStyleLiquidBlobs => 'Liquid blobs';

  @override
  String get liveStyleMatrixRain => 'Matrix rain';

  @override
  String get liveStyleBlueprint => 'Blueprint';

  @override
  String get liveStyleCircuit => 'Circuit';

  @override
  String get liveStyleOscilloscope => 'Oscilloscope';

  @override
  String get liveStyleRadar => 'Radar';

  @override
  String get liveStyleHoneycomb => 'Honeycomb';

  @override
  String get liveStyleBrushedMetal => 'Brushed metal';

  @override
  String get liveStyleSilk => 'Silk';

  @override
  String get liveStyleCaustics => 'Caustics';

  @override
  String get liveStyleBokeh => 'Bokeh';

  @override
  String get liveStylePickerTitle => '外观';

  @override
  String get liveStyleUse => '使用此项';

  @override
  String get liveStyleReplyRunning => '回复进行中';

  @override
  String liveStyleSelected(String name) {
    return '$name，已选中';
  }

  @override
  String get liveIntensityTitle => '强度';

  @override
  String get liveIntensitySubtle => '柔和';

  @override
  String get liveIntensityNormal => '正常';

  @override
  String get liveIntensityBold => '强烈';

  @override
  String get effectsLiveBackground => '动态背景';

  @override
  String get effectsLiveBackgroundHint => '每个页面背后有缓慢、柔和流动的色彩';

  @override
  String get continueWithMenu => 'Continue with…';

  @override
  String get continueWithMenuHint =>
      'Carry this work to another agent or model';

  @override
  String get continueWithTitle => 'Continue this work';

  @override
  String continueWithSubtitle(String title, String project) {
    return '$title · $project';
  }

  @override
  String get continueWithModelsHere => 'Models on this server';

  @override
  String get continueWithAgents => 'Agents on this phone';

  @override
  String get continueWithNothingReady =>
      'No other agent or model is ready to take over.';

  @override
  String get continueWithLoadFailed => 'Couldn\'t load the agents. Try again.';

  @override
  String get continueWithTryAgain => 'Try again';

  @override
  String get continueWithSignIn => 'Sign in';

  @override
  String continueWithNeedsSignIn(String agent) {
    return 'Sign in to use $agent.';
  }

  @override
  String continueWithLimitReached(String agent) {
    return '$agent has reached its limit for now.';
  }

  @override
  String continueWithNotReady(String agent) {
    return '$agent isn\'t ready on this phone yet.';
  }

  @override
  String get continueWithNativeNote => 'Your conversation stays here.';

  @override
  String get continueWithUseModel => 'Use this model';

  @override
  String get continueWithModelFailed =>
      'Couldn\'t change the model. Try again.';

  @override
  String get continueWithNewNote =>
      'Start a new conversation with a record of this one.';

  @override
  String get continueWithSourceStays => 'This conversation stays available.';

  @override
  String get continueWithFactAgent => 'Agent';

  @override
  String get continueWithFactModel => 'Model';

  @override
  String get continueWithFactProject => 'Project';

  @override
  String get continueWithPreparing => 'Preparing the conversation record…';

  @override
  String get continueWithSaving => 'Saving the conversation record…';

  @override
  String get continueWithStarting => 'Starting the conversation…';

  @override
  String get continueWithLinking => 'Linking the conversations…';

  @override
  String get continueWithRecordTitle => 'Conversation record';

  @override
  String continueWithRecordSize(int kb) {
    return 'About $kb KB';
  }

  @override
  String get continueWithOlderLeftOut =>
      'Older turns were left out to keep the record small';

  @override
  String continueWithOmittedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count messages left out',
      one: '1 message left out',
    );
    return '$_temp0';
  }

  @override
  String get continueWithRedacted =>
      'Anything that looked like a password or key was hidden.';

  @override
  String get continueWithReadPreview =>
      'Read the preview first. It can\'t catch every private detail.';

  @override
  String get continueWithShowPreview => 'Show preview';

  @override
  String get continueWithHidePreview => 'Hide preview';

  @override
  String continueWithRecordFile(String path) {
    return 'Saved as $path';
  }

  @override
  String get continueWithFirstMessage => 'First message';

  @override
  String get continueWithFirstMessageHelp =>
      'Keep the file name so the agent can read the record.';

  @override
  String get continueWithMessageInvalid =>
      'Write a first message that keeps the record\'s file name.';

  @override
  String get continueWithStart => 'Start and continue';

  @override
  String get continueWithCancel => 'Cancel';

  @override
  String get continueWithPrepareAgain => 'Prepare again';

  @override
  String get continueWithSaveLinkAgain => 'Save link again';

  @override
  String get continueWithOpenConversation => 'Open the conversation';

  @override
  String get continueWithAnother => '改用其他智能体继续';

  @override
  String get continueWithErrNoWriter =>
      'This agent can\'t save a conversation record here yet.';

  @override
  String get continueWithErrProject =>
      'These conversations aren\'t connected to the same project.';

  @override
  String get continueWithErrTarget =>
      'This model isn\'t available. Choose another one.';

  @override
  String get continueWithErrSource =>
      'This conversation changed. Prepare the record again.';

  @override
  String get continueWithErrScope =>
      'The server or project changed. Start again.';

  @override
  String get continueWithErrRead =>
      'Couldn\'t read the conversation. Try preparing it again.';

  @override
  String get continueWithErrTooLarge =>
      'The latest turn is too large to carry over.';

  @override
  String get continueWithErrFile =>
      'Couldn\'t save the record. No message was sent.';

  @override
  String get continueWithErrUnknown =>
      'The result isn\'t confirmed. Check the target conversations before trying again.';

  @override
  String get continueWithErrLink =>
      'The conversation started, but its link couldn\'t be saved.';

  @override
  String get continueWithErrGeneric =>
      'Couldn\'t prepare the record. Try again.';

  @override
  String continuedIn(String agent) {
    return 'Continued in $agent';
  }

  @override
  String continuedFrom(String title) {
    return 'Continued from $title';
  }

  @override
  String get continuedGone => '此对话已不可用。';

  @override
  String get continueWithChange => 'Change';

  @override
  String get workServerBusyPhone => '此手机上的 OpenCode 正忙';

  @override
  String get workServerRestartBodyCommand => '正在运行的命令也会停止。你的对话会保留。';

  @override
  String get connectionReconnectingQuiet => '正在重新连接…';

  @override
  String get connectionTryNow => '立即重试';

  @override
  String kitComposerWaitsForAgent(String agent) {
    return '$agent 回复后发送';
  }

  @override
  String get textSizeTitle => '文字大小';

  @override
  String get textSizeSmallest => '最小';

  @override
  String get textSizeSmall => '小';

  @override
  String get textSizeDefault => '默认';

  @override
  String get textSizeLarge => '大';

  @override
  String get kitComposerAddToTurnNote => '智能体会在工作时读取这条内容。';

  @override
  String get continuedOpenFromList =>
      'Find it in that server\'s conversations.';

  @override
  String get teamModelsSection => 'Models';

  @override
  String get teamModelsNote =>
      'Each new job starts with the model chosen for its role. A saved choice applies to new jobs, not to ones already running.';

  @override
  String get teamModelServerDefault => 'Server default';

  @override
  String get teamModelServerDefaultHint =>
      'Uses the model this server falls back to when none is chosen. It may differ from the model your conversations use.';

  @override
  String get teamModelPlannerSaved =>
      'Planner model saved. Ask again to plan with it.';

  @override
  String get teamProjectEditorTypePath => 'Type a path';

  @override
  String get teamProjectEditorChooseFolder => 'Choose a folder';

  @override
  String get teamProjectEditorFolderNone => 'No folder chosen yet';

  @override
  String get teamProjectEditorFirstCommit => 'Make the first commit for me';

  @override
  String get teamProjectEditorFirstCommitManual =>
      'Open a terminal in that folder and run: git commit --allow-empty -m \"First commit\"';

  @override
  String get teamProjectEditorFirstCommitFailed =>
      'The first commit could not be made. Open a terminal in that folder and run: git commit --allow-empty -m \"First commit\"';

  @override
  String get teamProjectEditorStarting =>
      'Checking the folder and starting the planner…';

  @override
  String get teamProjectEditorDraftRestored => 'Your unsent draft is back.';

  @override
  String get teamProjectEditorStartFresh => 'Start fresh';

  @override
  String get teamProjectEditorStarterNote =>
      'A first milestone was drafted from your task. Edit it before you approve.';

  @override
  String get teamRefusalRepoPathInvalid =>
      'The team can\'t find that folder on this phone.';

  @override
  String get teamRefusalRepoPathInvalidNext =>
      'Choose the folder from the list instead of typing it.';

  @override
  String effectsLookPreviewLabel(String name) {
    return '$name preview. Opens the looks.';
  }

  @override
  String get effectsLookPreviewOffLabel =>
      'Live background is off. Opens the looks.';

  @override
  String get effectsLookPreviewOff => 'Off';

  @override
  String get teamProjectEditorFolderEmpty =>
      'This folder has no commits yet, and the team needs one to start from.';

  @override
  String get teamProjectEditorChooseModeBudget =>
      'Choose Single lane or Parallel agents, and set a budget or choose No limit.';

  @override
  String get teamProjectEditorFallbackSection => 'Optional';

  @override
  String get teamProjectEditorFallbackNote =>
      'Saved with the role, but the team does not switch to it automatically yet.';

  @override
  String get teamUiRowChecking => 'Checking…';

  @override
  String get teamRefusalCheckerUnreadable =>
      'The check finished, but its answer could not be read.';

  @override
  String get teamRefusalCheckerUnreadableNext =>
      'Resume reads that answer again without asking the model. If the work passes, it merges into dev, and tasks waiting behind it can start.';

  @override
  String get teamProjectInterruptedResumeNote =>
      'Resume reads the finished check again without asking the model. If the work passes, it merges into dev, and tasks waiting behind it can start.';

  @override
  String get teamProjectInterruptedResume => 'Resume';

  @override
  String get widgetV2ConfigureTitle => '小组件样式';

  @override
  String get widgetV2BackgroundLabel => '背景';

  @override
  String get widgetV2BackgroundSolid => '纯色';

  @override
  String get widgetV2BackgroundTinted => '着色';

  @override
  String get widgetV2BackgroundTransparent => '透明';

  @override
  String get widgetV2AccentLabel => '强调色';

  @override
  String get widgetV2AccentWallpaper => '壁纸';

  @override
  String get widgetV2AccentApp => '应用主题';

  @override
  String get widgetV2AccentGreen => '绿色';

  @override
  String get widgetV2AccentTeal => '青色';

  @override
  String get widgetV2AccentBlue => '蓝色';

  @override
  String get widgetV2AccentAmber => '琥珀色';

  @override
  String get widgetV2SaveStyle => '保存样式';

  @override
  String get widgetV2SteerTitle => '添加到本轮';

  @override
  String get widgetV2AfterReplyTitle => '在本次回复后发送';

  @override
  String get widgetV2RestartTitle => 'Stop and send';

  @override
  String get widgetV2RestartHelp =>
      'Stops the current reply and starts again with your message.';

  @override
  String get widgetV2VoiceTitle => '新消息';

  @override
  String get widgetV2MessageHint => '输入消息';

  @override
  String get widgetV2Dictate => '听写消息';

  @override
  String get widgetV2Send => '发送';

  @override
  String get widgetV2Sending => '正在发送…';

  @override
  String get widgetV2Accepted => '已发送';

  @override
  String get widgetV2StaleRequest => '对话已更改。你的消息仍在这里。';

  @override
  String get widgetV2Unavailable => '后台连接不可用。你的消息仍在这里。';

  @override
  String get widgetV2Unsupported => '此连接不支持该操作。';

  @override
  String get widgetV2Uncertain => '无法确认是否已发送。再次发送前请先查看对话。';

  @override
  String get widgetV2Busy => '请等待当前操作完成。';

  @override
  String get widgetV2InvalidRequest => '发送前请先输入消息。';

  @override
  String get widgetV2UnknownBehavior => '正在等待对话详情…';

  @override
  String get widgetV2Cancel => '取消';

  @override
  String get widgetV2PreviewLabel => '小组件预览';

  @override
  String get widgetV2PreviewTitle => '修复登录页面';

  @override
  String get widgetV2PreviewSecond => '撰写发行说明';

  @override
  String get widgetV2PreviewStep => '正在编辑文件';

  @override
  String get widgetV2PreviewWorking => '进行中';

  @override
  String get widgetV2PreviewStop => '停止';

  @override
  String get widgetV2PreviewSteer => '引导';

  @override
  String get widgetV2PreviewAllow => '允许';

  @override
  String get widgetV2SizeLabel => '预览大小';

  @override
  String get widgetV2SizeCompact => '小';

  @override
  String get widgetV2SizeCard => '中';

  @override
  String get widgetV2SizeList => '宽';

  @override
  String get widgetV2StyleStale => '此小组件已更改。请关闭后重试。';

  @override
  String get widgetV2StyleUnavailable => '无法保存样式。请重试。';

  @override
  String get widgetV2DictationUnavailable => '听写暂时不可用。你可以改为输入。';

  @override
  String get widgetV2RestartUnavailable => '此对话只能在应用内更改。';

  @override
  String get phoneSetupErrorPackageRepair =>
      '部分 Linux 软件包需要修复。继续设置以重试。详情会显示停止的原因。';

  @override
  String get agentsFailNeedsSignIn => 'Claude Code 需要你在此手机上登录。';

  @override
  String get agentsFailHelperVersion => '此智能体连接前需要先更新 Paseo。请更新后重试。';

  @override
  String get agentsFailTimeout => '手机完成检查耗时过长。请在其不太忙时重试。';

  @override
  String get agentsCheckRetry => '重试';

  @override
  String get agentsCheckUpdateHelper => '更新 Paseo 并重试';

  @override
  String get agentsCheckPrevious => '使用上一版本';

  @override
  String agentsCheckPreviousNote(String version) {
    return '版本 $version 仍在此手机上。使用前会先检查。你的登录状态和对话会保留。';
  }

  @override
  String get agentsCheckAgentChanged => '所需的智能体版本已变化。请重新检查此手机。';

  @override
  String get agentsCheckHelperChanged => '所需的 Paseo 版本已变化。请重新检查连接。';

  @override
  String get agentsCheckInstallChanged => '手机的设置已变化。请重新检查。';

  @override
  String agentsCheckDownload(
    String component,
    String downloaded,
    String total,
  ) {
    return '正在下载 $component · $downloaded/$total';
  }

  @override
  String agentsCheckDownloadUnknown(String component, String downloaded) {
    return '正在下载 $component · $downloaded';
  }

  @override
  String agentsCheckDownloading(String component) {
    return '正在下载 $component';
  }

  @override
  String agentsCheckPreparing(String component) {
    return '正在准备 $component';
  }

  @override
  String get agentsCheckPhoneTools => '手机工具';

  @override
  String get phoneSetupErrorInterrupted => '设置在完成前中断了。继续设置以重试。已完成的步骤会保留。';

  @override
  String get agentErrorProviderAuth => '模型提供商需要有效的登录。';

  @override
  String get agentErrorProviderAuthHint => '打开提供商设置以登录或更换 API 密钥，然后重试。';

  @override
  String get agentErrorUnknown => '请求未能完成。';

  @override
  String get agentErrorUnknownHint => '重新发送前请先查看对话。详情可能有助于说明发生了什么。';

  @override
  String get serverTrustHttpTitle => '使用未加密的 HTTP？';

  @override
  String get serverTrustHttpPublicBody =>
      '在此公共 HTTP 地址上，你的密码和验证码以未加密方式传输，网络上的其他人可以读取或篡改。在公共 Wi-Fi 上有风险；建议使用 HTTPS 或 Tailscale 私有连接。';

  @override
  String get serverTrustHttpAccept => '允许此服务器使用 HTTP';

  @override
  String get serverTrustCertificateTitle => '信任此证书？';

  @override
  String get serverTrustCertificateBody =>
      '此连接已加密，但本设备无法验证证书的颁发者或服务器名称。请通过另一个可信渠道，将此 SHA-256 指纹与你的服务器核对，仅在一致时才信任；之后的连接将要求使用这份证书。';

  @override
  String get serverTrustCertificateChangedTitle => '服务器证书已更改';

  @override
  String get serverTrustCertificateChangedBody =>
      '证书与你之前信任的不再一致，因此应用在发送密码前已阻止连接。这可能是证书更新，也可能是连接被拦截；信任新证书前，请先向服务器所有者重新核对指纹。';

  @override
  String get serverTrustCertificateInspect => '检查证书';

  @override
  String get serverTrustCertificateRecheck => '重新检查证书';

  @override
  String get serverTrustCertificateAccept => '信任此指纹';

  @override
  String get serverTrustCertificateReplace => '信任新证书';

  @override
  String get serverTrustCertificatePinned => '此服务器使用你已信任的证书指纹。若证书不同，连接将被阻止。';

  @override
  String get serverTrustCertificateFailed => '无法检查该证书。请检查地址和网络后重试。未信任任何内容。';

  @override
  String get serverTrustFingerprint => 'SHA-256 指纹';

  @override
  String get serverTrustInvalidPort => '请输入 1 到 65535 之间的服务器端口。';

  @override
  String get serverTrustHttpUnconfirmed =>
      '此服务器使用明文 HTTP，而你尚未确认。请编辑服务器以查看并批准 HTTP 警告，或改用 HTTPS。';

  @override
  String get serverTrustProbeFailed => '无法检查该服务器。请检查地址后重试。';

  @override
  String get serverTrustPasswordRejected => '密码被拒绝。请检查服务器密码后重试。';

  @override
  String serverTrustCertificateValidity(String from, String to) {
    return '有效期：$from 至 $to';
  }

  @override
  String get serverTrustCertificateValidityError =>
      '服务器证书已过期或尚未生效。请让服务器所有者续期，或在重新连接前检查设备时钟。';

  @override
  String get devPreviewTitle => '预览';

  @override
  String get devPreviewReload => '刷新页面';

  @override
  String get devPreviewOpenInBrowser => '在浏览器中打开';

  @override
  String get devPreviewCopyAddress => '复制地址';

  @override
  String get devPreviewLoading => '正在加载预览';

  @override
  String get devPreviewFailedTitle => '暂无响应';

  @override
  String devPreviewFailedBody(String port) {
    return '端口 $port 没有响应。应用可能仍在启动。';
  }

  @override
  String get devPreviewRetry => '重试';

  @override
  String devPreviewRemoteNote(String port, String host) {
    return '正在显示 $host 上的端口 $port。开发服务器必须监听 0.0.0.0（所有地址），此手机才能访问。';
  }

  @override
  String get devPreviewNoServerTitle => '请先连接服务器';

  @override
  String get devPreviewNoServerBody =>
      '指向本机的链接只在运行应用的那台机器上有意义。请连接服务器，或在浏览器中打开链接。';

  @override
  String get devPreviewNoHostTitle => '找不到该服务器';

  @override
  String get devPreviewNoHostBody => '此服务器的地址不完整，链接无法指向它。请改在浏览器中打开。';

  @override
  String get devPreviewUnsupportedTitle => '此处无法预览';

  @override
  String get devPreviewUnsupportedBody => '本设备无法在应用内显示该页面。请改用浏览器打开。';

  @override
  String get devPreviewMenu => '预览运行中的应用';

  @override
  String get devPreviewMenuHint =>
      'Open a dev server this conversation mentioned';

  @override
  String get devPreviewSheetSubtitle => '此对话提到的服务器';

  @override
  String devPreviewPortTitle(String port) {
    return '端口 $port';
  }

  @override
  String get devPreviewOnPhone => '在此手机上';

  @override
  String devPreviewOnServer(String host) {
    return '在 $host 上';
  }

  @override
  String get openCode1UnsupportedTitle => '更新此服务器';

  @override
  String get openCode1Unsupported =>
      '此服务器运行的是 OpenCode 1，本应用已不再支持。请将其升级到 OpenCode 2。';

  @override
  String get openCode2UpgradeTitle => '正在升级到 OpenCode 2';

  @override
  String get openCode2UpgradeProgress => '正在更新此手机的服务器并迁移你的对话。请保持应用打开。';

  @override
  String get openCode2UpgradeFailed =>
      '升级无法安全完成。你的 OpenCode 1 对话和文件仍保留在此手机上，未受影响。请在服务器空闲且可用空间充足时重试。';

  @override
  String get openCode2HostInstall => 'Install and start OpenCode 2';

  @override
  String get openCode2HostInstallDetail =>
      'Requires Node.js and npm. Starts on this computer only and prints its password. Keep this terminal open.';

  @override
  String get schedulePhoneBusy =>
      'A scheduled prompt is using the phone server. Try again when it finishes.';

  @override
  String get schedulePhoneCheckFailed =>
      'The phone server could not be checked. Try again.';

  @override
  String get scheduleTitle => '定时提示词';

  @override
  String get scheduleCreate => '安排提示词';

  @override
  String get scheduleEdit => '编辑计划';

  @override
  String get schedulePrompt => '提示词';

  @override
  String get scheduleTarget => '对话';

  @override
  String get scheduleThisConversation => '此对话';

  @override
  String get scheduleNewConversation => '每次运行新建对话';

  @override
  String get scheduleAgent => '智能体';

  @override
  String get scheduleWeekdays => '每个工作日';

  @override
  String get scheduleEveryHours => '每 N 小时';

  @override
  String get scheduleOnce => '一次';

  @override
  String get scheduleRepeat => '时间';

  @override
  String get scheduleTime => '时间';

  @override
  String get scheduleHours => '运行间隔（小时）';

  @override
  String scheduleNextRun(String time) {
    return '下次：$time';
  }

  @override
  String get scheduleSave => '保存计划';

  @override
  String get schedulePause => '暂停';

  @override
  String get scheduleResume => '恢复';

  @override
  String get scheduleDelete => '删除计划';

  @override
  String get scheduleHistory => '运行历史';

  @override
  String get scheduleStarted => '已开始';

  @override
  String get scheduleRunning => '运行中';

  @override
  String get scheduleFailed => '失败';

  @override
  String get scheduleSkipped => '已跳过';

  @override
  String get scheduleLate => '已延迟';

  @override
  String get schedulePaused => '已暂停';

  @override
  String get scheduleFinished => '没有更多运行';

  @override
  String get scheduleMissedRuns => '错过运行时';

  @override
  String get scheduleCatchUp => '可用时补运行一次';

  @override
  String get scheduleSkipMissed => '跳过错过的运行';

  @override
  String get scheduleTimingNotice =>
      'Android 可能会延迟运行。允许精确闹钟可提高准时性，但仍需要网络连接。强制停止应用会暂停计划，直到你再次打开它。';

  @override
  String get scheduleExactAccess => '允许精确闹钟';

  @override
  String get scheduleBatteryNotice => '电池限制可能会延迟计划。每次运行都有时间上限，你无需保持应用打开。';

  @override
  String get scheduleDigest => '晨间摘要';

  @override
  String get scheduleDigestDescription => '每天早晨发送一条通知，汇总自上次摘要以来的定时运行数量。';

  @override
  String get scheduleEmpty => '还没有定时提示词';

  @override
  String get scheduleNoHistory => '暂无运行记录';

  @override
  String get scheduleUnsupported => '此连接不支持定时提示词。';

  @override
  String get scheduleSaveFailed => '无法保存此更改。请重试。';

  @override
  String get scheduleNeedsYou => '打开对话以回应请求。';

  @override
  String get scheduleBusy => '对话已在处理中。';

  @override
  String get scheduleUnavailable => '无法连接到服务器。请确认它正在运行，并且这部手机可以访问它。';

  @override
  String get scheduleSignInAgain => '服务器需要重新输入密码。请在下次运行前打开服务器并登录。';

  @override
  String get scheduleAllowHttp => '此服务器使用未加密的 HTTP，且尚未获准。请在下次运行前打开服务器并允许 HTTP。';

  @override
  String get scheduleAgentFailed => '智能体因错误而停止。打开对话查看发生了什么。';

  @override
  String get scheduleCertificateChanged => '服务器的证书已更改。请在下次运行前打开服务器进行检查。';

  @override
  String get scheduleCertificateInvalid => '服务器的证书已过期或尚未生效。请在下次运行前打开服务器进行检查。';

  @override
  String get scheduleTargetChanged => '已保存的连接或目标已更改。请编辑此计划。';

  @override
  String get scheduleInterrupted => '运行被中断，未重新发送。';

  @override
  String get scheduleTimeout => '运行已达到时间上限。请查看对话。';

  @override
  String get scheduleUncertain => '无法确认是否已送达。再次发送前请先查看对话。';

  @override
  String get scheduleMissed => '已按你对错过运行的设置跳过。';

  @override
  String get scheduleInvalid => '请输入提示词和未来的时间，或 1 到 168 小时的间隔。';

  @override
  String get scheduleOptions => '时间与投递';

  @override
  String get scheduleNotificationsOff => '通知已关闭。结果仍保留在运行历史中。';

  @override
  String get scheduleDeleteBody => '将移除后续运行和此计划的历史记录。已发送的提示词仍保留在各自的对话中。';

  @override
  String get scheduleNotificationTitle => 'Scheduled prompt started';

  @override
  String get scheduleNotificationBody => '点按打开对话';

  @override
  String get scheduleDigestTitle => 'Your scheduled runs';

  @override
  String scheduleDigestBody(int started, int failed, int skipped) {
    return '$started started · $failed failed · $skipped skipped';
  }

  @override
  String get scheduleDefaultAgent => 'Saved agent';

  @override
  String get scheduleProject => '项目';

  @override
  String get scheduleDeleteTitle => 'Delete this schedule?';

  @override
  String scheduleToday(String time) {
    return '今天 $time';
  }

  @override
  String scheduleTomorrow(String time) {
    return '明天 $time';
  }

  @override
  String scheduleInMinutes(String minutes) {
    return '$minutes 分钟后';
  }

  @override
  String scheduleEveryNHours(String hours) {
    return '每 $hours 小时';
  }

  @override
  String scheduleDeleteNamedTitle(String name) {
    return '要删除“$name”吗？';
  }

  @override
  String get openCode2MoveProgress =>
      'Moving your conversations to OpenCode 2…';

  @override
  String openCode2MoveRetrying(int retry, int total) {
    return 'The phone is still getting ready. Trying again shortly (attempt $retry of $total).';
  }

  @override
  String get openCode2MoveFailedNotReady =>
      'The server on this phone was not ready. Your OpenCode 1 conversations and files are still on this phone, untouched. Try again in a minute.';

  @override
  String get openCode2MoveFailedSeparateHistory =>
      'OpenCode 2 on this phone already has its own conversations, so the move stopped to protect both. Nothing was changed.';

  @override
  String get openCode2MoveFailedStopped =>
      'The move stopped before it finished, often because the phone is low on free space or the server is busy. Your OpenCode 1 conversations and files are still on this phone, untouched.';

  @override
  String get openCode2MoveFailedNotConfirmed =>
      'OpenCode 2 did not confirm that your conversations arrived. Your OpenCode 1 conversations and files are still on this phone, untouched.';

  @override
  String get terminalLinkTitle => 'Link in the terminal';

  @override
  String get terminalLinkOpen => 'Open link';

  @override
  String get terminalLinkCopy => 'Copy link';

  @override
  String get terminalCopiedToClipboard => 'Copied to clipboard';

  @override
  String get chatRequestAskOutsideWrite => 'Write outside this project?';

  @override
  String get chatRequestAskOutsideRead => 'Read outside this project?';

  @override
  String get chatRequestAskOutsideRun => 'Run a command outside this project?';

  @override
  String get phoneSetupStageRetrying => 'Interrupted. Trying again';

  @override
  String get linuxMgrRow => 'Linux';

  @override
  String get linuxMgrRowDetail =>
      'What runs, ports, storage and packages of the Ubuntu inside this app';

  @override
  String get linuxMgrTitle => 'Linux on this phone';

  @override
  String get linuxMgrRunning => 'Running';

  @override
  String get linuxMgrRunningDetail => 'What runs inside Linux, and stopping it';

  @override
  String get linuxMgrPorts => 'Ports';

  @override
  String get linuxMgrPortsDetail => 'What is listening, and previewing it';

  @override
  String get linuxMgrStorage => 'Storage';

  @override
  String get linuxMgrStorageDetail =>
      'Where the space goes, and clearing caches';

  @override
  String get linuxMgrPackages => 'Packages';

  @override
  String get linuxMgrPackagesDetail =>
      'Installed software: install, remove and update';

  @override
  String get linuxMgrRepair => 'Repair Linux';

  @override
  String get linuxMgrRepairDetail =>
      'Checks Linux, OpenCode and your tools and fixes what is broken. Your projects are not touched.';

  @override
  String get linuxMgrRepairTitle => 'Repair Linux?';

  @override
  String get linuxMgrRepairBody =>
      'Checks Linux, OpenCode and the tools you added, and installs again anything that is missing or broken. It needs a connection and can take several minutes.';

  @override
  String get linuxMgrRepairKept => 'Your projects and sign-ins are not touched';

  @override
  String get linuxMgrReset => 'Reset Linux';

  @override
  String get linuxMgrResetDetail =>
      'Start again from a fresh Ubuntu. Your projects stay.';

  @override
  String get linuxMgrResetTitle => 'Reset Linux?';

  @override
  String get linuxMgrResetBody =>
      'Linux is erased and set up again from scratch. This cannot be undone.';

  @override
  String get linuxMgrResetLostTools =>
      'Installed packages and tools: OpenCode, Python, AI Team, voice typing';

  @override
  String get linuxMgrResetLostSignIns => 'Agent sign-ins and their settings';

  @override
  String get linuxMgrResetLostChats =>
      'Conversations kept by the server on this phone';

  @override
  String get linuxMgrResetKept => 'Your projects stay on the phone';

  @override
  String get linuxMgrResetWord => 'Reset';

  @override
  String get linuxMgrProblemBusy =>
      'Another task is using Linux right now. Wait a moment and try again.';

  @override
  String get linuxMgrProblemSetup =>
      'Setup is running. Wait until it finishes.';

  @override
  String get linuxMgrProblemJob =>
      'A package task is running. Wait until it finishes.';

  @override
  String get linuxMgrProblemUnavailable =>
      'Linux is not set up or is not answering. Open This phone to set it up.';

  @override
  String get linuxMgrProblemFailed => 'That did not finish. Try again.';

  @override
  String get linuxMgrLoadFailedTitle => 'Could not read Linux';

  @override
  String get linuxMgrProcTitle => 'Running in Linux';

  @override
  String linuxMgrProcSummary(int count, String memory) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count programs',
      one: '1 program',
    );
    return '$_temp0 · $memory';
  }

  @override
  String get linuxMgrKindServer => 'OpenCode server';

  @override
  String get linuxMgrKindPaseo => 'Paseo';

  @override
  String get linuxMgrKindAgent => 'Agent';

  @override
  String get linuxMgrKindDev => 'Dev server';

  @override
  String get linuxMgrKindOther => 'Other';

  @override
  String get linuxMgrAboutServer =>
      'The OpenCode server this app talks to. Stop it from This phone, not from here.';

  @override
  String get linuxMgrAboutPaseo =>
      'Paseo runs coding agents on this phone. Stopping it ends the agents it started.';

  @override
  String get linuxMgrAboutAgent =>
      'A coding agent or part of AI Team. Stopping it ends its work in progress.';

  @override
  String get linuxMgrAboutDev =>
      'A program that serves your project while you build it. Start it again from the project when you need it.';

  @override
  String get linuxMgrAboutOther =>
      'A program running inside Linux. Stopping it ends it; nothing restarts it.';

  @override
  String get linuxMgrProtected => 'Managed from This phone';

  @override
  String linuxMgrStopTitle(String name) {
    return 'Stop $name?';
  }

  @override
  String get linuxMgrStopBody =>
      'It ends now and nothing restarts it. Unsaved work in it is lost.';

  @override
  String linuxMgrStopHelpers(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count programs it started stop with it',
      one: '1 program it started stops with it',
    );
    return '$_temp0';
  }

  @override
  String linuxMgrStopLabel(String name) {
    return 'Stop $name';
  }

  @override
  String get linuxMgrStopping => 'Stopping…';

  @override
  String linuxMgrStopped(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Stopped $count programs',
      one: 'Stopped 1 program',
    );
    return '$_temp0';
  }

  @override
  String linuxMgrStopForced(int count) {
    return '$count had to be forced';
  }

  @override
  String linuxMgrStopRemaining(int count) {
    return '$count would not stop';
  }

  @override
  String linuxMgrStopChanged(int count) {
    return '$count had already changed and was left alone';
  }

  @override
  String get linuxMgrNotStoppedTitle => 'Not everything stopped';

  @override
  String get linuxMgrProcEmpty => 'Nothing is running in Linux';

  @override
  String get linuxMgrProcEmptyBody =>
      'OpenCode and your tools start when you use them.';

  @override
  String get linuxMgrCopyCommand => 'Copy command';

  @override
  String get linuxMgrPortsTitle => 'Ports in Linux';

  @override
  String linuxMgrPortRow(int port) {
    return 'Port $port';
  }

  @override
  String linuxMgrPortUsedBy(String name) {
    return 'Used by $name';
  }

  @override
  String get linuxMgrPortUnknown => 'Program not known';

  @override
  String get linuxMgrPortLocal => 'Only on this phone';

  @override
  String get linuxMgrPortAll => 'Open to other devices on your network';

  @override
  String get linuxMgrPortNotPage => 'Not a web page';

  @override
  String get linuxMgrPortPreview => 'Open preview';

  @override
  String linuxMgrPortPreviewNamed(int port) {
    return 'Open preview of port $port';
  }

  @override
  String get linuxMgrPortCopy => 'Copy address';

  @override
  String get linuxMgrPortsNote => 'Only ports this phone can open are listed.';

  @override
  String get linuxMgrPortsEmpty => 'Nothing is listening';

  @override
  String get linuxMgrPortsEmptyBody =>
      'When a dev server starts, its port shows up here.';

  @override
  String get linuxMgrStorageTitle => 'Linux storage';

  @override
  String linuxMgrStorageTotal(String size) {
    return '$size used inside Linux';
  }

  @override
  String get linuxMgrCatBase => 'Linux itself';

  @override
  String get linuxMgrCatBaseDetail => 'Ubuntu and its system files';

  @override
  String get linuxMgrCatPackages => 'Package downloads';

  @override
  String get linuxMgrCatPackagesDetail =>
      'Downloaded packages and package lists';

  @override
  String get linuxMgrCatTools => 'Node and caches';

  @override
  String get linuxMgrCatToolsDetail => 'Node, npm and setup downloads';

  @override
  String get linuxMgrCatAgents => 'Agents and OpenCode';

  @override
  String get linuxMgrCatAgentsDetail =>
      'OpenCode, Paseo, Claude Code, AI Team and their saved settings';

  @override
  String get linuxMgrCatProjects => 'Projects';

  @override
  String get linuxMgrCatProjectsDetail => 'Your work. Never cleared from here.';

  @override
  String get linuxMgrCatTemp => 'Temporary files and logs';

  @override
  String get linuxMgrCatTempDetail => 'Scratch files and program logs';

  @override
  String get linuxMgrFreeUp => 'Free up space';

  @override
  String get linuxMgrCleanApt => 'Clear package downloads';

  @override
  String get linuxMgrCleanAptDetail =>
      'Linux downloads them again if it needs them';

  @override
  String get linuxMgrCleanTools => 'Clear Node and download caches';

  @override
  String get linuxMgrCleanToolsDetail =>
      'npm and setup downloads, fetched again when needed';

  @override
  String get linuxMgrCleanTemp => 'Clear old temporary files and logs';

  @override
  String get linuxMgrCleanTempDetail =>
      'Files untouched for a day and logs older than a week';

  @override
  String get linuxMgrCleanAgents => 'Remove old agent versions';

  @override
  String get linuxMgrCleanAgentsDetail =>
      'Paseo versions that are no longer in use';

  @override
  String linuxMgrCleanBody(String size) {
    return 'About $size comes back. This cannot be undone, and nothing you made is touched.';
  }

  @override
  String get linuxMgrCleanKept => 'Projects, sign-ins and settings stay';

  @override
  String linuxMgrCleanDone(String size) {
    return 'Freed $size';
  }

  @override
  String get linuxMgrCleanNothing => 'There was nothing to clear';

  @override
  String get linuxMgrCleanNone => 'Nothing to clear right now';

  @override
  String get linuxMgrMeasuring => 'Measuring…';

  @override
  String get linuxMgrPkgTitle => 'Packages';

  @override
  String linuxMgrPkgCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count packages installed',
      one: '1 package installed',
    );
    return '$_temp0';
  }

  @override
  String get linuxMgrPkgSearch => 'Search installed packages';

  @override
  String get linuxMgrPkgNoMatch => 'No installed package matches that';

  @override
  String linuxMgrPkgShowAll(int count) {
    return 'Show all $count packages';
  }

  @override
  String get linuxMgrPkgUpdate => 'Update system';

  @override
  String get linuxMgrPkgUpdateDetail =>
      'Refreshes the package lists and installs available updates';

  @override
  String get linuxMgrPkgUpdateTitle => 'Update Linux packages?';

  @override
  String get linuxMgrPkgUpdateBody =>
      'Downloads the latest updates and installs them. It uses your connection, can take several minutes, and stops by itself after 45 minutes.';

  @override
  String get linuxMgrPkgInstall => 'Install a package';

  @override
  String get linuxMgrPkgInstallDetail => 'By name, for example htop';

  @override
  String get linuxMgrPkgName => 'Package name';

  @override
  String get linuxMgrPkgNameHelper =>
      'Ubuntu package names, separated by spaces';

  @override
  String get linuxMgrPkgNameInvalid =>
      'Use only lower case letters, digits and + - . in each name';

  @override
  String get linuxMgrPkgCheck => 'Check';

  @override
  String linuxMgrPkgAlready(String name) {
    return '$name is already installed';
  }

  @override
  String linuxMgrPkgUnknown(String name) {
    return 'No package named $name. Update system refreshes the list of packages.';
  }

  @override
  String linuxMgrPkgInstallTitle(String names) {
    return 'Install $names?';
  }

  @override
  String get linuxMgrPkgInstallBody =>
      'Downloads from Ubuntu and installs. It uses your connection.';

  @override
  String linuxMgrPkgInstallLabel(String names) {
    return 'Install $names';
  }

  @override
  String linuxMgrPkgRemove(String name) {
    return 'Remove $name';
  }

  @override
  String linuxMgrPkgRemoveTitle(String name) {
    return 'Remove $name?';
  }

  @override
  String get linuxMgrPkgRemoveBody =>
      'It is removed from Linux. Your projects are not touched.';

  @override
  String linuxMgrPkgAlsoRemoved(String list) {
    return 'Also removed: $list';
  }

  @override
  String get linuxMgrPkgLocked =>
      'Linux or your tools need it. Tools are removed from This phone.';

  @override
  String linuxMgrPkgBlockedPlan(String list) {
    return 'Removing it would also remove $list, which Linux needs.';
  }

  @override
  String get linuxMgrPkgChecking => 'Checking what it would remove…';

  @override
  String linuxMgrJobInstalling(String names) {
    return 'Installing $names';
  }

  @override
  String linuxMgrJobRemoving(String names) {
    return 'Removing $names';
  }

  @override
  String get linuxMgrJobUpdating => 'Updating Linux packages';

  @override
  String get linuxMgrJobKeepsGoing => 'It keeps going if you leave this page.';

  @override
  String linuxMgrJobStopInstall(String names) {
    return 'Stop installing $names';
  }

  @override
  String linuxMgrJobStopRemove(String names) {
    return 'Stop removing $names';
  }

  @override
  String get linuxMgrJobStopUpdate => 'Stop updating';

  @override
  String get linuxMgrJobStopBody =>
      'It stops now. A half-finished package is repaired the next time you run a package task.';

  @override
  String linuxMgrJobDoneInstall(String names) {
    return 'Installed $names';
  }

  @override
  String linuxMgrJobDoneRemove(String names) {
    return 'Removed $names';
  }

  @override
  String get linuxMgrJobDoneUpdate => 'Linux packages are up to date';

  @override
  String get linuxMgrJobFailed =>
      'That did not finish. Nothing you made was touched. Try again; it carries on where it stopped.';

  @override
  String get linuxMgrJobTimedOut =>
      'It took longer than 45 minutes and stopped itself. Run it again to continue.';

  @override
  String get linuxMgrJobInterrupted =>
      'It stopped before it finished, for example when the app was closed. Run it again to continue.';

  @override
  String get linuxMgrJobNoticeInstall => 'Installing Linux packages';

  @override
  String get linuxMgrJobNoticeRemove => 'Removing Linux packages';

  @override
  String get linuxMgrJobNoticeUpdate => 'Updating Linux packages';

  @override
  String get linuxMgrJobDismiss => 'Done';

  @override
  String linuxMgrJobStopInstallTitle(String names) {
    return 'Stop installing $names?';
  }

  @override
  String linuxMgrJobStopRemoveTitle(String names) {
    return 'Stop removing $names?';
  }

  @override
  String get linuxMgrJobStopUpdateTitle => 'Stop updating Linux packages?';

  @override
  String get linuxMgrCleanAptAsk => 'Clear package downloads?';

  @override
  String get linuxMgrCleanToolsAsk => 'Clear Node and download caches?';

  @override
  String get linuxMgrCleanTempAsk => 'Clear old temporary files and logs?';

  @override
  String get linuxMgrCleanAgentsAsk => 'Remove old agent versions?';

  @override
  String get kitLogSearch => 'Search this output';

  @override
  String get kitLogPause => 'Pause following';

  @override
  String get kitLogFollow => 'Follow new output';

  @override
  String get kitLogPreviousMatch => 'Previous match';

  @override
  String get kitLogNextMatch => 'Next match';

  @override
  String get servicesAlsoRunning => 'Also running';

  @override
  String get servicesAlsoPhoneHint =>
      'Found by the ports they listen on, however they were started.';

  @override
  String get servicesAlsoServerHint =>
      'This server lists the commands it is running. A server started in a terminal on it is not found here.';

  @override
  String servicesPorts(int count, String ports) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ports $ports',
      one: 'Port $ports',
    );
    return '$_temp0';
  }

  @override
  String get servicesNoPortYet => 'No port found yet';

  @override
  String get servicesOpenPreview => 'Open preview';

  @override
  String servicesOpenPreviewNamed(String name) {
    return 'Preview $name';
  }

  @override
  String servicesPreviewPort(String port) {
    return 'Preview port $port';
  }

  @override
  String get servicesSaveCommand => 'Save as command';

  @override
  String servicesStopFoundTitle(String name) {
    return 'Stop $name?';
  }

  @override
  String get servicesStopFoundHint =>
      'This ends the program on the machine it runs on. Anything it has not saved is lost.';

  @override
  String get servicesLogsUnavailable =>
      'This program was not started from this app, so its output is not kept where the app can read it. Choose Save as command on its row, stop this one, then start the saved command here to see its logs.';

  @override
  String get servicesStopFailed =>
      'It did not stop. Try again, or stop it from the Terminal.';

  @override
  String devPreviewRunningNow(String name) {
    return 'Running now: $name';
  }

  @override
  String get devPreviewNoneFound => 'No running apps found';

  @override
  String get linuxMgrResetNotErasedTitle => 'Linux was not reset';

  @override
  String get linuxMgrResetNotErasedBody =>
      'Nothing was erased. Close the terminals and stop what runs in Linux, then try again.';

  @override
  String get linuxMgrResetDetailsLabel => 'Error code';

  @override
  String get linuxMgrResetCleanupTitle => 'Setting Linux up again';

  @override
  String linuxMgrResetForgetFailed(String name) {
    return '“$name” from before the reset could not be forgotten and is still saved.';
  }

  @override
  String linuxMgrResetLeft(String name, String what) {
    return 'From before the reset, “$name” still has saved: $what.';
  }

  @override
  String get linuxMgrResetLeftConnection => 'its saved connection';

  @override
  String get servicesAlsoPhoneFailed =>
      'Could not check what else runs in Linux right now. It is checked again in a few seconds.';

  @override
  String linuxMgrProcGroupCount(int count) {
    return '$count processes';
  }

  @override
  String get gitRepairFailureWords => 'Git history can\'t be read.';

  @override
  String get gitRepairAction => 'Repair';

  @override
  String get gitRepairTitle => 'Repair Git history';

  @override
  String gitRepairWorking(String project) {
    return 'Repairing $project…';
  }

  @override
  String get gitRepairLooking => 'Looking for missing Git files…';

  @override
  String gitRepairRestoring(int done, int total) {
    return 'Putting back $done of $total Git files…';
  }

  @override
  String gitRepairAskingTermux(int done, int total) {
    return 'Copying $done of $total Git files from Termux…';
  }

  @override
  String get gitRepairChecking => 'Checking the project with Git…';

  @override
  String gitRepairDoneTitle(String project) {
    return '$project is repaired';
  }

  @override
  String gitRepairDoneBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Git files are back, and Git can read the project again.',
      one: '1 Git file is back, and Git can read the project again.',
    );
    return '$_temp0';
  }

  @override
  String get gitRepairHealthyTitle => 'Nothing was missing';

  @override
  String gitRepairHealthyBody(String project) {
    return 'Git can read $project now.';
  }

  @override
  String get gitRepairStart => 'Start the conversation';

  @override
  String get gitRepairTermuxNotAllowedTitle => 'Files are in Termux';

  @override
  String get gitRepairTermuxNotAllowedBody =>
      'Allow the app to run commands in Termux, and it copies them back.';

  @override
  String get gitRepairAllow => 'Allow and repair';

  @override
  String get gitRepairTermuxNoAnswerTitle => 'Termux didn\'t answer';

  @override
  String get gitRepairTermuxNoAnswerBody =>
      'Open Termux once so it starts, come back here, and repair again.';

  @override
  String get gitRepairAgain => 'Repair again';

  @override
  String get gitRepairOpenTermux => 'Open Termux';

  @override
  String gitRepairCannotTitle(String project) {
    return 'Can\'t repair $project';
  }

  @override
  String gitRepairMissingBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count Git files aren\'t on this phone any more. Clone the project again from where it\'s hosted, or restore a copy.',
      one:
          '1 Git file isn\'t on this phone any more. Clone the project again from where it\'s hosted, or restore a copy.',
    );
    return '$_temp0';
  }

  @override
  String get gitRepairStillBrokenBody =>
      'Git still can\'t read it. Clone the project again from where it\'s hosted, or restore a copy.';

  @override
  String get gitRepairNotRepositoryTitle => 'Can\'t repair this folder';

  @override
  String get gitRepairNotRepositoryBody =>
      'Only Git projects in the in-app Linux\'s projects folder can be repaired here.';

  @override
  String get gitRepairClose => 'Close';

  @override
  String get gitProblemNotARepository => 'This folder isn’t a Git repository.';

  @override
  String get gitProblemGitMissing =>
      'Git isn’t installed where this project lives. Install it there, then try again.';

  @override
  String get gitProblemFolderMissing =>
      'The project folder wasn’t found. It may have been moved or deleted.';

  @override
  String get gitProblemEnvironmentUnavailable =>
      'Couldn’t reach the place this project lives. Check that it’s running, then try again.';

  @override
  String get gitProblemServerCannotRunCommands =>
      'This server can’t run Git commands for the app.';

  @override
  String get gitProblemOutputTooLarge =>
      'There are too many changes to read here. Commit or clean up some files, then try again.';

  @override
  String get gitProblemTimedOut => 'Git took too long to answer. Try again.';

  @override
  String get gitProblemUnsafeRepository =>
      'Git won’t work in this folder because another user owns it. Fix the folder’s owner on that device.';

  @override
  String get gitProblemRepositoryLocked =>
      'Another Git command is using this repository. Wait for it to finish, then try again.';

  @override
  String get gitProblemNoUpstream =>
      'This branch isn’t linked to a branch on the remote yet. Push it first.';

  @override
  String get gitProblemNoRemote =>
      'This repository has no remote to push to. Add one on that device first.';

  @override
  String get gitProblemDetachedHead =>
      'You’re not on a branch. Switch to a branch first.';

  @override
  String get gitProblemCannotFastForward =>
      'The remote and this branch both have new commits, so they can’t be combined automatically. Merge or rebase on that device.';

  @override
  String get gitProblemPushRejected =>
      'The remote has commits this branch doesn’t have. Pull first, then push again.';

  @override
  String get gitProblemLocalChangesBlock =>
      'Your uncommitted changes would be overwritten. Commit or discard them first.';

  @override
  String get gitProblemAuthRequired =>
      'The remote needs you to sign in. Set up Git sign-in where this project lives, then try again.';

  @override
  String get gitProblemAuthRequiredSignIn =>
      'The remote needs you to sign in. Sign in to GitHub, then try again.';

  @override
  String get gitProblemGitHubTokenRejected =>
      'GitHub didn’t accept your sign-in. Sign in to GitHub again.';

  @override
  String get gitProblemNoPermission =>
      'Your account can’t push to this repository. Ask its owner for access.';

  @override
  String get gitProblemNetwork =>
      'Couldn’t reach the remote. Check the internet connection, then try again.';

  @override
  String get gitProblemRemoteNotFound =>
      'The remote repository wasn’t found, or your account can’t see it.';

  @override
  String get gitProblemNothingSelected => 'Choose at least one file to commit.';

  @override
  String get gitProblemEmptyMessage =>
      'Write a message that describes the commit.';

  @override
  String get gitProblemNothingToCommit =>
      'There’s nothing to commit in the files you chose.';

  @override
  String get gitProblemIdentityMissing =>
      'Git needs your name and email to make a commit. Add them, then try again.';

  @override
  String get gitProblemSigningFailed =>
      'Git couldn’t sign the commit. Check commit signing on that device.';

  @override
  String get gitProblemHookRejected =>
      'A check in this repository stopped the action. Details shows what it said.';

  @override
  String get gitProblemInvalidBranchName =>
      'That isn’t a valid branch name. Avoid spaces and characters like ~ ^ : ? * [';

  @override
  String get gitProblemBranchExists =>
      'A branch with that name already exists.';

  @override
  String get gitProblemBranchNotFound => 'That branch wasn’t found.';

  @override
  String get gitProblemConflicts =>
      'Some files have conflicts. Resolve them on that device first.';

  @override
  String get gitProblemOperationInProgress =>
      'A merge or rebase isn’t finished. Finish or cancel it on that device first.';

  @override
  String get gitProblemCannotDiscardConflict =>
      'Files with conflicts can’t be discarded here.';

  @override
  String get gitProblemUnknown =>
      'Git couldn’t finish. Details shows what it said.';

  @override
  String get gitUnavailableNotConnected =>
      'Connect to a server to see its Git changes.';

  @override
  String get gitUnavailableNoProject =>
      'Open a project to see its Git changes.';

  @override
  String get gitUnavailableServerCannotRun =>
      'This server can’t run Git for the app. Use Git on that computer instead.';

  @override
  String get gitNotRepositoryTitle => 'Not a Git repository';

  @override
  String get gitNotRepositoryBody => 'This project folder doesn’t use Git yet.';

  @override
  String get gitCleanTitle => 'No changes';

  @override
  String get gitCleanBody => 'Everything is committed.';

  @override
  String get gitDetachedHead => 'Not on a branch';

  @override
  String get gitNotPushedYet => 'Not pushed yet';

  @override
  String get gitNoCommitsYet => 'No commits yet';

  @override
  String gitAhead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count commits to push',
      one: '1 commit to push',
    );
    return '$_temp0';
  }

  @override
  String gitBehind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count commits to pull',
      one: '1 commit to pull',
    );
    return '$_temp0';
  }

  @override
  String get gitOperationMerge => 'Merge not finished';

  @override
  String get gitOperationRebase => 'Rebase not finished';

  @override
  String get gitOperationCherryPick => 'Cherry-pick not finished';

  @override
  String get gitOperationRevert => 'Revert not finished';

  @override
  String get gitUsesOwnSignIn =>
      'Push and pull use the Git sign-in already set up where this project lives.';

  @override
  String get gitChangeAdded => 'Added';

  @override
  String get gitChangeModified => 'Modified';

  @override
  String get gitChangeDeleted => 'Deleted';

  @override
  String get gitChangeRenamed => 'Renamed';

  @override
  String get gitChangeCopied => 'Copied';

  @override
  String get gitChangeTypeChanged => 'Type changed';

  @override
  String get gitChangeUntracked => 'New';

  @override
  String get gitChangeConflicted => 'Conflict';

  @override
  String get gitActionPull => 'Pull';

  @override
  String get gitActionPush => 'Push';

  @override
  String get gitActionCommit => 'Commit';

  @override
  String get gitActionSwitchBranch => 'Switch branch';

  @override
  String get gitActionCreateBranch => 'New branch';

  @override
  String get gitActionDiscard => 'Discard changes';

  @override
  String get gitActionRefresh => 'Refresh';

  @override
  String get gitActionSaveIdentity => 'Save name and email';

  @override
  String get gitBusyPull => 'Pulling…';

  @override
  String get gitBusyPush => 'Pushing…';

  @override
  String get gitBusyCommit => 'Committing…';

  @override
  String get gitBusySwitchBranch => 'Switching branch…';

  @override
  String get gitBusyCreateBranch => 'Creating the branch…';

  @override
  String get gitBusyDiscard => 'Discarding changes…';

  @override
  String get gitBusyRefresh => 'Checking for changes…';

  @override
  String get gitBusySaveIdentity => 'Saving…';

  @override
  String get gitDoneUpToDate => 'Already up to date.';

  @override
  String get gitDonePulled => 'Pulled the latest commits.';

  @override
  String get gitDonePushed => 'Pushed.';

  @override
  String get gitDonePushedTracking =>
      'Pushed. This branch now follows the one on the remote.';

  @override
  String gitDoneCommitted(String commit) {
    return 'Committed $commit.';
  }

  @override
  String get gitDoneSwitched => 'Switched branch.';

  @override
  String get gitDoneCreated => 'Created the branch and switched to it.';

  @override
  String get gitDoneDiscarded => 'Changes discarded.';

  @override
  String get gitDoneIdentitySaved =>
      'Saved your name and email for this repository.';

  @override
  String gitDiscardConfirmTitle(String file) {
    return 'Discard changes to $file?';
  }

  @override
  String get gitDiscardConfirmBody =>
      'Its changes are deleted from this device. This can’t be undone.';

  @override
  String get gitCommitMessageHint => 'Describe what changed';

  @override
  String get gitBranchNameHint => 'Branch name';

  @override
  String get gitIdentityName => 'Name';

  @override
  String get gitIdentityEmail => 'Email';

  @override
  String get gitHubSignIn => 'Sign in to GitHub';

  @override
  String get gitHubSignOut => 'Sign out of GitHub';

  @override
  String gitHubSignedInAs(String login) {
    return 'Signed in to GitHub as $login';
  }

  @override
  String get gitHubRequestingCode => 'Getting a sign-in code…';

  @override
  String get gitHubEnterCode =>
      'Enter this code on GitHub to finish signing in.';

  @override
  String get gitHubOpenGitHub => 'Open GitHub';

  @override
  String get gitHubCopyCode => 'Copy code';

  @override
  String get gitHubWaiting => 'Waiting for you to finish on GitHub…';

  @override
  String get gitHubFinishing => 'Finishing sign-in…';

  @override
  String get gitHubCancel => 'Cancel';

  @override
  String get gitHubSignOutBody =>
      'The app forgets your GitHub sign-in on this device. To remove its access completely, revoke it on GitHub too.';

  @override
  String get gitHubManageAccess => 'Manage access on GitHub';

  @override
  String get gitHubPushOverHttps =>
      'Pushes to GitHub use this sign-in over HTTPS. Your SSH settings don’t change.';

  @override
  String get gitHubProblemExpired =>
      'The code expired before it was entered. Sign in again to get a new one.';

  @override
  String get gitHubProblemDenied => 'Sign-in was cancelled on GitHub.';

  @override
  String get gitHubProblemDisabled =>
      'GitHub sign-in isn’t switched on for this app yet.';

  @override
  String get gitHubProblemNetwork =>
      'Couldn’t reach GitHub. Check the internet connection, then try again.';

  @override
  String get gitHubProblemTokenRejected =>
      'Your GitHub sign-in ended. Sign in again.';

  @override
  String get gitHubProblemUnexpected =>
      'GitHub sent an answer the app didn’t understand. Try again.';
}
