import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/class/app_route.dart';
import 'package:flutter_application_1/core/class/curd.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/data/data.dart';
import 'package:get/get.dart';

abstract class SigninController extends GetxController {
  signIn();
}

class SignInContollrtImp extends SigninController {
  CashData cashData = CashData(Curd());
  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController name;
  late TextEditingController password;
  @override
  signIn() async {
    statusRequest = StatusRequest.loading;
    update();
    var request = await cashData.signIn(name.text, password.text);
    if (request['status'] == 'success') {
      Get.toNamed(AppRoute.homePage);
      statusRequest = StatusRequest.success;
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  void onInit() {
    name = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
