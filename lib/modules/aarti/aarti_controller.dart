import 'package:get/get.dart';
import '../../utils/aarti_data.dart';
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
}
