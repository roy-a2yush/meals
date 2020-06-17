import 'package:flutter/material.dart';

import '../models/favorite_meals.dart';
import '../widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty)
      return Center(
        child: Text("You have no favorites yet! Start Adding some..."),
      );
    else {
      return Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              imageUrl: favoriteMeals[index].imageUrl,
              affordability: favoriteMeals[index].affordability,
              complexity: favoriteMeals[index].complexity,
              duration: favoriteMeals[index].duration,
            );
          },
          itemCount: favoriteMeals.length,
        ),
      );
    }
  }
}
