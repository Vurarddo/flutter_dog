import 'package:flutter/material.dart';

import 'package:random_dog/dog/domain/dog.dart';

@immutable
abstract class DogState {}

class DogInitial extends DogState {}

class DogLoading extends DogState {}

class DogSuccess extends DogState {
  final Dog? dog;
  DogSuccess({
    this.dog,
  });
}

class DogError extends DogState {}
