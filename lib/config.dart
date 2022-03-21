import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  static const _baseUrl =
      'https://dog.ceo/api'; //    https://dog.ceo/api/breeds/image/random/3

  String get baseUrl => _baseUrl;

  AppConfig();
}
