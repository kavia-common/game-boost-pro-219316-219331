# Game Boost Pro - Mobile Frontend (Flutter)

Cosmic Energy themed mobile UI for a game booster app. This app provides:
- One-Tap Boost
- Real-time Performance Monitoring (mocked)
- Customizable Modes (Balanced, Performance, Battery Saver)
- Notifications (sample list + reminders toggle)

## Tech
- Flutter (Material 3)
- Provider (ChangeNotifier) for state
- SharedPreferences for persistence
- Intl for date formatting

## Structure
```
lib/
  core/
    app_state.dart
  features/
    boost/
      dashboard_screen.dart
    monitor/
      monitor_screen.dart
    modes/
      modes_screen.dart
    notifications/
      notifications_screen.dart
  theme/
    app_theme.dart
  ui/
    home_scaffold.dart
  main.dart
```

## Theme - Cosmic Energy
- primary: #4F46E5
- secondary: #EC4899
- success: #10B981
- error: #EF4444
- background: #f9fafb
- surface: #ffffff
- text: #111827
- gradient hint: from #4F46E5 to white/silver

## Run Instructions
From this folder:
1) Fetch packages
```
flutter pub get
```
2) Run on device/emulator
```
flutter run
```

## Features Overview
- Dashboard: One-Tap Boost button with gradient hero card, device status placeholders (CPU, RAM, Temp) and last boost time.
- Monitor: Animated bars that simulate CPU/RAM/Temperature updates using Timer.
- Modes: Choose between Balanced, Performance, Battery Saver; selection is persisted via SharedPreferences.
- Notifications: Shows sample notifications and a toggle to enable performance reminders (persisted).

## Notes
- Metrics and notifications are mocked for now; integrate with native APIs/services later.
- The app avoids using context across async gaps per project guidelines.
