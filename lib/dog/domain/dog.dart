import 'package:equatable/equatable.dart';

part 'dog.repository.dart';

class Dog extends Equatable {
  const Dog({
    required this.imagesUrl,
  });

  final List<String> imagesUrl;

  @override
  List<Object?> get props => [imagesUrl];
}
