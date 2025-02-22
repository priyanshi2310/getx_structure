import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_structure_demo/app/detail_page/controller/detail_page_controller.dart';
import 'package:getx_structure_demo/app/home_page/model/product_model.dart';

class DetailPage extends StatefulWidget {
  final Product? product;
  const DetailPage({super.key, this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  DetailPageController controller = Get.put(DetailPageController());
  @override
  Widget build(BuildContext context) {
    // Product data = controller.product.value ??
    //     Product(
    //         detail: "",
    //         image: "assets/2681826 1 (15).png",
    //         isFavourite: false,
    //         qty: 0,
    //         title: "");
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.product.value!.title ?? ""),
      ),
      body: SafeArea(
          child: GetBuilder<DetailPageController>(
        builder: (detailController) => Column(
          children: [
            Stack(
              children: [
                Image.asset(
                    detailController.product.value!.image ??
                        "assets/2681826 1 (15).png",
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover),
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: detailController.onChangeLike,
                        icon: Icon(detailController.product.value!.isFavourite!
                            ? Icons.favorite
                            : Icons.favorite_border))),
              ],
            ),
            Text(detailController.product.value!.detail ?? "")
          ],
        ),
      )),
    );
  }
}
