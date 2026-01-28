import 'package:get/get.dart';
import 'aarti_controller.dart';

class AartiBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AartiController());
  }
}
