import 'package:flutter/material.dart';
import 'package:food_app/models/food_category.dart';
import 'package:food_app/utils/category_card.dart';

class FoodCategoryList extends StatelessWidget {
  final List<FoodCategory> categories = [
    FoodCategory(name: 'Burgers', icon: Icons.fastfood),
    FoodCategory(name: 'Pizza', icon: Icons.local_pizza),
    FoodCategory(name: 'Sushi', icon: Icons.restaurant),
    FoodCategory(name: 'Pasta', icon: Icons.local_dining),
    FoodCategory(name: 'Salad', icon: Icons.local_florist),
    FoodCategory(name: 'Dessert', icon: Icons.cake),
  ];

  FoodCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
