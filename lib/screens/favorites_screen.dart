import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favorite yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          Meal tempMeal = favoriteMeals[index];
          return MealItem(
            id: tempMeal.id,
            title: tempMeal.title,
            imageUrl: tempMeal.imageUrl,
            duration: tempMeal.duration,
            complexity: tempMeal.complexity,
            affordability: tempMeal.affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
