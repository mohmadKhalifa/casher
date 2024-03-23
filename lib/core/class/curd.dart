import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Curd {
  Future postData(String url, Map data) async {
    try {
      var request = await http.post(Uri.parse(url), body: data);
      if (request.statusCode == 200) {
        return jsonDecode(request.body);
      } else {
        if (kDebugMode) {
          print("Error_____________${request.statusCode}");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Catsh___________$e");
      }
    }
  }
}
