import 'package:flutter/material.dart';
 
class CategoryCard extends StatelessWidget {
  final Color card_color;
  final String title;
  final String id;
  CategoryCard(this.id, this.title, this.card_color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
  Navigator.pushNamed(context, '/movies-list' , arguments:{'title':title,'id':id,} );
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.red,
      child: Card(
        color: card_color,
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(
                  0.8, 0.0), // 10% of the width, so there are ten blinds.
              colors: [card_color.withOpacity(.7), card_color], // red to yellow
              tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),
          child: Text(title),
        ),
      ),
    );
  }
}
