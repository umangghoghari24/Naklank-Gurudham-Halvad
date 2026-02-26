import 'package:get/get.dart';
import '../../utils/aarti_data.dart';
import '../../utils/notification_service.dart';
import '../../utils/string.dart';

class AartiController extends GetxController {

  final showAarti = false.obs;
  final isEvening = false.obs;

  /// Aarti List (auto translated)
  List<Map<String, String>> get aartiList {
    return [
      {
        'id': 'morning',
        'title': SC.morningAarti.tr,
        'time': '5:00 AM',
      },
      {
        'id': 'evening',
        'title': SC.eveningAarti.tr,
        'time': '6:45 PM',
      },
    ];
  }

  void onAartiTap(String id) {
    showAarti.value = true;
    isEvening.value = (id == 'evening');
  }

  /// Aarti Title
  String get aartiTitle =>
      isEvening.value ? SC.eveningAarti.tr : SC.morningAarti.tr;

  /// Aarti Content
  String get ramdevAarti {
    final lang = Get.locale?.languageCode ?? 'gu';

    if (isEvening.value) {
      if (lang == 'hi') return ramdevPirEveningAartiHi;
      return ramdevPirEveningAartiGu;
    } else {
      if (lang == 'hi') return ramdevPirMorningAartiHi;
      return ramdevPirMorningAartiGu;
    }
  }
  // void setAartiReminder({
  //   required String title,
  //   required String time,
  // }) {
  //   // time example: 5:00 AM
  //   final parts = time.split(" ");
  //   final hm = parts[0].split(":");
  //
  //   int hour = int.parse(hm[0]);
  //   int minute = int.parse(hm[1]);
  //
  //   if (parts[1] == "PM" && hour != 12) hour += 12;
  //   if (parts[1] == "AM" && hour == 12) hour = 0;
  //
  //   NotificationService.scheduleDaily(
  //     id: title.hashCode,
  //     title: "Aarti Reminder",
  //     body: title,
  //     hour: hour,
  //     minute: minute,
  //   );
  //
  //   Get.snackbar(
  //     "Success",
  //     "Daily reminder set for $title",
  //     snackPosition: SnackPosition.BOTTOM,
  //   );
  // }
}
