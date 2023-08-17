import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/home/views/components/categories.dart';
import 'package:flutter_app/app/modules/home/views/components/home_header.dart';
import 'package:flutter_app/app/modules/home/views/components/hotel_card_list.dart';
import 'package:flutter_app/app/modules/home/views/components/hotel_list.dart';
import 'package:flutter_app/app/modules/home/views/components/search_head.dart';
import 'package:flutter_app/app/modules/home/views/components/title_header%20.dart';
import 'package:flutter_app/app/modules/home/views/components/title_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHearder(),
            SizedBox(height: 20),
            TitleHeader(),
            SizedBox(height: 20),
            SearchHead(),
            SizedBox(height: 20),
            Categories(),
            SizedBox(height: 0),
            HotelList(),
            SizedBox(height: 20),
            TitleList(),
            SizedBox(height: 0),
            HotelCardList()
          ],
        ),
      ),
    );
  }
}
