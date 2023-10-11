import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hanaportfolio/views/Tools_screen.dart';
import 'package:hanaportfolio/views/contact_screen.dart';
import 'package:hanaportfolio/views/home_mobile.dart';
import 'package:hanaportfolio/views/info_screen.dart';
import 'package:hanaportfolio/views/project_screen.dart';


class ButtomBARE extends StatefulWidget {
  const ButtomBARE({Key? key}) : super(key: key);

  @override
  State<ButtomBARE> createState() => _ButtomBAREState();
}

class _ButtomBAREState extends State<ButtomBARE> with TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 0);
  //final TabController _tabController = TabController(length: 4, vsync: this);
late TabController tabController;
  @override

  void dispose() {
    _pageController.dispose();
   tabController.dispose();
    super.dispose();
  }

  // final List<Widget> bottomBarPages = [
  //   MobileHomeScreen(),
  //   InfoScreen(),
  //   ProjectScreen(),
  //   ContactScreen(),
  // ];
 void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }
  @override
  // int _currentIndex = 0;
  // void _onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
      
  //   });
  // }
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 0,
        elevation: 0,
        bottom:  TabBar(
        
         // onTap: _onTabTapped,
     controller: tabController,
          tabs:const [
            Tab(
              icon:  Icon(FontAwesomeIcons.houseChimney, semanticLabel: "home",),
             // text: "titles[0]",
            ),
            Tab(
              icon:  Icon(FontAwesomeIcons.info),
             // text: "titles[1]",
            ),
            Tab(
              icon:  Icon(FontAwesomeIcons.code),
             // text: "titles[2]",
            ),
            Tab(
              icon:  Icon(FontAwesomeIcons.desktop),
              //text: "titles[3]",
            ),
            Tab(
              icon:  Icon(FontAwesomeIcons.addressCard),
             // text: "titles[3]",
            ),
          ],
        ),
      ),
      body: TabBarView(
       controller: tabController,
        children: [
    MobileHomeScreen(),
    InfoScreen(),
    ToolsScreen(),
    ProjectScreen(),
    ContactScreen(),

          // PageView(
          // controller: _pageController,
          // children: bottomBarPages,
          // onPageChanged: (index) {
          //   //_tabController.animateTo(index);
          //   }
          // ),
        ],
      ),
    );
  }
}
