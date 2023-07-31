import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './time_controller.dart';

class TimeView extends GetView<TimeController> {
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
