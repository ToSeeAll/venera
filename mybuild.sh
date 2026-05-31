flutter build apk --release --target-platform=android-arm64 -v

adb install /home/ubuntu/venera/build/app/outputs/flutter-apk/app-arm64-v8a-release.apk
sleep 1
adb shell am force-stop com.github.wgh136.venera
sleep 1
adb shell am start -n com.github.wgh136.venera/.MainActivity
sleep 3
PID=$(adb shell pidof -s "com.github.wgh136.venera")
adb shell logcat -v time --pid=$PID

