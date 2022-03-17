import 'package:injectable/injectable.dart';

import 'package:random_dog/dog/domain/dog.dart';

@singleton
class DogService {
  DogService(this._dogRepository);

  final DogRepository _dogRepository;
  Dog? _randomDog;

  Dog? get randomDog => _randomDog;

  Future<Dog?> getRandomDog() async {
    _randomDog = await _dogRepository.getRandomDog();
    return _randomDog;
  }
}
