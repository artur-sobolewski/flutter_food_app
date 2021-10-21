import 'package:flutter/material.dart';

import './screens/tabs_screen_2.dart';
import './screens/favorites_screen.dart';
import './screens/meal_details_screen.dart';
import './screens/tabs_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              titleTextStyle: TextStyle(
                fontSize: 22,
                fontFamily: 'Raleway',
              ),
            ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // <-- '/' default
      routes: {
        // '/': (ctx) => TabsScreen(),   <-- For Tab screen with navigation from appBar
        // '/': (ctx) => CategoriesScreen(),
        '/': (ctx) => TabsScreenV2(), // <-- For Botton Navigation Bar
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(),
      },

      // Useful with dynamic app
      onGenerateRoute: (settings) {
        print(settings);
        // Example:
        // if (settings.name == '/meal-details') {
        //   return ...;
        // } else if (settings.name == 'something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(
        //   builder: (ctx) => CategoriesScreen(),
        // );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
