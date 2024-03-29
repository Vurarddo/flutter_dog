import 'package:equatable/equatable.dart';

part 'dog.repository.dart';

class Dog extends Equatable {
  const Dog({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  List<Object?> get props => [imageUrl];
}
