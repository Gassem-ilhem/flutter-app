import 'package:flutter/material.dart';

import 'package:get/get.dart';
import './dashbord_controller.dart';
import '../home/views/home_view.dart';
import '../maps/maps_view.dart';
import '../profile/profile_view.dart';
import '../time/time_view.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashbordController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                TimeView(),
                MapsView(),
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
                icon: Icon(Icons.home_outlined, size: 30.0),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time, size: 30.0),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined, size: 30.0),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined, size: 30.0),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
