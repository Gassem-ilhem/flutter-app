import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class EditProfileView extends GetView<profil_controller> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Modifier Profile'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20, top: 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Modifier Profile',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Releway',
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Foulen ben Foulen',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Releway',
              ),
            ),
            SizedBox(height: 20),
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 370,
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone_android),
                        border: OutlineInputBorder(),
                        hintText: "Numero Telephone",
                        labelText: "Telephone"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 370,
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        hintText: "nouveau email",
                        labelText: "Email"),
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
