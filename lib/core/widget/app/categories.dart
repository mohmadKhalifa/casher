import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_page_controller.dart';
import 'package:flutter_application_1/core/class/app_them.dart';
import 'package:get/get.dart';
import 'app_bar_details.dart';
import 'custom_categories.dart';
import 'custom_items.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomePageControllerImp>();
    return GetBuilder<HomePageControllerImp>(
      builder: (controller) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const AppBarDetails(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppTheem.test,
              ),
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const CustomGridViewItems(),
                  CustomGridViewCategories(data: controller.categoriesModel),
                ],
              ),
            ),
            //----------end in project--------
          ],
        ),
      ),
    );
  }
}
