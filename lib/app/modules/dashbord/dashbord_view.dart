import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/comment/views/comment_view.dart';
import 'package:flutter_app/app/modules/favoris/views/favoris_view.dart';
import 'package:flutter_app/app/modules/profile/views/profile_view.dart';
import 'package:flutter_app/app/modules/search/views/search_view.dart';

import 'package:get/get.dart';
import './dashbord_controller.dart';
import '../home/views/home_view.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashbordController>(
      init: DashbordController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                FavorisView(),
                CommentView(),
                SearchView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            backgroundColor: Color(0xFFFFE6BF),
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'lib/app/images/home.png',
                  width: 25.0,
                  height: 25.0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'lib/app/images/favoris.png',
                  width: 25.0,
                  height: 25.0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'lib/app/images/hotel.png',
                  width: 25.0,
                  height: 25.0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'lib/app/images/search.png',
                  width: 25.0,
                  height: 25.0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'lib/app/images/person.png',
                  width: 25.0,
                  height: 25.0,
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
