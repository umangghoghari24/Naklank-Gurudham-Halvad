import 'package:get/get.dart';
import 'book_store_controller.dart';

class BookStoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookStoreController>(() => BookStoreController());
  }
}
