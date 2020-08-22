import 'package:bmi/Constants.dart';
import 'package:flutter/material.dart';

class IDButton extends StatelessWidget {

  IDButton({@required this.onTap,this.logo});

  final IconData logo;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      fillColor: inactiveCard,
      child: Icon(
        logo,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56,height: 56),
      elevation: 10,
    );
  }
}
