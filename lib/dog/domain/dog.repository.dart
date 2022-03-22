part of 'dog.dart';

abstract class DogRepository {
  Future<Dog> getRandomDog();
  Future<Dogs> getRandomDogs();
  Future<Dogs> getGivenNumberDogs(int number);
}
