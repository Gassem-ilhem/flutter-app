import 'package:get/get.dart';

import './dashbord_controller.dart';

class DashbordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashbordController>(
      () => DashbordController(),
    );
  }
}
