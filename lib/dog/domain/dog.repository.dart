part of 'dog.dart';

abstract class DogRepository {
  Future<Dog> getRandomDog();
}