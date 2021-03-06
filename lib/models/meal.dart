// ignore: unused_import
import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Hard }

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  String id;
  List<String> categories;
  String title;
  String imageUrl;
  List<String> ingredients;
  List<String> steps;
  int duration;
  Complexity complexity;
  Affordability affordability;
  bool isGlutenFree;
  bool isLactoseFree;
  bool isVagan;
  bool isVegetarian;

  Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVagan,
      required this.isVegetarian, 
      required bool isVegan});
}
