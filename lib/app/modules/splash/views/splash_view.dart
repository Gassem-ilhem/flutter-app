import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(height: 80),
        Center(
          child: Container(
              width: 150.0,
              height: 150.0,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 150, 50, 9),
                shape: BoxShape.circle,
              ),
              child: const Center(
                  child: Text(
                "Logo",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ))),
        ),
        const SizedBox(height: 50),
        const Center(
          child: Text(
            'Bienvenue .........',
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Courgette',
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 15),
        const Center(
          child: Text(
            "Libérez l'expérience de réservation l'hôtel ultime qui améliore vos vacances",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Courgette",
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 50),
        const SpinKitCircle(
          size: 100,
          color: Color.fromRGBO(217, 150, 50, 9),
        ),
      ],
    ));
  }
}
