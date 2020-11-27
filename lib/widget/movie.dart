import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
    final String image_url;
    final String name;
    final String disc;
    final double scheight;
    final double scwidth;
    MovieCard(this.image_url,this.name,this.disc,this.scheight,this.scwidth);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
            height:scheight,
            width:scwidth,
        child: Column(
          mainAxisAlignment : MainAxisAlignment.spaceBetween,
          crossAxisAlignment :CrossAxisAlignment.center,
          children: <Widget>[
              Image.network(image_url),
            Text(name),
            Text(disc), 
          ],
        ),
      ),
    );
  }
}
