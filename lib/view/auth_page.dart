import 'package:flutter/material.dart';
import '../core/widget/custom_text_button.dart';
import '../core/widget/custom_text_field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: const Color(0xff00a16d),
            borderRadius: BorderRadius.circular(20)),
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextField(
              hintText: "username",
            ),
            const CustomTextField(
              hintText: "password",
            ),
            CustomTextButton(
              onPressede: () {},
              text: "Login",
            )
          ],
        ),
      ),
    ));
  }
}
