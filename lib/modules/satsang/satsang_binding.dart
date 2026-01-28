import 'package:get/get.dart';
import 'satsang_controller.dart';

class SatsangBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SatsangController>(SatsangController());
  }
}
