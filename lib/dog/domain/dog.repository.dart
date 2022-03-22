part of 'dog.dart';

abstract class DogRepository {
  Future<Dog> getRandomDog();
  Future<List<Dog>> getGivenNumberDogs(int number);
}
