import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/authentification_controller.dart';

class CreateAccountView extends GetView<AuthentificationController> {
  const CreateAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateAccountView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateAccountView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
