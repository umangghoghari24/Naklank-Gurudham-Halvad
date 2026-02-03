import 'package:get/get.dart';
import 'abhishek_controller.dart';

class AbhishekBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AbhishekController());
  }
}
