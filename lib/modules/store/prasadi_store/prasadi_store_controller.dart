import 'package:calender/utils/assets_path.dart';
import 'package:get/get.dart';
import '../../../utils/string.dart';
import '../store_model/product_model.dart';

class PrasadiStoreController extends GetxController {

  var products = <ProductModel>[
    ProductModel(name: "Chunri Prasadi", image: AssetsPath.iconBij, price: "${SC.iNRSymbol} 90"),
    ProductModel(name: "Nariyal", image: AssetsPath.iconBij, price: "${SC.iNRSymbol} 70"),
    ProductModel(name: "Mishri", image: AssetsPath.iconBij, price: "${SC.iNRSymbol} 200"),
    ProductModel(name: "Mishri", image: AssetsPath.iconBij, price: "${SC.iNRSymbol} 8000"),
    ProductModel(name: "Mishri", image: AssetsPath.iconBij, price: "${SC.iNRSymbol} 15"),
  ].obs;

}
