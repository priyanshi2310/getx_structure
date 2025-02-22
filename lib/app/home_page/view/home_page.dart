import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_structure_demo/app/detail_page/view/detail_page.dart';
import 'package:getx_structure_demo/app/home_page/controller/home_controller.dart';
import 'package:getx_structure_demo/app/home_page/model/product_model.dart';
import 'package:getx_structure_demo/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Column(
        children: [
          Text("My product"),
          ...List.generate(
            controller.myProduct.length,
            (index) {
              Product data = controller.myProduct[index];
              return InkWell(
                onTap: () {
                  // Get.to(DetailPage(product: data));
                  Get.toNamed(AppRoutes.detailPageRoute,arguments: {"product":data});
                },
                child: Row(
                  children: [
                    Image.asset(
                      data.image ?? "assets/2681826 1 (15).png",
                      height: 40,
                      width: 40,
                    ),
                    Text(data.title ?? "")
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
