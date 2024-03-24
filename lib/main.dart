import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/class/app_them.dart';
import 'package:flutter_application_1/core/class/route.dart';
import 'package:flutter_application_1/view/auth_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: AppTheem.secoundColor,
      )),
      getPages: getPages,
      home: const AuthPage(),
    );
  }
}
