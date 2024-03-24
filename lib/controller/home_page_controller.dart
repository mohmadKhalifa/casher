import 'package:flutter_application_1/core/class/curd.dart';
import 'package:flutter_application_1/core/class/status_request.dart';
import 'package:flutter_application_1/core/data/data.dart';
import 'package:flutter_application_1/core/model/categories_model.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  getCategories();
  addCategories();
  deleteCategories();
}

class HomePageControllerImp extends HomePageController {
  CashData cashData = CashData(Curd());
  StatusRequest statusRequest = StatusRequest.none;
  List<CategoriesModel> categoriesModel = [];
  @override
  getCategories() async {
    statusRequest = StatusRequest.loading;
    update();
    //sharedPrefrans
    var request = await cashData.getCategories("1");
    if (request['status'] == 'success') {
      List data = request['data'];
      categoriesModel.addAll(data.map((e) => CategoriesModel.fromJson(e)));
      statusRequest = StatusRequest.success;
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  addCategories() {}

  @override
  deleteCategories() {}
  @override
  void onInit() {
    getCategories();
    super.onInit();
  }
}
