// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../config.dart' as _i3;
import '../dog/api/http_dog.repository.dart' as _i6;
import '../dog/domain/dog.dart' as _i5;
import '../dog/domain/dog.service.dart' as _i7;
import 'api_client.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioRegisterModule = _$DioRegisterModule();
  gh.singleton<_i3.AppConfig>(_i3.AppConfig());
  gh.singleton<_i4.Dio>(dioRegisterModule.registerClient(get<_i3.AppConfig>()));
  gh.singleton<_i5.DogRepository>(_i6.HttpDogRepository(get<_i4.Dio>()));
  gh.singleton<_i7.DogService>(_i7.DogService(get<_i5.DogRepository>()));
  return get;
}

class _$DioRegisterModule extends _i8.DioRegisterModule {}
