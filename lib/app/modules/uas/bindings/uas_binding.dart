import 'package:get/get.dart';

import '../controllers/uas_controller.dart';

class UasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UasController>(
      () => UasController(),
    );
  }
}
