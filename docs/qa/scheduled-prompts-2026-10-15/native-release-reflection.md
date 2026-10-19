# APK 900055 startup failure: Room constructor removed by shrinking

The emulator startup crash is captured in
[apk-900055-startup-failure.txt](apk-900055-startup-failure.txt). AndroidX Startup
initializes WorkManager before the activity opens. Room reflects the public
zero-argument constructor of `androidx.work.impl.WorkDatabase_Impl`, and that
lookup threw `NoSuchMethodException` in the release APK.

The downloaded `build/vps-apk/mapping-900055.txt` preserves the database class
name but contains no constructor entry for it. The cached Room 2.6.1 consumer
rule is `-keep class * extends androidx.room.RoomDatabase`; it does not explicitly
keep constructor members. No ordinary application release rule file was
configured. The instrumentation keep file is conditional on explicit QA flags
and is not the normal release configuration.

`android/app/scheduled-prompts.pro`, now included unconditionally for release,
keeps the exact public no-argument database constructor. It also explicitly
keeps `ScheduledPromptWorker(Context, WorkerParameters)` and its persisted class
name. The worker constructor already appears in the failing APK's mapping;
that rule protects the next reflection boundary, rather than describing a
second observed crash.

`OverwritingInputMerger()` and `WorkManagerInitializer()` both appear in the
failing APK mapping. Their consumer rules retained their constructors. No
additional broad AndroidX keep rule was added.

The new artifact guard inspects actual DEX class definitions and direct method
signatures, including visibility, rather than treating a source compile or
mapping file as sufficient proof:

```bash
python3 tool/qa/verify_scheduled_prompt_apk.py build/vps-apk/<release.apk>
python3 -m unittest discover -s tool/qa -p test_verify_scheduled_prompt_apk.py
```

It requires the database no-argument constructor, the scheduled worker's exact
two-argument constructor, and the default input merger's no-argument constructor.
Parser fixtures cover removed constructors in retained classes, rewritten
worker signatures, private constructors, missing classes, malformed DEX, and
multidex APKs. The seven parser tests passed. The guard rejected APK 900055 with exactly
`Missing public reflective constructor: Landroidx/work/impl/WorkDatabase_Impl;`,
matching the emulator crash. APK 900056 then passed the actual DEX guard and
started successfully on emulator-5562. Its closed-app worker fired, but exposed
a separate local/UTC timestamp transition defect before prompt delivery. Commit
`eac22a34b` fixes that defect with failing-first regressions; final APK 900058
and successful dispatch proof are pending.
