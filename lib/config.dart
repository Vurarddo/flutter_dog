import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  static const _baseUrl = 'https://dog.ceo/api';

  String get baseUrl => _baseUrl;

  AppConfig();
}