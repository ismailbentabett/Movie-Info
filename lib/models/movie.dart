import 'package:flutter/material.dart';

class MovieModel {
  final String image;
  final String name;
  final String description;
  const MovieModel({
    @required this.name,
    this.image,
    this.description,
  });
}