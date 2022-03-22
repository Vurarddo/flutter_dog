import 'package:flutter/material.dart';

import 'package:random_dog/dog/domain/dog.dart';

@immutable
abstract class DogState {}

class DogInitial extends DogState {}

class DogLoading extends DogState {}

class DogSuccess extends DogState {
  final Dog? dog;
  final Dogs? dogs;
  DogSuccess({
    this.dog,
    this.dogs,
  });
}

class DogError extends DogState {}
