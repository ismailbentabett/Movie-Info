import 'package:flutter/material.dart';
import './screen/categories.dart';
import './screen/movies_list.dart';
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
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    accentColor: Colors.deepPurple,

    // Define the default font family.

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0),
    ),
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

