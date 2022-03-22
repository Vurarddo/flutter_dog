import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:random_dog/dog/domain/dog.dart';
import 'package:random_dog/dog/domain/dog.service.dart';
import 'package:random_dog/dog/screens/random_dog_screen/cubit/dog_state.dart';

class DogCubit extends Cubit<DogState> {
  DogCubit() : super(DogInitial());
  DogService get dogService => GetIt.instance.get<DogService>();

  void getRandomDog() async {
    emit(DogLoading());

    try {
      final Dog? randomDog = await dogService.getRandomDog();
      emit(DogSuccess(dog: randomDog));
    } catch (e) {
      emit(DogError());
    }
  }

  void getRandomDogs() async {
    emit(DogLoading());

    try {
      final Dogs? randomDogs = await dogService.getRandomDogs();
      emit(DogSuccess(dogs: randomDogs));
    } catch (e) {
      emit(DogError());
    }
  }

  void getGivenNumberDogs(int number) async {
    emit(DogLoading());

    try {
      final Dogs? randomDogs = await dogService.getGivenNumberDogs(15);
      emit(DogSuccess(dogs: randomDogs));
    } catch (e) {
      emit(DogError());
    }
  }
}
