import 'package:flutter/material.dart';
import '../screens/screens.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LoginScreen.routenName: (context) => const LoginScreen(),
  SignInScreen.routeName: (context) => const SignInScreen()
};
