import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hanaportfolio/views/widgets/header_home_mobile.dart';
import 'package:hanaportfolio/views/widgets/social_contact.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/text_style.dart';
import 'package:hanaportfolio/widgets/custom_button.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Stack(alignment: Alignment.center, children: [
          HomePageMobWithShape(),
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text(
                    "Hello, Its me ",
                    style: boldTitleStyle,
                    textAlign: TextAlign.start,
                  ),
                  TextLiquidFill(text: "Hana Ouerghemmi",
                  
                  waveColor: Colors.blueGrey,
                  boxBackgroundColor: Colors.grey.shade50,
                  boxHeight: 170,
                  textStyle: boldTitleStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 55 ,
                    
                       
                  ),
                  
                  ),
                  
                 
                  SizedBox(
                    height: 100,
                    child: TyperAnimatedTextKit(text: const [
                     
                      "and I'm a Full-stack developer",
                      "Flutter Developer",
                      "Frontend Developer", 
                      "Backend Developer"
                    ],
                    textStyle: boldTitleStyle,
                    totalRepeatCount:5,
                    pause: const Duration(milliseconds: 2000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    ),
                  ),
                  
                 
                  //Text("Having a passion, for programming and solving complex problems I have sharpened my skills during my time at Holberton School. This valuable experience has not improved my abilities but also nurtured effective communication skills. By completing projects I have gained a sense of confidence that drives me to explore new opportunities, for personal growth. My constant desire to acquire knowledge motivates me to actively seek chances to contribute to forward thinking organizations enabling development and meaningful innovation along the way.",
                  //style: textStyleA, textAlign: TextAlign.justify,)
                ],
              ),
              //! button resume
              CustomButton(onTap: () {}, text: "Resume"),
              mediumPaddingVert,
              Center(child: SocialContact()),
            ],
          ),
        ),
      ]),
    ));
  }
}

class HomePageMobWithShape extends StatelessWidget {
  const HomePageMobWithShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 200,
        child: HeaderWidget(200),
      ),
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(50, 60, 25, 10),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(children: [
            Positioned(
                bottom: 5,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3, color: Colors.blueGrey),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2.2),
                            blurRadius: 8),
                      ],
                    ),
                    child: const ClipOval(
                      child: Image(
                        height: 200,
                        width: 200,
                        image: AssetImage('assets/images/profile.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ]))
          ]))
    ]);
  }
}
