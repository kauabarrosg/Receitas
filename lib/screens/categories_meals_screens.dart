import 'package:flutter/material.dart';
import 'package:receitas/data/dummy_data.dart';
import 'package:receitas/models/category.dart';

import '../components/meals_item.dart';

class CategoriesMeals extends StatelessWidget {
  const CategoriesMeals({super.key});

  
  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categorysMeals = Dummy_Meals.where(((meal) {
      return meal.categories.contains(category.id);
    })).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categorysMeals.length,
         itemBuilder: (context, index) {
           return MealsItem(categorysMeals[index]);
         },
      )
    );
  }
}