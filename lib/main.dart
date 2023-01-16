import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_auth_getx/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorSchemeSeed: Color.fromARGB(255, 250, 0, 167)),
      home: const LoginPage(),
    );
  }
}
