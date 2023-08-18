import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sidebar_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class Sidebar extends GetView<SidebarController> {
  const Sidebar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Button Example'),
      ),
      body: Center(
        child: Text('Main Content'),
      ),
      endDrawer: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Color(0xFFD99632),
          ), // Yellow border on all sides
          borderRadius: BorderRadius.circular(30.0), // Rounded border
          color: Colors.white, // Background color
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0), // Rounded corners
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: Divider.createBorderSide(
                        context,
                        color: Color(0xFFD99632),
                        width: 1.5,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Colors.black,
                        ),
                        iconSize: 50,
                        onPressed: () {
                          // Add your button's onPressed logic here
                        },
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'Hotels',
                    style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
                Divider(
                  height: 5,
                  thickness: 1.5,
                  indent: 10,
                  endIndent: 10,
                  color: Color(0xFFD99632),
                ),
                ListTile(
                  title: Text(
                    'Apartments',
                    style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
                Divider(
                  height: 5,
                  thickness: 1.5,
                  indent: 10,
                  endIndent: 10,
                  color: Color(0xFFD99632),
                ),
                ListTile(
                  title: Text(
                    'Travel agency',
                    style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
                Divider(
                  height: 5,
                  thickness: 1.5,
                  indent: 10,
                  endIndent: 10,
                  color: Color(0xFFD99632),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color(0xFFD99632),
                    size: 20,
                  ),
                  title: Text(
                    'Logout',
                    style: GoogleFonts.urbanist(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFD99632)),
                  ),
                  onTap: () {
                    // Add your onTap logic here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
