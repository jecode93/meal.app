import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_items.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold(
    // appBar: AppBar(
    //   title: const Text('DeliMeals'),
    // ),
    //body:
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(
                catData.title,
                catData.color,
                catData.id,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
    //);
  }
}
