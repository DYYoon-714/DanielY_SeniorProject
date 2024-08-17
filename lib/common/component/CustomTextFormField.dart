import 'package:flutter/material.dart';
import 'package:senior_project/account/util/check_validate.dart';

class CustomTextFormField extends StatelessWidget{
  //hintText
  final String? hintText;
  final bool obscureText;
  //fill
  //final Color fillColor;
  //label text
  final String labelText;
  //final Color textColor;
  final double fontSize;
  final String fontFamily;
  //label text border
  final double labelBorderWidth;
  final Color labelBorderColor;
  //textbox border
  final double borderRadius;
  final Color normalBorderColor;
  final Color selectedBorderColor;
  //final double borderWidth;
  final double normalBorderWidth;
  final double selectedBorderWidth;
  //validater
  final int minLength;
  //padding
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;

  final FocusNode focusNode;
  //final FocusNode focusNode = FocusNode();
  final TextEditingController textController;
  //final TextEditingController textController = TextEditingController();

  final TextInputType textInputType = TextInputType.text;
  final TextInputAction textInputAction = TextInputAction.next;

  CustomTextFormField(
    {
      super.key,
      required this.hintText,
      required this.obscureText,
      //required this.fillColor,
      required this.labelText,
      //required this.textColor,
      required this.fontSize,
      required this.fontFamily,
      required this.labelBorderWidth,
      required this.labelBorderColor,
      required this.borderRadius,
      required this.normalBorderColor,
      required this.selectedBorderColor,
      required this.normalBorderWidth,
      required this.selectedBorderWidth,
      required this.focusNode,
      required this.textController,
      required this.minLength,
      required this.topPadding,
      required this.bottomPadding,
      required this.rightPadding,
      required this.leftPadding,
    }
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: this.obscureText,
      focusNode: this.focusNode,
      keyboardType: this.textInputType,
      textInputAction: this.textInputAction,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: topPadding, bottom: bottomPadding, left: leftPadding, right: rightPadding),
        filled: true,
        fillColor: /*this.fillColor*/Colors.white,
        labelText: (this.labelText),
        labelStyle: TextStyle(
          shadows: [
            Shadow( // bottomLeft
              offset: Offset(-labelBorderWidth, -labelBorderWidth),
              color: this.labelBorderColor
            ),
            Shadow( // bottomRight
              offset: Offset(labelBorderWidth, -labelBorderWidth),
              color: this.labelBorderColor
            ),
            Shadow( // topRight
              offset: Offset(labelBorderWidth, labelBorderWidth),
              color: this.labelBorderColor
            ),
            Shadow( // topLeft
              offset: Offset(-labelBorderWidth, labelBorderWidth),
              color: this.labelBorderColor
            ),
          ],
          color: Colors.black,
          fontSize: this.fontSize,
          fontFamily: this.fontFamily,
        ),
        /*border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(this.borderRadius),
          borderSide: BorderSide(
            //color: this.borderColor,
            width: this.borderWidth,
          ),
        ),*/
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(this.borderRadius),
          borderSide: BorderSide(
            color: this.normalBorderColor,
            width: this.normalBorderWidth,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(this.borderRadius),
          borderSide: BorderSide(
            color: this.selectedBorderColor,
            width: this.selectedBorderWidth,
          ),
        ),
        hintText: this.hintText,
      ),
      controller: this.textController,
      //validator: (value) => CheckValidate().validateName(focusNode, value??''),
      validator: (value) => CheckValidate().validate(this.labelText, this.focusNode, value??'', this.minLength),
    );
  }
}
