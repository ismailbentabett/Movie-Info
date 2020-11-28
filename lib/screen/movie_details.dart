import 'package:flutter/material.dart';
import '.././widget/movie.dart';
import '../movies_dummy_data.dart';
class MovieDetails extends StatefulWidget {
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}



class _MovieDetailsState extends State<MovieDetails> {
    int index_ico = 0 ;
    var bookmarkico = [
Icon(Icons.bookmark_border),
Icon(Icons.bookmark),
    ];
  @override
  Widget build(BuildContext context) {
                final routes=ModalRoute.of(context).settings.arguments as Map<String,String>;
var movie = movie_dummy_data.firstWhere((data) => data.name == routes['movie']);
double width = MediaQuery.of(context).size.width - 20 ;
double height = MediaQuery.of(context).size.height - 20 ;

      return Scaffold(
        appBar:AppBar(
            title:Text(routes['movie']),
        ),
        body:Center(child: MovieCard(movie.image,movie.name,movie.description,height,width)) ,  
    floatingActionButton: FloatingActionButton(
      onPressed: () {
          setState((){
              if(index_ico == 0){
index_ico =1;

              }else{
index_ico =0;

              }
          });
      },
      child: bookmarkico[index_ico],

    ),
    );
  }
}
