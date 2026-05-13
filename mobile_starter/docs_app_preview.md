# App Preview Guide

This starter currently has three visible screens:

1. **Language Selection**
   - Buttons: አማርኛ, English, Afaan Oromoo
2. **Home Screen**
   - Localized app title
   - Sample profile details card list
   - `Complete Profile` action button
3. **Profile Setup**
   - Full form fields:
     - name, age, religion
     - height (cm), weight (kg)
     - job status, occupation
     - location, availability, hobbies

## Run locally to see the app

```bash
cd mobile_starter
flutter pub get
flutter run
```

## Optional: Run in Chrome (quick preview)

```bash
cd mobile_starter
flutter run -d chrome
```

## Optional: Android emulator

```bash
cd mobile_starter
flutter emulators
flutter emulators --launch <emulator_id>
flutter run
```

## Optional: iOS simulator (macOS only)

```bash
cd mobile_starter
open -a Simulator
flutter run
```

## Note
The execution environment used for this repository update does not include Flutter SDK,
so live rendering could not be launched here.


## New next-step UX
- Bottom navigation added: Discover / Matches / Profile Setup
- Discover now shows seeded demo profiles immediately so you can see the app right away.
