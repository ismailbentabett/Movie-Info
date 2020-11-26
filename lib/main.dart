import 'package:flutter/material.dart';
import './screen/categories.dart';
import './screen/movie_list.dart';
import './screen/movie_details.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
    
      initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => Categories(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/movies-list':(context) => MoviesList(),
    '/movie-details':(context) => MovieDetails(),
  },
    );
  }
}

