import 'package:flutter/material.dart';
import 'package:receitas/screens/categories_meals_screens.dart';
import 'package:receitas/screens/categories_screens.dart';
import 'package:receitas/utils/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.pink,
        secondary: Colors.amber,
      ),
      canvasColor: const  Color.fromRGBO(255, 254, 229, 1),
       textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontSize: 20,
              ),
            ),
      ),
      routes: { 
        AppRoute.HOME:(cxt) => const CategoriesScreens(),
       AppRoute.CATEGORIES_MEALS: (cxt) => const CategoriesMeals()},
    );
  }
}
