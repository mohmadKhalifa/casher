import 'package:flutter/material.dart';

import '../../class/app_them.dart';

class CustomGridViewItems extends StatelessWidget {
  const CustomGridViewItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppTheem.secoundColor,
        ),
        margin: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height / 1.5,
        child: GridView.builder(
            itemCount: 27,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.9, crossAxisCount: 6),
            itemBuilder: (context, i) {
              return TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppTheem.test, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(5),
                  child: const Center(
                    child: Text(
                      "test data",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
