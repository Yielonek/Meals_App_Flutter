import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/category_item.dart';
import './categories_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
      ),
      body: GridView(
        children: CATEGORIES_DATA
            .map((catData) => CategoryItem(catData.title, catData.color))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
