import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../authentification/views/Forget Password/forgot_password_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Center(
        child: ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>  ForgotPasswordView()),);}, child: Text('Forgot PW screen'),),
      ),
    );
  }
}
