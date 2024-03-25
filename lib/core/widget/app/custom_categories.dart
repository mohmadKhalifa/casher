import 'package:flutter/material.dart';

import '../../class/app_them.dart';
import '../../model/categories_model.dart';

class CustomGridViewCategories extends StatelessWidget {
  final List<CategoriesModel> data;
  const CustomGridViewCategories({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppTheem.secoundColor,
        ),
        margin: const EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height / 1.5,
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.9, crossAxisCount: 2),
          itemBuilder: (context, i) {
            return TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppTheem.test, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    data[i].categoriesName!,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
