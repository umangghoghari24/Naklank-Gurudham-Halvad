import 'package:get/get.dart';
import 'bij_controller.dart';

class BijBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BijController());
  }
}
