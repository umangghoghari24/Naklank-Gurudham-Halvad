// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
//
// class NotificationService {
//   static final FlutterLocalNotificationsPlugin _plugin =
//   FlutterLocalNotificationsPlugin();
//
//   static Future init() async {
//     tz.initializeTimeZones();
//
//     const android = AndroidInitializationSettings('@mipmap/ic_launcher');
//     const ios = DarwinInitializationSettings();
//
//     const settings = InitializationSettings(
//       android: android,
//       iOS: ios,
//     );
//
//     // await _plugin.initialize(settings);
//   }
//
//   static Future scheduleDaily({
//     required int id,
//     required String title,
//     required String body,
//     required int hour,
//     required int minute,
//   }) async {
//     await _plugin.zonedSchedule(
//       id,
//       title,
//       body,
//       _nextInstance(hour, minute),
//       const NotificationDetails(
//         android: AndroidNotificationDetails(
//           'aarti_channel',
//           'Aarti Reminder',
//           importance: Importance.high,
//           priority: Priority.high,
//         ),
//       ),
//       androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//
//       // uiLocalNotificationDateInterpretation:
//       // UILocalNotificationDateInterpretation.absoluteTime,
//       matchDateTimeComponents: DateTimeComponents.time,
//     );
//   }
//
//   static tz.TZDateTime _nextInstance(int hour, int minute) {
//     final now = tz.TZDateTime.now(tz.local);
//     var scheduled =
//     tz.TZDateTime(tz.local, now.year, now.month, now.day, hour, minute);
//
//     if (scheduled.isBefore(now)) {
//       scheduled = scheduled.add(const Duration(days: 1));
//     }
//     return scheduled;
//   }
// }