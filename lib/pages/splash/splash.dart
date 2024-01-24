import 'package:flutter/material.dart';
import 'package:flutter_klmpk6/pages/splash/splashLogin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    // Delayed navigation after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the desired page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SplashLogin(),
        ),
      );
    });
  }

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
