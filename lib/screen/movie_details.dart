import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
                final routes=ModalRoute.of(context).settings.arguments as Map<String,String>;

      return Scaffold(
        appBar:AppBar(
            title:Text(routes['movie']),
        ),
        body:Container(),
    );
  }
}
