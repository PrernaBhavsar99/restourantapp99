import 'package:flutter/material.dart';


class FilterScreen extends StatelessWidget {
  const FilterScreen({ Key? key }) : super(key: key);

   static const routeName ='/filters';




  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      
      child: Text('Filters!'),
    ),
    );
  }
}