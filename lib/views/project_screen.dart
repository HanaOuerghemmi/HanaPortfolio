import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/links.dart';
import 'package:hanaportfolio/utils/text_style.dart';
import 'package:hanaportfolio/widgets/custom_chip.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              const  Center(
                child: 
                Column(
                  children: [
                    Text("Projects :", style:boldTitleStyleColor,),
                    Text("The projects I've created up to this point. ", style: itemTextStyle,)
                  ],
                ),),
        mediumPaddingVert,
                // project
                 Wrap(
                   alignment: WrapAlignment.center,
                   spacing: 50,
                   runSpacing: 50,
                   children: [
                            ProjectItem(
                              ProjectName: "Simple Shell",
                              image: "assets/images/shell.png",
                              description: "The shell keeps running continuously, doing tasks like reading and understanding user commands, finding and running programs, handling memory, and allowing for code reuse. I collaborated with two others to create this project.",
                              TechChipItem: const  TechChipItem(),
                              link: urlGithubSimpleShell,
                            ), 
                            ProjectItem(
                              ProjectName: "Rayek Social Media",
                              image: "assets/images/rayek.png",
                              description: "Rayek social media for survey creation and distribution, enabling users to gather real-time feedback from their target audience. This valuable data will inform decision-making, product development, and marketing strategies for enhanced success.",
                            TechChipItem:  const TechChipItem2(),
                            link: urlGithubRayek,
                            ),
                            ProjectItem(
                              ProjectName: "Koofin Tracking",
                              image: "assets/images/koofin.png",
                              description: "The developed solution aimed to address an existing food tracking problem and support farmers in achieving global standard plantations from planting to production.",
                            TechChipItem: const  TechChipItem3(),
                            link: urlGithubKoofin,
                            ),
                             
                             ],),
              mediumPaddingVert,
              
            ],
          ),
        )
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
      final String  ProjectName, image, description;
      final Widget  TechChipItem;
      final Uri link;
  const ProjectItem({
    super.key, 
    required this.ProjectName, 
    required this.image, 
    required this.description,
    required this.TechChipItem, 
    required this.link, 
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width:350,
      height: 530,
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

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          //title
        Text(ProjectName, style: itemTitleStyle),
        
           //picture
          Image.asset(image, height: 100,),
          smallSepartor,
          //description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description,
            style: textStyleB,
            textAlign: TextAlign.justify,
            ),
          ),
smallSepartor,
          //technologie
          TechChipItem,
        smallSepartor,
          // link
     InkWell(
      
      onTap: () {
        launchMyUrl(link);
      },
       child: const Row(
        children: [
          Icon(FontAwesomeIcons.github),
          smallPaddingHor,
          Text("View Code ")
        ],
       ),
     )
        ]),
      ),
    );
  }
}

class TechChipItem extends StatelessWidget {
  const TechChipItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap (
    spacing: 10,
    runSpacing: 10,
    children: [
    CustomChip(text: "C Language"), 
    CustomChip(text: "GIT"),
    CustomChip(text: "Unix Shell"),
    CustomChip(text: "Vim"),
    ],);
  }
}


class TechChipItem2 extends StatelessWidget {
  const TechChipItem2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap (
    spacing: 10,
    runSpacing: 10,
    children: [
    CustomChip(text: "Dart"), 
    CustomChip(text: "Flutter"),
    CustomChip(text: "Firebase"),
    CustomChip(text: "Git"),
    CustomChip(text: "GitHub"),
    CustomChip(text: "VSCode"),
    ],);
  }
}

class TechChipItem3 extends StatelessWidget {
  const TechChipItem3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap (
    spacing: 10,
    runSpacing: 10,
    children: [
    CustomChip(text: "Dart"), 
    CustomChip(text: "Flutter"),
    CustomChip(text: "NodeJs"),
    CustomChip(text: "Git"),
    CustomChip(text: "GitHub"),
    CustomChip(text: "VSCode"),
    ],);
  }
}