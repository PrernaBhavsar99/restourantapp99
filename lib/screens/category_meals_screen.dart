import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:restroapp/models/category.dart';
// ignore: unused_import
import 'package:restroapp/widgets/meal-item.dart';
// ignore: unused_import
import '../dummy_data.dart';


// ignore: must_be_immutable
class CategoryMealsScreen extends StatelessWidget {
  static  const routeName = '/category-meals';


  //final String categoryId;
  //final  String categoryTitle;

 // static String routeName;

  //CategoryMealsScreen(this.categoryId,this.categoryTitle, 
  //{required String id, required String title});



  @override
  Widget build(BuildContext context) {
    final routeArgs =
    ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final  categoryTitle = routeArgs['title'];
    final categoryID = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
      
    }).toList();
      return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(itemBuilder: (ctx,index)
      {
        return MealItem(
          id: categoryMeals[index].id,
          title:categoryMeals[index].title,
          imageUrl:categoryMeals[index].imageUrl,
          duration: categoryMeals[index].duration,
          affordability: categoryMeals[index].affordability,
          complexity: categoryMeals[index].complexity, removeItem: (){}, 
        

          


        );


      }, itemCount: categoryMeals.length,),

      );
    
  }
}


