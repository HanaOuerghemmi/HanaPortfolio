import 'package:flutter/material.dart';
import 'package:hanaportfolio/utils/text_style.dart';


class CustomChip extends StatelessWidget {
  final String text;
  const CustomChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.blueGrey[300],
      label:Text(text), labelStyle: itemTextStyle,
      );
  }
}