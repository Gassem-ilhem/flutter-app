import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auth_buttons/auth_buttons.dart';

void main() {
  runApp(GetMaterialApp(
    home: SignupPage(),
  ));
}

class SignupPage extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50.0),
                Text(
                  'Create your account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 70.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full name',
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide(
                        color: Color(0xFFD99632),
                        width: 1.5,
                      ),
                    ),
                  ),
                  validator: (value) => controller.validateName(value),
                  onSaved: (value) => controller.name = value!,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone number',
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.phone_android),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide(
                        color: Color(0xFFD99632),
                        width: 1.5,
                      ),
                    ),
                  ),
                  validator: (value) => controller.validatePhoneNumber(value),
                  onSaved: (value) => controller.phNum = value!,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide(
                        color: Color(0xFFD99632),
                        width: 1.5,
                      ),
                    ),
                  ),
                  validator: (value) => controller.validateEmail(value),
                  onSaved: (value) => controller.email = value!,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide(
                        color: Color(0xFFD99632),
                        width: 1.5,
                      ),
                    ),
                  ),
                  validator: (value) => controller.validatePassword(value),
                  onSaved: (value) => controller.pwd = value!,
                ),
                SizedBox(height: 45.0),
                SizedBox(
                  width: 328,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () => controller.submitForm(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD99632),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      elevation: 8,
                    ),
                    child: Text('SignUp'),
                  ),
                ),
                SizedBox(height: 60.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ...rest of your code for social buttons
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupController extends GetxController {
  String name = '';
  String phNum = '';
  String email = '';
  String pwd = '';
  final formKey = GlobalKey<FormState>();

  String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      // Perform signup action or further processing here
      print('Name: $name');
      print('Phone Number: $phNum');
      print('Email: $email');
      print('Password: $pwd');

      // Show success message using GetX SnackBar
      Get.snackbar(
        'Success',
        'Signup successful!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }
}
