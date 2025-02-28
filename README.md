# test_project_korea
3.29.0 - Flutter SDK
3.7.0 - (Flutter)Dart SDK
## Flutter commands
Below two commands should use to run the project
### 1 Flutter pub get

flutter pub get

### 2 Flutter build Runner

dart run build_runner build --delete-conflicting-outputs      // Use only in project root folder //



### Build APK - RELEASE

flutter build apk --release lib/main.dart

### Build APK - DEBUG

flutter build apk --debug lib/main.dart

### For Enabling Firebase DebugView

- cd android
- adb shell setprop debug.firebase.analytics.app packageName

### Generate SHA1 keys Debug - FOR MAC OS

- cd android
- keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
