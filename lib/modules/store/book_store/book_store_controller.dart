import 'package:calender/utils/assets_path.dart';
import 'package:get/get.dart';
import '../store_model/product_model.dart';

class BookStoreController extends GetxController {

  var products = <ProductModel>[
    ProductModel(
      name: "Ramdev Pir Charitra",
      image: AssetsPath.iconBij,
      price: "₹120",
    ),
    ProductModel(
      name: "Aarti Sangrah",
      image: AssetsPath.shivling,
      price: "₹80000",
    ),
    ProductModel(
      name: "Bhajanavali",
      image: AssetsPath.iconGallery,
      price: "₹150",
    ),
    ProductModel(
      name: "Satsang Book",
      image: AssetsPath.iconSantavni,
      price: "₹100",
    ),
  ].obs;

}
