import 'package:flutter/material.dart';
import 'screens/tabs_screen.dart';
// import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'utils/app_routes.dart';
import 'screens/settings_screen.dart';
import 'models/meal.dart';
import 'data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Meal> _availableMeals = dummyMeals;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primaryColor: Colors.pink,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.pink,
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.home: (ctx) => const TabsScreen(),
        AppRoutes.categoriesMeals: (ctx) => CategoriesMealsScreen(_availableMeals),
        AppRoutes.mealDetail: (ctx) => const MealDetailScreen(),
        AppRoutes.settings: (ctx) => const SettingsScreen(),
      },
    );
  }
}
