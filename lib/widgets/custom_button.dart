import 'package:flutter/material.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/links.dart';
import 'package:hanaportfolio/utils/text_style.dart';
class CustomButton extends StatefulWidget {
  final Function() onTap;
  final String text;
  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
      Color buttonColor = Colors.grey.shade50;

    return SizedBox(
      height: 48.0,
      width: 220.0,
      child: MouseRegion(
       onEnter: (_) {
    // Change the color when the cursor enters the button area.
    setState(() {
      buttonColor = Colors.green; // Change to the desired color.
    });
  },
  onExit: (_) {
    // Change the color when the cursor exits the button area.
    setState(() {
      buttonColor = Colors.grey.shade50; // Change to the desired color.
    });
    
  },
  onHover: (_){
    setState(() {
      buttonColor = Colors.blue; 
    });
  },
        child: ElevatedButton(
            style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              
            ),
            onPressed: () {
              launchMyUrl(urlCv);
            },
            child: Row(
              children: [
                Icon(
                  Icons.picture_as_pdf,
                  color: Colors.blueGrey[400],
                ),
                smallPaddingHor,
                Text(
                  "My Resume",
                  style: itemTextStyle,
                ),
              ],
            )),
      ),
    );
  }
}


 