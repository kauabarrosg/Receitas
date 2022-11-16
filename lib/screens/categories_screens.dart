import 'package:flutter/material.dart';
import 'package:receitas/components/category_item.dart';
import 'package:receitas/data/dummy_data.dart';

class CategoriesScreens extends StatelessWidget {
  const CategoriesScreens( {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Vamos Cozinhar?'),
      ),
      body: GridView( 
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2 ,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20, 
          ),
          children: Dummy_Categories.map((cat){
          return CategoryItme(cat);
        }).toList(),
        )
    );
  }
}