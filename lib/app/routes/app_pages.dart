import 'package:get/get.dart';

import '../modules/authentification/bindings/authentification_binding.dart';
import '../modules/authentification/views/authentification_view.dart';

import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    
    GetPage(
      name: _Paths.AUTHENTIFICATION,
      page: () => const AuthentificationView(),
      binding: AuthentificationBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
