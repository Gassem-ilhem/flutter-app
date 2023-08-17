import 'package:flutter/material.dart';

class SearchHead extends StatelessWidget {
  SearchHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFFFE6BF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              onChanged: (value) => print(value),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Search Hotel",
                prefixIcon: Image(
                  image: AssetImage('lib/app/images/search.png'),
                  width: 10,
                  height: 10,
                ),
                suffixIcon: Container(
                  padding: const EdgeInsets.only(left: 2),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFD99632),
                    borderRadius: BorderRadius.circular(2000),
                  ),
                  child: IconButton(
                    icon: Image(
                      image: AssetImage('lib/app/images/para.png'),
                      width: 20,
                      height: 20,
                    ),
                    onPressed: () {
                      // Add your button's onPressed logic here
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
