import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_structure_demo/app/home_page/model/product_model.dart';

class DetailPageController extends GetxController {
  Rxn<Product> product = Rxn(Product());
  @override
  void onInit() {
    super.onInit();
    print("In side detail page===");
    final args = Get.arguments;
    product.value = args["product"];
  }

  onChangeLike(){
    product.value!.isFavourite = !product.value!.isFavourite!;
    update();
  }
}
