import 'package:flutter/material.dart';
import 'package:flutter_klmpk6/pages/auth/login.dart';
import 'package:flutter_klmpk6/pages/auth/register.dart';
import 'package:flutter_klmpk6/pages/splash/splash.dart';
import 'package:flutter_klmpk6/pages/splash/splashLogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
    );
  }
}
