import 'package:flutter/material.dart';
import 'package:bmi/Constants.dart';


class BottomButton extends StatelessWidget {

  BottomButton({this.onPressed,this.lable});
  final Function onPressed;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Color(0xFFEA1556),
        height: bottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Center(
            child: Text(
              lable,
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
      ),
    );
  }
}