import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:random_dog/dog/screens/random_dog_screen/random_dog_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final theme = ThemeData(primarySwatch: Colors.blueGrey);

  @override
  Widget build(BuildContext context) {
    Widget child = MaterialApp(
      title: 'Random Dog',
      theme: theme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
    );

    if (kDebugMode) {
      child = Directionality(
        textDirection: TextDirection.ltr,
        child: Banner(
          message: 'DEBUG',
          textDirection: TextDirection.ltr,
          location: BannerLocation.bottomStart,
          child: child,
        ),
      );
    }

    return child;
  }

  Route onGenerateRoute(RouteSettings? settings) {
    return RandomDogScreen.route;
  }
}
