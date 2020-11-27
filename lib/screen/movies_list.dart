
import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '.././widget/movie_list.dart';

class MoviesList extends StatefulWidget {

  @override
  _MoviesListState createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  @override
  Widget build(BuildContext context) {
 

          final routes=ModalRoute.of(context).settings.arguments as Map<String,String>;
               var moredata = dummy_data.where((data) => data.id == routes['id']).map((data)=> data.movies);
var newmovies = moredata.toList()[0];

    return Scaffold(
        appBar:AppBar(
            title:Text(routes['title']),
        ),
        body:ListView(
  padding: const EdgeInsets.all(8),
  
  children:   newmovies.map((data)=>MovieL(data)).toList(),
 
),
    );
  }
}