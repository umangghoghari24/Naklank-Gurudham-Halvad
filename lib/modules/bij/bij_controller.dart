import 'package:get/get.dart';
import '../../utils/bij_data.dart';

class BijController extends GetxController {

  RxList<bool> expandedList = <bool>[].obs;

  List<Map<String, String>> get bijDates {
    final lang = Get.locale?.languageCode;

    if (lang == 'hi') return ramdevBijHi;
    if (lang == 'en') return ramdevBijEn;
    return ramdevBijGu;
  }

  List<String> get bijMeanings {
    final lang = Get.locale?.languageCode;

    if (lang == 'hi') return ramdevBijMeaningHi;
    if (lang == 'en') return ramdevBijMeaningEn;
    return ramdevBijMeaningGu;
  }

  @override
  void onInit() {
    super.onInit();
    expandedList.value =
        List.generate(bijDates.length, (index) => false);
  }

  void toggle(int index) {
    for (int i = 0; i < expandedList.length; i++) {
      if (i == index) {
        expandedList[i] = !expandedList[i]; // tapped one toggle
      } else {
        expandedList[i] = false; // close others
      }
    }
  }
}