import 'package:flutter/material.dart';
import './constants/routes.dart';
import './navigation/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      home: const RouterRoot(),
      debugShowCheckedModeBanner: false,
    );
  }
}
