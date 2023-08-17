import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> categories = ["Hotel", "Recommended", "Popular", "Trending"];
    return Padding(
      padding: EdgeInsets.all(9),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding:
                  EdgeInsets.only(right: 10), // Add spacing between categories
              child: CategoryCard(
                text: categories[index],
                press: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    final textWidth = text.length * 10.0; // Adjust the multiplier as needed
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: textWidth + 15, // Add padding
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6BF),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black38, // Change the text color here
                    fontWeight: FontWeight.bold, // Add any other text styles
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
