import 'package:MealApp/dummy_data.dart';
import 'package:MealApp/widgets/category_item.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
      children: DUMMY_CATEGORIES
          .map((catData) =>
              CategoryItem(catData.id, catData.title, catData.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 3 / 2,
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
    );
  }
}
