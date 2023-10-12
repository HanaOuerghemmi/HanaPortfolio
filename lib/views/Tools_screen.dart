import 'package:flutter/material.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/text_style.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Text("Languages and Tools", style: boldTitleStyleColor, textAlign: TextAlign.center,),
          smallPaddingVert,
          Text("language technologies and tools that have been recently employed.", style: itemTitleStyle, textAlign: TextAlign.center,),
          mediumPaddingVert,
          Center(
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 30,
              runSpacing: 30,
              children: [
                ToolsCard(text: "C Language ", image: "assets/images/cLang.png"), 
                ToolsCard(text: "Python", image: "assets/images/python.png"), 
                ToolsCard(text: "Dart ", image: "assets/images/dart.png"), 
                 ToolsCard(text: "Flutter ", image: "assets/images/flutter.png"), 
                ToolsCard(text: "JavaScript ", image: "assets/images/javascript.png"), 
                ToolsCard(text: "React ", image: "assets/images/react.png"), 
                ToolsCard(text: "HTML ", image: "assets/images/html.png"), 
                ToolsCard(text: "CSS ", image: "assets/images/css.png"), 
                ToolsCard(text: "Linux", image: "assets/images/linux.png"), 
                ToolsCard(text: "Git", image: "assets/images/git.png"), 
                ToolsCard(text: "VsCode", image: "assets/images/vs.png"), 
                ToolsCard(text: "GitHub ", image: "assets/images/github.png"), 
                
            ],),
          )
        ]),
      ),
    );
  }
}

class ToolsCard extends StatelessWidget {
  final String text, image;
  
  const ToolsCard({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
        boxShadow:const[
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset:
                        Offset(0, 3), // changes position of shadow
                  ),
     ]
      ),
      width: 150,
height:150,
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 50,
            child: Image.asset(image, height: 80,)),
        ),
        Text(text, style: itemTitleStyle,),
      ]),
    );
  }
}