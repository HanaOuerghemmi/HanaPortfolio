import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/text_style.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Align(
            alignment: Alignment.bottomLeft,
            child: Text("Education :", style:boldTitleStyleColor,)),
              largePaddingVert,
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 50,    
            runAlignment: WrapAlignment.center,
            runSpacing: 50,       
            children: [
              EductionItem(
                School: "HolbertonSchool",
                Specialzation: "FullStack Developer",
                date:"Mai 2022 - Present" ,
                ),
              EductionItem(
                School: "ISCAE",
                Specialzation: "Licence Diploma In Management Computing",
                date:"May 2014" ,
              ),
            ],
          ),
          
          
        ],
      ),
    );
  }
}

class EductionItem extends StatelessWidget {
  final String Specialzation, School, date;
  const EductionItem({
    super.key, required this.Specialzation, required this.School, required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 250,
      height: 200,
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
        padding:  EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [

          Text(Specialzation,style: itemTitleStyle,),
          
          Row(
            children: [
              Icon( Icons.calendar_month),
              smallPaddingHor,
              Text(date, style: itemTextStyle,),
            ],
          ),
        
          //title and year
          Row(
         children: [
          Icon( Icons.business_outlined),
          smallPaddingHor,
          Text(School, ),
            
         ],
       ), 
        

          Row(
            children: [
              Icon( Icons.location_on_sharp),
              smallPaddingHor,
              Text("Tunis", ),
            ],
          ),
          
         
        ]),
      ),
    );
  }
}
