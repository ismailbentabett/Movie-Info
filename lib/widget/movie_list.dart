import 'package:flutter/material.dart';



class MovieL extends StatelessWidget {
final String movie;
MovieL(this.movie);
  @override
  Widget build(BuildContext context) {
        return InkWell(
   onTap: () {
  Navigator.pushNamed(context, '/movie-details' , arguments:{'movie':movie,} );
    

      },
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.red,
      child: Card(
        child: Container(
               height: 50,
      color: Colors.amber[100],
          child: Text(movie),
        ),
      ),
    );
  }
}