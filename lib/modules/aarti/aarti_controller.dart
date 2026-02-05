import 'package:get/get.dart';
import '../../utils/string.dart';

class AartiController extends GetxController {
  // final FlutterTts flutterTts = FlutterTts();

  final showAarti = false.obs;
  final isEvening = false.obs;
  final isSpeaking = false.obs;

  List<Map<String, String>> get aartiList {
    final lang = Get.locale?.languageCode;

    if (lang == 'hi') {
      return [
        {'id': 'morning', 'title': 'सुबह की आरती', 'time': '6:00 AM'},
        {'id': 'evening', 'title': 'शाम की आरती', 'time': '7:00 PM'},
      ];
    }
    return [
      {'id': 'morning', 'title': 'સવારની આરતી', 'time': '6:00 AM'},
      {'id': 'evening', 'title': 'સાંજની આરતી', 'time': '7:00 PM'},
    ];
  }

  Future<void> onAartiTap(String id) async {
    showAarti.value = true;
    isEvening.value = (id == 'evening');
    // await stop();
  }

  String get aartiTitle =>
      isEvening.value ? 'સાંજની આરતી' : 'સવારની આરતી';

  String get ramdevAarti {
    final lang = Get.locale?.languageCode;

    if (isEvening.value) {
      return lang == 'hi'
          ? ramdevPirEveningAartiHi
          : ramdevPirEveningAartiGu;
    } else {
      return lang == 'hi'
          ? ramdevPirMorningAartiHi
          : ramdevPirMorningAartiGu;
    }
  }

  // 🔊 PLAY TEXT AS AUDIO
  // Future<void> play() async {
  //   final lang = Get.locale?.languageCode;
  //
  //   await flutterTts.setLanguage(lang == 'hi' ? 'hi-IN' : 'gu-IN');
  //   await flutterTts.setSpeechRate(0.45);
  //   await flutterTts.setPitch(1.0);
  //
  //   isSpeaking.value = true;
  //   await flutterTts.speak(ramdevAarti);
  // }
  //
  // // ⏹ STOP
  // Future<void> stop() async {
  //   await flutterTts.stop();
  //   isSpeaking.value = false;
  // }
  //
  // @override
  // void onClose() {
  //   flutterTts.stop();
  //   super.onClose();
  // }
}
