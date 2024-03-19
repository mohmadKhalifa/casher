import 'package:flutter_application_1/core/class/curd.dart';
import 'package:flutter_application_1/core/class/link_app.dart';

class CashData {
  Curd curd;
  CashData(this.curd);

  signIn(String name, String password) async {
    var request = await curd
        .postData(AppLink.signin, {"name": name, "password": password});
    return request;
  }
}
