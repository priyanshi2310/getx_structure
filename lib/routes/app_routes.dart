import 'package:get/route_manager.dart';
import 'package:getx_structure_demo/app/detail_page/view/detail_page.dart';
import 'package:getx_structure_demo/app/home_page/view/home_page.dart';

class AppRoutes {
  static String initialRoute = "/home";
  static String homeRoute = "/home";
  static String detailPageRoute = "/detail";

  static List<GetPage> pages = [
    GetPage(name: homeRoute, page: () => HomePage()),
    GetPage(name: detailPageRoute, page: () => DetailPage())
  ];
}
