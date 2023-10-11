import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:hanaportfolio/controller/controller.dart';
import 'package:hanaportfolio/views/contact_screen.dart';
import 'package:hanaportfolio/views/home_mobile.dart';
import 'package:hanaportfolio/views/info_screen.dart';
import 'package:hanaportfolio/views/project_screen.dart';

class NavBAr extends StatefulWidget {
  const NavBAr({super.key});

  @override
  State<NavBAr> createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
  final controller = Get.put(NavBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: PageView.builder(
          //controller: controller.PageController, // Add a PageController here
          onPageChanged: controller.changeTabIndex, // This updates the tab index when a page changes
          itemCount: 4, // Number of pages you want to have
          itemBuilder: (context, index) {
            // Use the index to build the appropriate screen
            switch (index) {
              case 0:
                return MobileHomeScreen();
              case 1:
                return InfoScreen();
              case 2:
                return ProjectScreen();
              case 3:
                return ContactScreen();
              default:
                return MobileHomeScreen();
            }
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.amber,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            _bottombarItem(Icons.home, "home"),
            _bottombarItem(Icons.info, "info"),
            _bottombarItem(Icons.work, "project"),
            _bottombarItem(Icons.contact_mail, "contact"),
          ],
        ),
      );
    });
  }
}
_bottombarItem(IconData icon, String label){
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}


