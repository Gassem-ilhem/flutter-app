import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/authentification/views/authentification_view.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      //initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: AuthentificationView(),
    ),
  );
}
