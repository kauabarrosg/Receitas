import 'package:flutter/material.dart';
import 'package:receitas/models/meals.dart';

class MealsItem extends StatelessWidget {
  const MealsItem(this.meal, {super.key});
  final Meal meal;

  void _isSelectd() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)
              ),
              child: Image.network( 
                meal.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
                )),
            Text(meal.title),
          ],
        ),
      ),
    );
  }
}
