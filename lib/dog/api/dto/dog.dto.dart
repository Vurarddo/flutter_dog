import 'package:json_annotation/json_annotation.dart';

import 'package:random_dog/dog/domain/dog.dart';

part 'dog.dto.g.dart';

@JsonSerializable(createToJson: false)
class DogDTO {
  DogDTO({
    required this.imageUrl,
  });

  @JsonKey(name: 'message')
  final String imageUrl;

  factory DogDTO.fromJson(Map<String, dynamic> json) => _$DogDTOFromJson(json);

  Dog toDog() {
    return Dog(imageUrl: imageUrl);
  }
}
