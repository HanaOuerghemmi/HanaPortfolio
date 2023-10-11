import 'package:flutter/material.dart';
import 'package:hanaportfolio/responsive/desktop_view_main.dart';
import 'package:hanaportfolio/responsive/responsive_layout.dart';
import 'package:hanaportfolio/widgets/navbar/buttom_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: ButtomBARE(),
        desktopBody: DesktopViewMain(),
      ),
    );
  }
}