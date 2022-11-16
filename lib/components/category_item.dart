import 'package:flutter/material.dart';
import 'package:receitas/models/category.dart';
import 'package:receitas/utils/app_route.dart';

class CategoryItme extends StatelessWidget {
  final Category category;
  const CategoryItme(this.category, {super.key});

  void _selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AppRoute.CATEGORIES_MEALS, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      onTap: () => _selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [category.color.withOpacity(0.5), category.color])),
        child: Text(category.title),
      ),
    );
  }
}
