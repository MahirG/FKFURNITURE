# Quickstart on Your PC (VS Code + Git already installed)

Great — since you already have VS Code and Git, here is exactly what to do next.

## 1) Install Flutter SDK
- Download Flutter stable from: https://docs.flutter.dev/get-started/install
- Add Flutter to your PATH.
- Verify:

```bash
flutter --version
flutter doctor
```

## 2) Install Android toolchain
- Install Android Studio (for SDK + emulator).
- In Android Studio, install:
  - Android SDK
  - Android SDK Platform-Tools
  - Android Emulator
- Accept licenses:

```bash
flutter doctor --android-licenses
flutter doctor
```

## 3) (Optional for iOS) macOS only
- Install Xcode + iOS simulator.
- Run:

```bash
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```

## 4) Clone and run this project
```bash
git clone <your_repo_url>
cd FKFURNITURE/mobile_starter
flutter pub get
flutter run
```

## 5) Run tests
```bash
cd FKFURNITURE/mobile_starter
flutter test
```

## 6) Build app packages
### Android APK
```bash
flutter build apk --release
```

### Android App Bundle (Play Store)
```bash
flutter build appbundle --release
```

### iOS (macOS only)
```bash
flutter build ios --release
```

## 7) Recommended immediate next coding step
Implement real backend auth/profile storage:
1. Add `supabase_flutter` package
2. Initialize Supabase in `main.dart`
3. Replace in-memory `ProfileRepository` with Supabase CRUD
4. Add OTP login flow

## 8) Suggested first milestone (2-3 days)
- OTP login working
- Profile save to Supabase
- Discover loads real profiles from Supabase
