import 'package:first_test/core/utils/config_size.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton(
      {super.key,
      required this.onTap,
      required this.color,
      required this.text,
      required this.textcolor,
      required this.width,
      required this.height});
  final VoidCallback onTap;
  final Color color;
  final double width;
  final double height;
  final String text;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textcolor, fontSize: FontSizes().defaultFontSize),
          ),
        ),
      ),
    );
  }
}
