import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_structure_demo/app/home_page/view/home_page.dart';
import 'package:getx_structure_demo/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}
