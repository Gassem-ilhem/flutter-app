import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class EditProfilePasswordView extends GetView<profil_controller> {
  const EditProfilePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Modifier Mot de Passe'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20, top: 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Modifier Mot de Passe',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Releway',
              ),
            ),
            SizedBox(height: 60),
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 370,
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_open_outlined),
                        border: OutlineInputBorder(),
                        hintText: "Mot de passe",
                        labelText: "Mot de passe"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 370,
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        border: OutlineInputBorder(),
                        hintText: "nouveau Mot de passe",
                        labelText: "nouveau Mot de passe"),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 200.0,
                  height: 60.0,
                  child: ElevatedButton(
                    child: Text("Valider",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Releway',
                        )),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(217, 150, 50, 9),
                      elevation: 5,
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ))
          ]),
        ));
  }
}
