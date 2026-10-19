# OpenCode 1 retirement commit ledger

Local implementation and qualification commits after `5e3969ad6483fec3a312e61b027b84ea67dbc53d` through
`6cac865b45fec3e48738a24895adbaa5d0527ffe`. Nothing was pushed. Final documentation commits
can be listed with `git log 5e3969ad6..HEAD`.

| Commit | Change |
| --- | --- |
| `40ba4fa32` | refactor(client): remove the OpenCode 1 client and SDK [skip ci] |
| `425518f32` | refactor(oc2): remove legacy setup and SDK quality paths [skip ci] |
| `a0636f50b` | refactor(domain): keep only supported engine and CLI contracts [skip ci] |
| `9755484d0` | refactor(engine): remove OpenCode 1 phone driver [skip ci] |
| `bf8543e06` | test(transport): retire OpenCode 1 wire contracts [skip ci] |
| `f0ec1b550` | refactor(agents): remove OpenCode 1 installers and tool adapters [skip ci] |
| `4d6e39498` | refactor(host): retire OpenCode 1 host installation paths [skip ci] |
| `02c8101a5` | refactor(qa): capture supported OpenCode 2 behavior [skip ci] |
| `4fcace7ab` | refactor(qa): retire the OpenCode 1 live fixture [skip ci] |
| `f8600dcdd` | test(smoke): exercise OpenCode 2 scratch transports [skip ci] |
| `26be1e01a` | fix(connection): reject legacy health responses before connecting [skip ci] |
| `d088fb67d` | test(gateway): replace protocol client fixture inheritance [skip ci] |
| `0bd756c5b` | refactor(connection): retire legacy transports and preserve phone history [skip ci] |
| `e2a378082` | test(oc2): migrate app behavior fixtures off OpenCode 1 [skip ci] |
| `e4c1567a9` | build(engine): stage OpenCode 2 only phone engine [skip ci] |
| `e7e435da8` | test(qa): retire runtime switch ledger and seed checks [skip ci] |
| `1c9ace710` | test(agents): align host and card checks with supported routes [skip ci] |
| `036271ad3` | refactor(catalog): replace legacy clients with domain fixtures [skip ci] |
| `10cf1d0d6` | refactor(setup): install only OpenCode 2 [skip ci] |
| `1b6967104` | fix(migration): preserve phone profiles during the OpenCode 2 move [skip ci] |
| `604800ca0` | feat(ui): retire OpenCode 1 and guide safe automatic upgrades [skip ci] |
| `b004e0374` | fix(migration): keep blocked phone connection state consistent [skip ci] |
| `7404f3752` | refactor(domain): update retained consumers to shared models [skip ci] |
| `2d3cdbc1c` | test(android): verify OpenCode 2 cold start preserves history [skip ci] |
| `99e01baf9` | fix(ui): align upgrade feedback and capability guidance with OpenCode 2 [skip ci] |
| `39ca3eb6d` | test(setup): align retirement fixtures with safe migration [skip ci] |
| `2bacecb32` | test(connectors): use qualified search adapter in shared controller fixture [skip ci] |
| `f13fcd16a` | build(qa): add unsigned VPS compilation mode [skip ci] |
| `0d198b761` | fix(ui): remove retired runtime switch and host helper guidance [skip ci] |
| `29494940c` | test(oc2): identify modern fixtures and define prompt defaults [skip ci] |
| `23191b6da` | fix(qa): use remote Flutter environment for unsigned builds [skip ci] |
| `1ddedd0d7` | test(setup): inspect ordered OpenCode 2 configuration sources [skip ci] |
| `3e990529e` | test(migration): align stream and connector fixtures with supported contracts [skip ci] |
| `ff607c6ad` | fix(ui): preserve safe upgrade failures and retire generation guards [skip ci] |
| `fc00858a5` | test(oc2): complete catalog and decommission fixture updates [skip ci] |
| `1738ed999` | fix(qa): serialize unsigned remote build diagnostics [skip ci] |
| `57f43873b` | test(phone): keep admission pagination on controlled OC2 fixtures [skip ci] |
| `724d9d569` | docs(oc2): record retirement scope and qualification boundaries [skip ci] |
| `4a2a584f3` | test(oc2): route fake HTTP responses by resolved API paths [skip ci] |
| `21b93427d` | style(oc2): format migrated source with the pinned language version [skip ci] |
| `e55bf85cd` | chore(qa): retire OpenCode 1 screenshot and timing tools [skip ci] |
| `370a059fa` | fix(release): allow unreleased notes before the current release [skip ci] |
| `99dfdc730` | fix(ui): finish localized decommission copy and review host goldens [skip ci] |
| `f2209fed7` | chore(qa): retire dual-engine qualification execution [skip ci] |
| `9bcf40aeb` | fix(qa): retain isolated Gradle cache between unsigned builds [skip ci] |
| `ddb86c153` | fix(qa): align capability maps and golden headers [skip ci] |
| `e9e05575b` | fix(startup): import technical upgrade failure details [skip ci] |
| `a4e570f90` | test(ui): review the remaining OC1 helper removal goldens [skip ci] |
| `ca5307cc6` | test(phone): assert dispatch routes outside widget guards [skip ci] |
| `434479ce8` | test(agents): keep the OpenCode removal guard on the supported catalog [skip ci] |
| `c547c1eb3` | fix(migration): preserve selected phone identity across runtime aliases [skip ci] |
| `5a1f7e7cc` | test(api2): remove retired gateway inertness assertions [skip ci] |
| `dcbc2308d` | fix(migration): retain the original Termux profile after upgrade [skip ci] |
| `eb160aebc` | test(team): exercise the OpenCode 2 worker wrapper [skip ci] |
| `6bc8b641e` | test(api2): import shared API errors explicitly [skip ci] |
| `a2ca2a6ab` | fix(qa): regenerate supported export action inventory [skip ci] |
| `4c2ee5db4` | fix(qa): match team state coverage to the stopped fixture [skip ci] |
| `f3e7256cb` | test(chat): keep unspecified project contents unknown [skip ci] |
| `46a428af4` | docs(qa): record final unsigned Android compilation [skip ci] |
| `36bb15d32` | test(chat): seed OC2 review and static catalog fixtures [skip ci] |
| `9868a68c5` | fix(qa): align action proofs and connection coverage [skip ci] |
| `a9a9239b1` | test(ui): update reviewed OpenCode 2 capability copy goldens [skip ci] |
| `48f8bd023` | test(diff): restore the embedded source fixture import [skip ci] |
| `243d7b54b` | test(files): restore source preview fixture import [skip ci] |
| `bbf1f53d4` | test(phone): review removal of the older runtime switch [skip ci] |
| `e4b4972fa` | test(settings): review OC2-only server labels and setup entry [skip ci] |
| `a3121384b` | test(phone): review removal screens without the OC1 move offer [skip ci] |
| `b300d2904` | test(mcp): assert OC2 runtime setup from library [skip ci] |
| `41d65ac14` | test(ui): align capability repetition and phone menus with OC2 [skip ci] |
| `65d6cbce1` | test(phone): cover supported setup and pending migration gates [skip ci] |
| `a7eccc0eb` | test(ui): make the distinct usage capability unavailable explicitly [skip ci] |
| `44abdeef5` | fix(migration): withhold phone setup capabilities until history is confirmed [skip ci] |
| `b51fc2159` | test(ui): update credential views for supported server labels [skip ci] |
| `81b58162d` | test(ui): retire legacy server labels in queue snapshots [skip ci] |
| `0c578ac13` | test(library): declare capabilities implemented by the fixture [skip ci] |
| `2d1504ff7` | test(library): retire OpenCode 1 tool support guidance [skip ci] |
| `0f5a08d47` | test(phone): refresh snapshots after legacy controls removal [skip ci] |
| `a58164283` | test(servers): remove retired generation badges from snapshots [skip ci] |
| `f3a7ac02f` | test(ui): finish retiring legacy support labels in snapshots [skip ci] |
| `d8b0ead69` | test(ui): preserve generic questions and retire runtime switch advice [skip ci] |
| `39832f93d` | test(qa): verify queued release build contracts [skip ci] |
| `913060832` | build(qa): preserve the coordinator release build queue [skip ci] |
| `cf57376bd` | test(chat): import the folder node fixture type [skip ci] |
| `f3d773a0b` | test(phone): use supported runtime versions in closure fixtures [skip ci] |
| `a5681d9fa` | test(chat): retain the scene catalog when opening commands [skip ci] |
| `e69b4d33c` | docs(architecture): describe the supported OpenCode 2 backends [skip ci] |
| `74b4dff29` | test(models): keep picker catalog refresh consistent with scene [skip ci] |
| `2fd1b9125` | docs(qa): verify the migration capability gate in Android [skip ci] |
| `34d933894` | docs(qa): record migration guards and unsigned compile evidence [skip ci] |
| `03634247b` | fix(qa): name the supported remote setup journey [skip ci] |
| `3dbb5abbb` | test(phone): retire the Termux runtime switch snapshot row [skip ci] |
| `edbac2e6b` | fix(qa): retire obsolete phone engine coverage claims [skip ci] |
| `e4f0d88a2` | fix(upgrade): replace the conflicting legacy global package [skip ci] |
| `76651ed73` | docs(qa): record the final upgrade command Android build [skip ci] |
| `e42906501` | test(connection): retire the OpenCode 1 constructor guard [skip ci] |
| `628edb13e` | docs(qa): record the final unsigned build evidence [skip ci] |
| `97e0a622d` | test(desktop): assert the supported OpenCode 2 setup command [skip ci] |
| `1cd4e3ad4` | test(sessions): declare generic conversation move capability [skip ci] |
| `654a29d8d` | test(kit): wait for the avatar decoded frame [skip ci] |
| `27ae82ab9` | test(integrations): advertise scripted authorization capabilities [skip ci] |
| `239a1b2b7` | test(permissions): remove retired OpenCode 1 HTTP cases [skip ci] |
| `4f8f5518e` | test(phone): identify OC2 in manual recovery fixture [skip ci] |
| `eb4e9604b` | test(migration): close the resource-free capability fixture safely [skip ci] |
| `6f86541ba` | test(models): bind a neutral gateway for local selection [skip ci] |
| `8ef816a68` | test(phone): exercise OC2 reconnect and dispatch admission [skip ci] |
| `3425dfdfa` | test(receipts): reject unknown transport before journal creation [skip ci] |
| `cb18a75d9` | test(android): budget native ingress compilation on shared hosts [skip ci] |
| `71258da9b` | test(termux): align setup expectations with OC2 retirement [skip ci] |
| `96093816f` | test(ui): align fixtures with supported capability contracts [skip ci] |
| `a2313b63b` | test(worktrees): declare reset capability in generic fixture [skip ci] |
| `7aca9a1f0` | test(phone): update reviewed recovery snapshots for OpenCode 2 [skip ci] |
| `6e2cb9cb0` | test(team): capture the initial setup stage before timer ticks [skip ci] |
| `a7b106b35` | test(integrations): scope synthetic capabilities to authorization cases [skip ci] |
| `e94a4a378` | test(widgetbook): preserve the renamed capability scene finding [skip ci] |
| `6cac865b4` | docs(qa): record historical Widgetbook comparison [skip ci] |
