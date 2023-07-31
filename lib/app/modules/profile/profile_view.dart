import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Time Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
