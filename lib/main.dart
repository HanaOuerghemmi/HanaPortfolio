import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hanaportfolio/home_page.dart';
import 'package:hanaportfolio/routes/routes.dart';
import 'package:hanaportfolio/widgets/navbar/buttom_bar.dart';

// void main() {
//   runApp(

//     GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primaryColor: Colors.blueGrey),
//       initialRoute: AppPage.getnavbar(),
//       getPages: AppPage.routes,
//     )
//   );
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hana Ouerghemmi',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: HomePage(),
    );
  }
}