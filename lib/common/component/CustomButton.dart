import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final String text;
  final Color textColor;
  final double width, height;
  final VoidCallback onPressed;
  final double fontSize;
  final String fontFamily;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color backgroundColor;
  final Color foregroundColor;


  const CustomButton(
    {
      required this.text,
      required this.textColor,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.fontSize,
      required this.fontFamily,
      required this.borderRadius,
      required this.borderColor,
      required this.borderWidth,
      required this.backgroundColor,
      required this.foregroundColor,
    }
  );
  //add color
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(this.width, this.height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.borderRadius),
          side: BorderSide(color: this.borderColor),
        ),
        backgroundColor: this.backgroundColor,
        foregroundColor: this.foregroundColor,
      ),
      onPressed: this.onPressed,
      child: Text(
        style: TextStyle(
          color: this.textColor,
          fontFamily: this.fontFamily,
          fontSize: this.fontSize,
        ),
        this.text,
      ),
    );
  }
}