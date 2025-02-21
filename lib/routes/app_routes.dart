import 'package:get/route_manager.dart';
import 'package:getx_structure_demo/app/home_page/view/home_page.dart';

class AppRoutes{
  static String initialRoute = "/home";
  static String homeRoute = "/home";

  static List<GetPage> pages = [
    GetPage(name: "/home", page: () => HomePage()),
  ];
}