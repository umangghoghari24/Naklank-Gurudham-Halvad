import 'package:get/get.dart';
import 'prasadi_store_controller.dart';

class PrasadiStoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrasadiStoreController>(() => PrasadiStoreController());
  }
}
