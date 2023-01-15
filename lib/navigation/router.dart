import 'package:flutter/material.dart';
import '../screens/screens.dart';

class RouterRoot extends StatefulWidget {
  const RouterRoot({Key? key}) : super(key: key);

  @override
  State<RouterRoot> createState() => _RouterRootState();
}

class _RouterRootState extends State<RouterRoot> {
  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}
