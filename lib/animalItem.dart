import 'package:flutter/material.dart';

class Animal{
  String? imagePath;
  String? animalName;
  String? kind;
  bool? flyExist = false;

  Animal({
    this.animalName,
    required this.kind,
    required this.imagePath,
    this.flyExist
  });
}