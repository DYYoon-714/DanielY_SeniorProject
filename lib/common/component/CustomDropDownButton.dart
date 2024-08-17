import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  //box border
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  //padding
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;
  //text
  //final Color textColor;
  final double fontSize;
  final String fontFamily;
  //hint text
  final String hintText;
  //items
  final List items;
  final String currentItem = '';
  //onChanged
  final VoidCallback onChanged;

  const CustomDropDownButton(
    {
      required this.borderRadius,
      required this.borderColor,
      required this.borderWidth,
      required this.topPadding,
      required this.bottomPadding,
      required this.leftPadding,
      required this.rightPadding,
      required this.fontSize,
      required this.fontFamily,
      required this.hintText,
      required this.items,
      required this.onChanged
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(this.borderRadius),
        color: this.borderColor,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          isExpanded: true,
          borderRadius: BorderRadius.circular(this.borderRadius),
          hint: Padding(
            padding: EdgeInsets.only(left: this.leftPadding, right: this.rightPadding, top: this.topPadding, bottom: this.bottomPadding),
            child: Text(
              style: TextStyle(
                color: Colors.black,
                fontFamily: this.fontFamily,
                fontSize: this.fontSize,
              ),
              this.hintText,
            ),
          ),
          value: currentItem,
          items: this.items.map(
            (value) {
              return DropdownMenuItem(
                value: value,
                child: Padding(
                  padding: EdgeInsets.only(left: this.leftPadding, right: this.rightPadding, top: this.topPadding, bottom: this.bottomPadding),
                  child: Text(
                    value,
                    style:
                    const TextStyle(
                      color: Colors.black,
                    )
                  ),
                ),
              );
            }).toList(),
          onChanged: (Object? value) {
            this.onChanged;
          },
        ),
      ),
    );
  }
}