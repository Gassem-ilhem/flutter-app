import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: 150,
                  // Your container content here
                ),
                Text(
                  ' Discover your',
                  style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Text(
                  ' perfect place to stay',
                  style: GoogleFonts.urbanist(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            height: 50,
            width: 80,
            child: IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ),
              iconSize: 45,
              onPressed: () {
                // Add your button's onPressed logic here
              },
            ),
          ),
        ],
      ),
    );
  }
}
