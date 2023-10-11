import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hanaportfolio/views/widgets/social_contact.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/text_style.dart';
import 'package:hanaportfolio/widgets/custom_button.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 800,
              decoration: BoxDecoration(
              
            color: Colors.grey[50],
            borderRadius: 
                
            BorderRadius.circular(40),
                   boxShadow:const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset:
                                      Offset(0, 3), // changes position of shadow
                                ),
                   ]
                ),
              
              child: SingleChildScrollView(
                  child: Column(children: [
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
                        
                        Center(
                          child: Container(
                           
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
                                height: 150,
                                width: 150,
                                image: AssetImage('assets/images/profile.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
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
                          fontSize: 50 ,
                          
                             
                        ),
                        
                        ),
                        
                       
                        SizedBox(
                          height: 90,
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
                    smallPaddingVert,
                    Center(child: SocialContact()),
                  ],
                          ),
                        ),
                  ]),
                ),
            ),
          ),
        ));
  }
}
