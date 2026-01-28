import 'package:get/get.dart';
import '../../utils/string.dart';

class BijController extends GetxController {

  List<String> get bijDates {
    final lang = Get.locale?.languageCode;

    if (lang == 'hi') return ramdevBijHi;
    if (lang == 'en') return ramdevBijEn;
    return ramdevBijGu; // default Gujarati
  }
}
