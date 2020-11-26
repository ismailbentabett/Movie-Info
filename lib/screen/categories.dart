import 'package:flutter/material.dart';
import './dummy_data.dart';
import 'widget/categories.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text('Categories'),
        ),
        body:GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children:  dummy_data.map((data)=> new  CategoryCard(data.id,data.title,data.color)).toList(),


)


    );
  }
}