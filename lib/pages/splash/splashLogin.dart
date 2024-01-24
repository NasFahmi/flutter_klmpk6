import 'package:flutter/material.dart';
import 'package:flutter_klmpk6/pages/auth/login.dart';
import 'package:flutter_klmpk6/pages/auth/register.dart';

class SplashLogin extends StatelessWidget {
  const SplashLogin({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE81D25),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Use Expanded to center the logo
            Expanded(
              child: Center(
                child: Image(
                  width: 160,
                  height: 160,
                  image: AssetImage('assets/images/logo white.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(MediaQuery.of(context).size.width, 48),
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'BUAT AKUN BARU',
                      style: TextStyle(
                        color: Color(0xffE81D25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      fixedSize: Size(MediaQuery.of(context).size.width, 48),
                      elevation: 0,
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'MASUK',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
