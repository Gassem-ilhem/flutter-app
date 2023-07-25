import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/authentification_controller.dart';
import '../../../components/my_textfield.dart';
import '../../../components/my_button.dart';
import '../../../components/square_tile.dart';

class AuthentificationView extends GetView<AuthentificationController> {
  // text editing controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  AuthentificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              const Text(
                'Login',
                style: TextStyle(fontSize: 40, fontFamily: 'Akshar'),
              ),

              const SizedBox(height: 50),
              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // sign in button

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 25),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0xFFD99632)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),
              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // facebook + google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // facebook button
                  SquareTile(imagePath: 'lib/app/images/fb.png'),

                  SizedBox(width: 25),
                  // google button
                  SquareTile(imagePath: 'lib/app/images/gl.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'lib/app/images/ap.png')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFFD99632),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
