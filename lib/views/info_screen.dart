import 'package:flutter/material.dart';
import 'package:hanaportfolio/views/widgets/about.dart';
import 'package:hanaportfolio/views/widgets/education_widget.dart';
import 'package:hanaportfolio/views/widgets/work_widget.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AboutMe(),
              Divider(),
            EducationWidget(),
            Divider(),
            WorkWidget(),
            ],
          ),
        ),
      ),
    );
  }
}