import 'package:flutter/material.dart';

class forget_pw_button extends StatelessWidget {
  final String text;
 final Function() ontap;
  const forget_pw_button({
    super.key, required this.text, required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 10,
        backgroundColor: const Color(0xFFD99632),
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              
            ) ,
      ),
      onPressed: ontap,
       child:  Text(text, style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold,
          ),),);
  }
}