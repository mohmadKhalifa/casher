import 'package:flutter/material.dart';

class CustomButtton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double heghit;
  final double width;
  final Color? color;
  final Color? colorContainer;
  const CustomButtton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.heghit,
    required this.width,
    this.color,
    this.colorContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: colorContainer ?? Colors.white,
            borderRadius: BorderRadius.circular(10)),
        height: heghit,
        width: width,
        child: Center(
            child: Text(
          title,
          style: TextStyle(color: color ?? Colors.black),
        )),
      ),
    );
  }
}
