import 'package:calender/utils/assets_path.dart';
import 'package:get/get.dart';
import '../../../utils/string.dart';
import '../store_model/product_model.dart';

class BookStoreController extends GetxController {

  var products = <ProductModel>[
    ProductModel(
      name: "Ramdev Pir Charitra",
      image: AssetsPath.iconBij,
      price: "${SC.iNRSymbol} 390",
    ),
    ProductModel(
      name: "Aarti Sangrah",
      image: AssetsPath.shivling,
      price: "${SC.iNRSymbol} 590",
    ),
    ProductModel(
      name: "Bhajanavali",
      image: AssetsPath.iconGallery,
      price: "${SC.iNRSymbol} 90",
    ),
    ProductModel(
      name: "Satsang Book",
      image: AssetsPath.iconSantavni,
      price: "${SC.iNRSymbol} 1000",
    ),
  ].obs;
}
