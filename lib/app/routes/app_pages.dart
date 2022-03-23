import 'package:get/get.dart';

import 'package:e_learning/app/modules/home/bindings/home_binding.dart';
import 'package:e_learning/app/modules/home/views/login_view.dart';
import 'package:e_learning/app/modules/home/views/login_view.dart';
import 'package:e_learning/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:e_learning/app/modules/homepage/views/homepage_view.dart';
import 'package:e_learning/app/modules/login/bindings/login_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => LoginView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
  ];
}
