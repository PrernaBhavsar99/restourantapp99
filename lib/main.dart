import 'package:flutter/material.dart';
import 'package:restroapp/screens/categories_screen.dart';
import 'package:restroapp/screens/category_meals_screen.dart';
import 'package:restroapp/screens/filters_screen.dart';
import 'package:restroapp/screens/meal_detail_screen.dart';
// ignore: unused_import
import 'package:restroapp/screens/tabs_screen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
           ),
           )
      ),
     // home: CategoriesScreen(),
     routes: {
       '/': (ctx) => TabsScreen(),

       CategoryMealsScreen.routeName:(ctx) => CategoryMealsScreen(),
       MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
       FilterScreen.routeName:(ctx) => FilterScreen(),
       

            },
            onGenerateRoute: (settings){
              print(settings.arguments);
              //return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
            },
      
          onUnknownRoute: (settings)
          {
                        
                        
           return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);

          },
    );
  }
}

