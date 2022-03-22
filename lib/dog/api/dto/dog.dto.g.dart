// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogDTO _$DogDTOFromJson(Map<String, dynamic> json) => DogDTO(
      imageUrl: json['message'] as String,
    );

DogsDTO _$DogsDTOFromJson(Map<String, dynamic> json) => DogsDTO(
      imagesUrl:
          (json['message'] as List<dynamic>).map((e) => e as String).toList(),
    );
