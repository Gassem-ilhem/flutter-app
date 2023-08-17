import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/authentification_controller.dart';

class ForgotPasswordView extends GetView<AuthentificationController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForgotPasswordView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgotPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}