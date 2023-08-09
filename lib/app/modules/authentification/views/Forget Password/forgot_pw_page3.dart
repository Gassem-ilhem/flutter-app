import 'package:flutter/material.dart';

import '../../../../components/button.dart';

class thirdPage extends StatelessWidget {
  const thirdPage({super.key, required this.controller});
 final PageController controller;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(
            height: 70,
           ),
const Text('New Password', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),),
           const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                 obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20),
                 
                  hintText: 'New Password',
                  hintStyle: const TextStyle(
                  
                    color: Colors.black,
                    fontSize: 16,
                  ),
                
                    
       
            
                enabledBorder: OutlineInputBorder(
      
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0xFFD99632),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0xFFD99632),
                    width: 1.0,
                  ),
                )
                
              ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20),
                 
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                  
                    color: Colors.black,
                    fontSize: 16,
                  ),
                
                    
       
            
                enabledBorder: OutlineInputBorder(
      
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0xFFD99632),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color(0xFFD99632),
                    width: 1.0,
                  ),
                )
                
              ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            forget_pw_button(
              ontap: (){},
              text: 'Confirm',
            ),
          ],
        ),
      ),
    );
  }
}