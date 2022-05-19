import 'package:get/get.dart';

import '../controllers/buttonsave_controller.dart';

class ButtonsaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonsaveController>(
      () => ButtonsaveController(),
    );
  }
}
