import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './maps_controller.dart';

class MapsView extends GetView<MapsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Maps Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
