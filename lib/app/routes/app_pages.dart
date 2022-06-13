import 'package:get/get.dart';
import 'package:e_learning/app/modules/home/bindings/home_binding.dart';
import 'package:e_learning/app/modules/home/views/login_view.dart';
import 'package:e_learning/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:e_learning/app/modules/homepage/views/homepage_view.dart';
import 'package:e_learning/app/modules/materi/bindings/materi_binding.dart';
import 'package:e_learning/app/modules/materi/views/materi_view.dart';
import 'package:e_learning/app/modules/test/bindings/test_binding.dart';
import 'package:e_learning/app/modules/test/views/test_view.dart';
import 'package:e_learning/app/modules/uas/bindings/uas_binding.dart';
import 'package:e_learning/app/modules/ujian/bindings/ujian_binding.dart';
import 'package:e_learning/app/modules/ujian/views/ujian_view.dart';

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
    GetPage(
      name: _Paths.MATERI,
      page: () => MateriView(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: _Paths.UJIAN,
      page: () => UjianView(),
      binding: UjianBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => TestView(),
      binding: TestBinding(),
    ),
    GetPage(
      name: _Paths.UAS,
      page: () => UasView(),
      binding: UasBinding(),
    ),
  ];
}
