import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String image_url;
  final String name;
  final String disc;
  final double scheight;
  final double scwidth;
  MovieCard(this.image_url, this.name, this.disc, this.scheight, this.scwidth);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: scheight,
        width: scwidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Image.network(image_url),
            SizedBox(
              height: 20,
            ),
            Text(name),
            SizedBox(
              height: 20,
            ),
            Text(disc),
          ],
        ),
      ),
    );
  }
}
