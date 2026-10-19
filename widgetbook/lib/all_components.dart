// Every component in the catalog, in tree order. Add new ones here.
import 'catalog.dart';
import 'agents/phone_check.dart';
import 'chat/chats_list.dart';
import 'chat/conversation.dart';
import 'chat/diff_view.dart';
import 'chat/file_mentions.dart';
import 'chat/task_chip.dart';
import 'chat/work_steps.dart';
import 'guide/guide.dart';
import 'servers/capabilities.dart';
import 'servers/server_trust.dart';
import 'servers/setup_inventory.dart';
import 'servers/this_phone.dart';
import 'servers/team_phone_setup.dart';
import 'scheduling/scheduled_prompts.dart';
import 'usage/others.dart';
import 'usage/plans.dart';
import 'usage/subscription.dart';

List<CatalogComponent> allComponents() => [
  scheduledPromptsScreen(),
  scheduleEditorScreen(),
  agentPhoneCheck(),
  usagePlansPage(),
  usageSubscriptionPage(),
  usageAlertsPage(),
  usageAddPicker(),
  usageAddFlow(),
  usageReadFromPc(),
  usageWidgetSettings(),
  kitWindowRow(),
  serverCapabilities(),
  serverTrustEditor(),
  serverTrustWarning(),
  guideScreen(),
  chatsHome(),
  allConversations(),
  conversationScreen(),
  kitTaskChip(),
  kitFileMentions(),
  kitDiffView(),
  kitWorkSteps(),
  thisPhoneScreen(),
  teamIntroScreen(),
  setupCustomizeSheet(),
  teamPhoneSetupScreen(),
];
