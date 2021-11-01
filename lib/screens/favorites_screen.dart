import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavoriteScreen(this.favouriteMeals);

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    {
      if (favouriteMeals.isEmpty) {
        return Center(
          child: Text('You have no favorites. So please add some!'),
        );
      } else {
        ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favouriteMeals[index].id,
              title: favouriteMeals[index].title,
              imageUrl: favouriteMeals[index].imageUrl,
              duration: favouriteMeals[index].duration,
              affordability: favouriteMeals[index].affordability,
              complexity: favouriteMeals[index].complexity,
            );
          },
          itemCount: favouriteMeals.length,
        );
      }
    }
  }
}
