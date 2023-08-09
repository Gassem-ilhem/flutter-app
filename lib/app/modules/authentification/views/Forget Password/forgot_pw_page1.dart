import 'package:flutter/material.dart';

import '../../../../components/button.dart';
import '../../../../components/card.dart';

class firstPage extends StatelessWidget {
  const firstPage({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Forget Password', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  prefixIcon: const Icon(Icons.mail_outline),
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                  
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  iconColor: Colors.black,
                  prefixIconColor: Colors.black,
                    fillColor: Colors.grey.shade200,
        filled: true,
            
                enabledBorder: OutlineInputBorder(
      
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                )
                
              ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            forget_pw_button(text: 'Confirm', ontap: () => controller.nextPage(duration: Duration(milliseconds: 50), curve: Curves.bounceIn) ,),
                  const SizedBox(
                    height: 20,
                  ),
                  forget_pw_card(
                    isEmail: false,
                    info: '+21620551410',
                  ),
                 // const SizedBox(
                   // height: 10,
                  //),
                  forget_pw_card(
                    isEmail: true,
                    info: '+chaa@gmail.com',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  forget_pw_button(text: 'Next', ontap: () => controller.nextPage(duration: Duration(milliseconds: 50), curve: Curves.bounceIn) ,),
                 
                  
                  
          ],
        ),
      ),
    );
  }

 
}
