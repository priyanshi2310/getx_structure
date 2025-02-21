import 'package:get/get.dart';
import 'package:getx_structure_demo/app/home_page/data_file/home_data.dart';
import 'package:getx_structure_demo/app/home_page/model/product_model.dart';

class HomeController extends GetxController{
  List<Product> myProduct = HomeData.productList;
}