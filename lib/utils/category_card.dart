import 'package:flutter/material.dart';
import 'package:food_app/models/food_category.dart';

class CategoryCard extends StatelessWidget {
  final FoodCategory category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  category.icon,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
