import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hanaportfolio/views/Tools_screen.dart';
import 'package:hanaportfolio/views/contact_screen.dart';
import 'package:hanaportfolio/views/home_desktop.dart';
import 'package:hanaportfolio/views/home_mobile.dart';
import 'package:hanaportfolio/views/info_screen.dart';
import 'package:hanaportfolio/views/project_screen.dart';

class DesktopViewMain extends StatelessWidget {
  const DesktopViewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: _homeDesktop(),
    );
  }
}




class _homeDesktop extends StatelessWidget {
  const _homeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // backgroundColor: defaultBg,
      //appBar: myAppBar,
      appBar: AppBar(
       
        
        backgroundColor: Colors.blueGrey,
          toolbarHeight: 0,
          bottom:const  TabBar(
            indicatorColor:  Color.fromARGB(255, 103, 116, 122),
            unselectedLabelColor: Color.fromARGB(255, 145, 171, 184),
        
            tabs: [
              Tab(
                 icon:  Icon(FontAwesomeIcons.info),
                text: "info"),
              Tab(
                icon:  Icon(FontAwesomeIcons.code),
                text: "Tools/Language"),
              Tab(
                icon:  Icon(FontAwesomeIcons.desktop),
                text: "projects"),
              Tab(
                icon:  Icon(FontAwesomeIcons.addressCard),
                text: "contact"),
            ],
          ),
        ),

      body: const Row(
        children: [
          
          //middel part with box widget
           Expanded(
            child: Column(
              children: [
                Expanded(child:
                DesktopHomeScreen(),
                 ),
              ],
            ),
           ),
          Expanded(
            flex: 2,
            child:
                //AboutMe(),
                TabBarView(
                  
                  children: [
                    // Content for Tab 1
                   InfoScreen(),
                    // Content for Tab 2
                  ToolsScreen(),
                  ProjectScreen(),
                  ContactScreen(),
                  ],
                ),
             ),
          
        ],
      ),
    );
  }
}

class TabbarCirculaire extends StatelessWidget {
  const TabbarCirculaire({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
      length: 4,
      child: Scaffold(
       
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child:  TabBar(
                  indicator: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius:  BorderRadius.circular(25.0)
                  ) ,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const  [
                     Tab(text: "info"),
              Tab(text: "tools"),
              Tab(text: "projects"),
              Tab(text: "contact"),
                  ],
                ),
              ),
               Row(
        children: [
          
          //middel part with box widget
           Expanded(
            child: Column(
              children: [
                Expanded(child:
                DesktopHomeScreen(),
                 ),
              ],
            ),
           ),
          Expanded(
            flex: 2,
            child:
                //AboutMe(),
                TabBarView(
                  
                  children: [
                    // Content for Tab 1
                   InfoScreen(),
                    // Content for Tab 2
                  ToolsScreen(),
                  ProjectScreen(),
                  ContactScreen(),
                  ],
                ),
             ),
          
        ],
      ),
            ],
          ),
        )
      ),
    );
  }
}