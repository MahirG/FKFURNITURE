# Muslim Match Ethiopia - App Summary

## Generated app status
The Flutter app starter is generated under `mobile_starter/` with:
- multilingual onboarding (Amharic, English, Afaan Oromo)
- bottom navigation (Discover / Matches / Profile Setup)
- profile setup form with validators
- discover feed backed by in-memory profile repository (seeded demo profiles)
- provider-based app state
- starter unit tests

## Main screens
1. Language Selection
2. Main Navigation Shell
3. Discover Feed
4. Matches Placeholder
5. Profile Setup Form

## Core architecture
- `core/localization`: custom localization delegate + language JSON files
- `features/profile`: domain model, repository, provider, profile form UI
- `features/discover`: discover feed UI
- `features/navigation`: bottom-nav shell
- `features/matches`: matches placeholder UI

## How to run locally
```bash
cd mobile_starter
flutter pub get
flutter run
```

## Build APK (Android)
```bash
cd mobile_starter
flutter build apk --release
```

## Build IPA (iOS, macOS required)
```bash
cd mobile_starter
flutter build ios --release
```

## Next implementation step
Replace in-memory `ProfileRepository` with Supabase-backed repository and wire OTP auth.
