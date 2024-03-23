import 'package:flutter_application_1/core/class/app_route.dart';
import 'package:flutter_application_1/view/home_page.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoute.homePage, page: () => const HomePage())
];
