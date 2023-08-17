import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favoris_controller.dart';

class FavorisView extends GetView<FavorisController> {
  const FavorisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavorisView'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
