

import 'package:flutter/material.dart';

import '../Utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key
        ,  this.borderRadius
        , required this.textColor
        , required this.backgroundColor
        , required this.text, this.fontSize}) : super(key: key);
  final BorderRadius? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final double?fontSize ;
  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){}
        , child: Text(text,style: Styles.textStyle18.copyWith(
        color: textColor,
        fontSize: fontSize
      ),),
    style: TextButton.styleFrom(
      backgroundColor: backgroundColor ,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius??BorderRadius.circular(12)
      )
    ),);
  }
}
