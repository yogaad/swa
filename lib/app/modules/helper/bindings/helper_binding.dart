import 'package:get/get.dart';

import '../controllers/helper_controller.dart';

class HelperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelperController>(
      () => HelperController(),
    );
  }
}
