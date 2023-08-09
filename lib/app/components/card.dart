import 'package:flutter/material.dart';

class forget_pw_card extends StatelessWidget {
  
   final bool isEmail;
  final String info;
   const forget_pw_card({
    super.key,  required this.isEmail, required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color:  Color(0xFFD99632),
          width: 3,
        ),
      ),
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: SizedBox(
          
          height: 100,
          width: double.infinity,
          child: Padding(padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromRGBO(217, 150, 50, 0.182),
                child:  
                isEmail? Icon(Icons.mail_outline, color: const Color(0xFFD99632),)
                : Icon(Icons.message_outlined,color: const Color(0xFFD99632),)
                // Icon(Icons.mail_outline, color: const Color(0xFFD99632),),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(isEmail? 'Via Email': 'Via SMS', style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,

                  ),),
                  
                  Text('$info', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),),
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