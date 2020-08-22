import 'package:bmi/Constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.gender,this.lable});
  final IconData gender;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          gender,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        Text(lable,style: klableText,)
      ],
    );
  }
}