import 'package:get/get.dart';

import 'sidebar_controller.dart';

class SidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SidebarController>(
      () => SidebarController(),
    );
  }
}
