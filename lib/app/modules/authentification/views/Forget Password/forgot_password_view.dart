import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../../controllers/authentification_controller.dart';
import 'forgot_pw_page1.dart';
import 'forgot_pw_page2.dart';
import 'forgot_pw_page3.dart';

class ForgotPasswordView extends GetView<AuthentificationController> {
  
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading:  BackButton(
          onPressed: () {
            
           controller.previousPage(duration: Duration(milliseconds: 5), curve: Curves.bounceIn);
          },
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        
        controller: controller,
        children: [firstPage(controller: controller),
        secondPage(controller: controller,),
        thirdPage(controller: controller,),
        ],
      ),
    );
  }
}





