import 'package:flutter/material.dart';

@immutable
abstract class DogState {}

class UserInitial extends DogState {}

class UserLoading extends DogState {}

class UserSuccess extends DogState {}

class UserError extends DogState {}
