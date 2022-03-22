import 'package:injectable/injectable.dart';

import 'package:random_dog/dog/domain/dog.dart';

@singleton
class DogService {
  DogService(this._dogRepository);

  final DogRepository _dogRepository;
  Dog? _randomDog;
  List<Dog?> _randomDogs = [];

  Dog? get randomDog => _randomDog;
  List<Dog?> get randomDogs => _randomDogs;

  Future<Dog?> getRandomDog() async {
    _randomDog = await _dogRepository.getRandomDog();
    return _randomDog;
  }

  Future<List<Dog?>> getGivenNumberDogs(int number) async {
    _randomDogs = await _dogRepository.getGivenNumberDogs(number);
    return _randomDogs;
  }
}
