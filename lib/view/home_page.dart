import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/class/app_them.dart';
import 'package:flutter_application_1/core/widget/app/categories.dart';
import 'package:get/get.dart';
import '../controller/home_page_controller.dart';
import '../core/widget/app/order_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppTheem.secoundColor,
        ),
        margin: const EdgeInsets.all(5),
        child: Row(
          children: const <Widget>[
            Expanded(
              flex: 4,
              child: Categories(),
            ),
            Expanded(flex: 1, child: OrderDetails()),
          ],
        ),
      ),
    );
  }
}
