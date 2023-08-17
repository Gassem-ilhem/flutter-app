import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelCardList extends StatelessWidget {
  List<String> imageHotel = [
    'lib/app/images/hotel/hotel3.jpg',
    'lib/app/images/hotel/hotel4.jpg'
  ];
  List<String> titleHotel = ["Jaz Tour Khalef", "Occidental Sousse"];
  List<String> addressHotel = ["211B Baker Street", "211B Baker Street"];
  List<String> priceHotel = ["150DT/Night", "180DT/Night"];
  List<String> star = ["4.8", "4.5"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(imageHotel.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imageHotel[index],
                      height: 101,
                      width: 101,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        titleHotel[index],
                        style: GoogleFonts.urbanist(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        addressHotel[index],
                        style: GoogleFonts.urbanist(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        priceHotel[index],
                        style: GoogleFonts.urbanist(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('lib/app/images/star.png'),
                            width: 10,
                            height: 10,
                          ),
                          SizedBox(width: 5), // Adjust the spacing as needed
                          Text(
                            star[index],
                            style: GoogleFonts.urbanist(
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
