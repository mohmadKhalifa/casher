import 'package:flutter/material.dart';

import '../../class/app_them.dart';
import '../castom_button.dart';

class AppBarDetails extends StatelessWidget {
  const AppBarDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
          color: AppTheem.secoundColor,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtton(
              onPressed: () {},
              colorContainer: AppTheem.test,
              color: Colors.white,
              title: "delivery",
              heghit: MediaQuery.of(context).size.height / 9,
              width: MediaQuery.of(context).size.width / 15),
          CustomButtton(
              colorContainer: AppTheem.test,
              color: Colors.white,
              onPressed: () {},
              title: "take away",
              heghit: MediaQuery.of(context).size.height / 9,
              width: MediaQuery.of(context).size.width / 15),
          CustomButtton(
            colorContainer: AppTheem.test,
            color: Colors.white,
            onPressed: () {},
            title: "Lounge",
            heghit: MediaQuery.of(context).size.height / 9,
            width: MediaQuery.of(context).size.width / 15,
          )
        ],
      ),
    );
  }
}
