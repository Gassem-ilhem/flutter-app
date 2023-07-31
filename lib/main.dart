import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/modules/splash/views/splash_view.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    GetMaterialApp(
      title: "Application",
      //initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(fontFamily: 'Raleway'),
      home: const SplashView(),
    ),
  );
}
