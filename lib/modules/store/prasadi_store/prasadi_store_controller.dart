import 'package:calender/utils/assets_path.dart';
import 'package:get/get.dart';
import '../store_model/product_model.dart';

class PrasadiStoreController extends GetxController {

  var products = <ProductModel>[
    ProductModel(name: "Chunri Prasadi", image: AssetsPath.iconBij, price: "₹50"),
    ProductModel(name: "Nariyal", image: AssetsPath.iconBij, price: "₹30"),
    ProductModel(name: "Mishri", image: AssetsPath.iconBij, price: "₹40"),
    ProductModel(name: "Mishri", image: AssetsPath.iconBij, price: "80"),
    ProductModel(name: "Mishri", image: AssetsPath.iconBij, price: "₹40"),
  ].obs;

}
