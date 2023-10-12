import 'package:flutter/material.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/text_style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.all(20),
      child: Column( children:[
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("About Me :", style:boldTitleStyleColor,)),
        ),
        largePaddingVert,
        Text("""Software engineer with  background in mobile development specializing  in Flutter and Dart. I'm passionate about competitive programming and problem-solving, known for effective communication and adaptability. 
        My time at Holberton School strengthened my technical skills,
        However, my thirst for knowledge is unending, and I'm excited to further my growth with a forward-thinking company.""", 
                style: textStyleA, textAlign: TextAlign.justify,),
          
      ]),
    );
  }
}