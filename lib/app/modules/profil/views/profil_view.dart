import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/profil/views/edit_profil_password.dart';
import 'package:flutter_app/app/modules/profil/views/edit_profil_view.dart';
import 'package:flutter_app/main.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<profil_controller> {
  const ProfilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool light = true;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 8, top: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            /*Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            ),*/
            Text(
              'Profile',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
                margin: EdgeInsets.only(left: 25, top: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Color.fromRGBO(217, 150, 50, 9),
                      size: 120.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25, top: 20),
                      width: 150,
                      height: 60,
                      decoration: new BoxDecoration(
                        color: Color.fromRGBO(235, 220, 199, 0.933),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 18, top: 4),
                            child: Row(children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Color.fromRGBO(217, 150, 50, 9),
                                    size: 30.0,
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ]),
                          ),
                          SizedBox(width: 15),
                          const VerticalDivider(
                            thickness: 3,
                            indent: 10,
                            endIndent: 10,
                            color: Color.fromRGBO(217, 150, 50, 9),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 4),
                            child: Row(children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.apartment_outlined,
                                    color: Color.fromRGBO(217, 150, 50, 9),
                                    size: 28.0,
                                  ),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 40),
            Text(
              'Foulen ben foulen',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Container(
              child: Column(children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    SizedBox(
                      height: 50,
                      width: 0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(255, 255, 251, 251)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfileView()),
                        );
                      },
                      child: Text(
                        'Modifier Profile',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.lock_reset_rounded,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    SizedBox(
                      height: 20,
                      width: 0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color.fromARGB(255, 255, 251, 251)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const EditProfilePasswordView()),
                        );
                      },
                      child: Text(
                        'Modifier Mot de Passe',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Notification',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Mode Nuit',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Switch(
                      value: light,
                      activeColor: Color.fromRGBO(233, 182, 111, 0.925),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {});
                      },
                    )
                  ],
                )
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              color: Color.fromRGBO(231, 166, 61, 0.969),
              thickness: 1.5,
              height: 20,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.logout_sharp,
                  color: Color.fromRGBO(217, 150, 50, 9),
                  size: 28.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Deconnection',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(217, 150, 50, 9)),
                ),
              ],
            )
          ]),
        ));
  }

  void setState(Null Function() param0) {}
}
