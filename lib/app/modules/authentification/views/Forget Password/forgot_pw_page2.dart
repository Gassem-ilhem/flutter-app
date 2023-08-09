import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../../components/button.dart';


class secondPage extends StatelessWidget {
   secondPage({super.key, required this.controller,});
  final PageController controller;
  final CountdownController countController = CountdownController(autoStart: false);
  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/images/forgotPassword.png'
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Code has been sent to +216 20 551 410'),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: PinCodeTextField(
               
              cursorColor: Color(0xFFD99632),
             
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              pinTheme: PinTheme(
                
                activeBorderWidth: 5,
                activeColor: Color(0xFFD99632),
               borderRadius: BorderRadius.circular(10),
                borderWidth: 5,
                inactiveColor: Colors.red,
                selectedBorderWidth: 5,
                inactiveFillColor: Colors.grey,
                selectedFillColor: Color(0xFFD99632),
                selectedColor: Colors.grey,
                activeFillColor: Colors.grey,
                shape: PinCodeFieldShape.box,

              ),
                blinkWhenObscuring: true,
                obscureText: true,
                animationDuration: const Duration(milliseconds: 300),
                animationType: AnimationType.fade,

              keyboardType: TextInputType.number,
                validator: (v) {
                      if (v!.length < 4) {
                        return "Please fill all the fields";
                      } else {
                        return null;
                      }
                    },
                    obscuringCharacter: '*',
                appContext: context,
                 length: 4),
            ),
           const SizedBox(
            height: 20,
           ),
           Center(
             child: Column(
               children: [
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Resend code in '),
                    Countdown(
controller: countController,
                      seconds: 60,
                    build: (BuildContext context, double time) => Text(time.toString(), style: TextStyle(
                      color: Color(0xFFD99632),
                    ),),
                     interval: Duration(milliseconds: 100),
                     
                    ),
                  ],
                 ),
                 const SizedBox(
                  height: 20,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(20),
                   child: forget_pw_button(
                    ontap: ()=> controller.nextPage(duration: Duration(milliseconds: 50), curve: Curves.bounceIn) ,
                    text: 'Verify',
                   ),
                 ),
               ],
             ),
           ),
           
          ],
        ),
      ),
    );
  }
}