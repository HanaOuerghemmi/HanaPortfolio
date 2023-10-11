import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hanaportfolio/views/widgets/social_contact.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/text_style.dart';
import 'package:hanaportfolio/widgets/custom_button.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text("Feel free to reach out for questions or collaboration opportunities via email.", style: boldTitleStyle, textAlign: TextAlign.center,),
          mediumPaddingVert,
          SizedBox(
            height: 100,
            child: TyperAnimatedTextKit(text: const [
                       
                        "hana.ouerghemmi@holbestonstudents.com",
                        
                      ],
                      textStyle: boldTitleStyleColor,
                      textAlign: TextAlign.center,
                      totalRepeatCount:5,
            pause: const Duration(milliseconds: 2000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
                      ),
          ),
      
                    mediumPaddingVert,
                    CustomButton(onTap: (){}, text: "My Resume"),
                     mediumPaddingVert,
                     SocialContact(),
        ],),
      ),
    );
  }
}