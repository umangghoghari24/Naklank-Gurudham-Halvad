import 'package:get/get.dart';
import '../../utils/bij_data.dart';

class BijController extends GetxController {

  List<Map<String, String>> get bijDates {
    final lang = Get.locale?.languageCode;

    if (lang == 'hi') return ramdevBijHi;
    if (lang == 'en') return ramdevBijEn;
    return ramdevBijGu; // default Gujarati
  }
}
