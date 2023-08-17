import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/authentification/views/authentification_view.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleList extends StatelessWidget {
  const TitleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            ' Hotels Nearby',
            style: GoogleFonts.urbanist(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            height: 50,
            width: 80,
            child: GestureDetector(
              onTap: () {
                // Navigate to the new page here
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AuthentificationView()));
              },
              child: Text(
                "Show All",
                style: GoogleFonts.urbanist(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
