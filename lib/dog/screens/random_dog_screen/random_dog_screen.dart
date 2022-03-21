import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_dog/dog/domain/dog.dart';
import 'package:random_dog/dog/screens/random_dog_screen/cubit/dog_cubit.dart';
import 'package:random_dog/dog/screens/random_dog_screen/cubit/dog_state.dart';
import 'package:random_dog/utils/theme_extensions.dart';

const _kPadding = 15.0;

// ---Texts---
const _randomDogTitle = 'Random Dog';
const _helloDogText = 'Hello Dog!!!';
const _getRandomDogText = 'Get random dog';
const _errorText = 'Something was wrong';

class RandomDogScreen extends StatefulWidget {
  static const _routeName = '/random-dog-screen';

  static PageRoute get route {
    return MaterialPageRoute(
      settings: const RouteSettings(name: _routeName),
      builder: (context) {
        return BlocProvider(
          create: (context) => DogCubit(),
          child: const RandomDogScreen(),
        );
      },
    );
  }

  const RandomDogScreen({Key? key}) : super(key: key);

  @override
  State<RandomDogScreen> createState() => _RandomDogScreenState();
}

class _RandomDogScreenState extends State<RandomDogScreen> {
  Dog? randomDog;

  DogCubit get dogCubit => BlocProvider.of<DogCubit>(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_randomDogTitle),
      ),
      body: BlocBuilder<DogCubit, DogState>(
        builder: (context, state) {
          if (state is DogSuccess) {
            randomDog = state.dog;
          }

          Widget child = Text(
            _helloDogText,
            style: context.theme.textTheme.headline4,
          );
          if (randomDog != null) {
            child = Image.network(randomDog!.imageUrl);
          }

          if (state is DogLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DogSuccess) {
            return Center(
              child: Container(
                padding: const EdgeInsets.all(_kPadding),
                child: child,
              ),
            );
          } else if (state is DogError) {
            return const Center(
              child: Text(_errorText),
            );
          }

          return const SizedBox();
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(_kPadding),
        child: ElevatedButton(
          onPressed: () {
            dogCubit.getRandomDog();
          },
          child: Text(_getRandomDogText.toUpperCase()),
        ),
      ),
    );
  }
}
