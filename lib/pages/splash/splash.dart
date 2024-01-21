import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image(
          width: 160,
          height: 160,
          image: AssetImage(
            'assets/images/logo red.png',
          ),
        ),
      )),
    );
  }
}