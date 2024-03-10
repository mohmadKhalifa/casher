import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressede;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressede,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressede,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
