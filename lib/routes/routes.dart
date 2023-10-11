import 'package:get/get.dart';
import 'package:hanaportfolio/views/contact_screen.dart';
import 'package:hanaportfolio/views/home_mobile.dart';
import 'package:hanaportfolio/views/info_screen.dart';
import 'package:hanaportfolio/views/project_screen.dart';
import 'package:hanaportfolio/widgets/navbar/buttom_bar.dart';
import 'package:hanaportfolio/widgets/navbar/navbar.dart';

class AppPage {
static List<GetPage> routes = [
  GetPage(name: navbar, page:()=> const ButtomBARE()), // const NavBAr()),
  GetPage(name: home, page:()=> const MobileHomeScreen()),
  GetPage(name: info, page:()=> const InfoScreen()),
  GetPage(name: project, page:()=> const ProjectScreen()),
  GetPage(name: contact, page:()=> const ContactScreen()),

];


static getnavbar() => navbar;
static gethome() => home;
static getinfo() => info;
static getproject() => project;
static getcontact() => contact;




  static String navbar ='/';
  static String home ='/home';
  static String info ='/info';
  static String project ='/project';
  static String contact ='/contact';
}