import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class ProfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<profil_controller>(
      () => profil_controller(),
    );
  }
}
