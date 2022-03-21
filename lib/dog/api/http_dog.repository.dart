import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:random_dog/dog/api/client/dog_api.client.dart';
import 'package:random_dog/dog/api/dto/dog.dto.dart';
import 'package:random_dog/dog/domain/dog.dart';

@Singleton(as: DogRepository)
class HttpDogRepository implements DogRepository {
  HttpDogRepository(this._dio);

  final Dio _dio;

  @override
  Future<Dog> getRandomDog() async {
    try {
      final response = await _dio.get(DogApiClient.randomDogs);
      final dogDTO = DogDTO.fromJson(response.data);

      return dogDTO.toDog();
    } on DioError catch (_) {
      rethrow;
    }
  }
}
