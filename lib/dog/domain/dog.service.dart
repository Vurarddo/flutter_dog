import 'package:injectable/injectable.dart';

import 'package:random_dog/dog/domain/dog.dart';

@singleton
class DogService {
  DogService(this._dogRepository);

  final DogRepository _dogRepository;
  Dog? _randomDog;
  Dogs? _randomDogs;

  Dog? get randomDog => _randomDog;
  Dogs? get randomDogs => _randomDogs;

  Future<Dog?> getRandomDog() async {
    _randomDog = await _dogRepository.getRandomDog();
    return _randomDog;
  }

  Future<Dogs?> getRandomDogs() async {
    _randomDogs = await _dogRepository.getRandomDogs();
    return _randomDogs;
  }

  Future<Dogs?> getGivenNumberDogs(int number) async {
    _randomDogs = await _dogRepository.getGivenNumberDogs(number);
    return _randomDogs;
  }
}
