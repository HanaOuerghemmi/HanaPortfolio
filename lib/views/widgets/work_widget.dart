import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hanaportfolio/utils/badding.dart';
import 'package:hanaportfolio/utils/text_style.dart';
import 'package:hanaportfolio/widgets/custom_chip.dart';


class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text("Work Experience :", style:boldTitleStyleColor,)),
              largePaddingVert,
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 50,    
            runAlignment: WrapAlignment.center,
            runSpacing: 50,  
            children: [
              WorkItem(
                Specialzation: "Full-Stack Developer", 
                time: "Full Time / Remote",
                 date: "June-August 2023", 
                campany: "koofin Start-Up",
                localisation: "Tunis"
                ),
              WorkItem(
                Specialzation: "Teaching Assistant Python", 
                time: "Full Time",
                 date: "Januray -June 2023", 
                campany: "Campusna",
                localisation: "Tunis"
              ),  
              WorkItem(
                Specialzation: "Manager Of Business Development And Sales", 
                time: "Full Time",
                 date: "Jan 2020-Mai 2022", 
                campany: "EPROD Engenireeing",
                localisation: "Tunis / France"
              ),
            ],
          ),
          
         
        ],
      ),
    );
  }
}

class WorkItem extends StatelessWidget {
  final String Specialzation, time, date, campany, localisation;
  const WorkItem({
    super.key, required this.Specialzation, required this.time, required this.date, required this.campany, required this.localisation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
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
           CustomChip(text: time,),
         
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
           Text(campany, ),
            
         ],
       ),
          Row(
            children: [
              Icon( Icons.location_on_sharp),
              smallPaddingHor,
              Text(localisation),
            ],
          ),
         
        ]),
      ),
    );
  }
}
