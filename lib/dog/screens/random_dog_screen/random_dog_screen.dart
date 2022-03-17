import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:random_dog/dog/domain/dog.dart';
import 'package:random_dog/dog/domain/dog.service.dart';
import 'package:random_dog/utils/theme_extensions.dart';

const _kPadding = 15.0;

// ---Texts---
const _randomDogTitle = 'Random Dog';
const _helloDogText = 'Hello Dog!!!';
const _getRandomDogText = 'Get random dog';

class RandomDogScreen extends StatefulWidget {
  static const _routeName = '/random-dog-screen';

  static PageRoute get route {
    return MaterialPageRoute(
      settings: const RouteSettings(name: _routeName),
      builder: (context) {
        return const RandomDogScreen();
      },
    );
  }

  const RandomDogScreen({Key? key}) : super(key: key);

  @override
  State<RandomDogScreen> createState() => _RandomDogScreenState();
}

class _RandomDogScreenState extends State<RandomDogScreen> {
  Dog? randomDog;

  DogService get dogService => GetIt.instance.get<DogService>();

  @override
  Widget build(BuildContext context) {
    Widget child = Text(
      _helloDogText,
      style: context.theme.textTheme.headline4,
    );
    if (randomDog != null) {
      child = Image.network(randomDog!.imageUrl);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(_randomDogTitle),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(_kPadding),
          child: child,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(_kPadding),
        child: ElevatedButton(
          onPressed: () async {
            await _getRandomDog();
            setState(() {});
          },
          child: Text(_getRandomDogText.toUpperCase()),
        ),
      ),
    );
  }

  Future<Dog?> _getRandomDog() async {
    randomDog = await dogService.getRandomDog();
    return randomDog;
  }
}
