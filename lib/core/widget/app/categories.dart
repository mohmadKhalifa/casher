import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:get/get.dart';
import 'app_bar_details.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomePageControllerImp>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          const AppBarDetails(),
          Text(controller.categoriesModel[2].categoriesName!)
        ],
      ),
    );
  }
}
