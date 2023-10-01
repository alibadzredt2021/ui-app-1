import 'package:get/get.dart';

import '../controllers/dashbaord_controller.dart';

class DashbaordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashbaordController>(
      () => DashbaordController(),
    );
  }
}
