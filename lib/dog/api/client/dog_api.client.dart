class DogApiClient {
  static const _breeds = '/breeds';

  static const randomDog = '$_breeds/image/random';

  static randomDogs(int number) => '$randomDog/$number';
}
