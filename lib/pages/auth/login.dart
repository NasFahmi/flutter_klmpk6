import 'package:flutter/material.dart';
import 'package:flutter_klmpk6/pages/Home.dart';
import 'package:flutter_klmpk6/pages/auth/register.dart';
import 'package:flutter_klmpk6/pages/layout.dart';
import 'package:flutter_klmpk6/services/Services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // Declare GlobalKey

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  bool isObscure = true; // Added boolean variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ),
              );
            },
            child: Text(
              'Buat Akun Baru',
              style: TextStyle(
                color: Color(0xffE81D25),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Masuk Ke Akun',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              Text(
                'Anda',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Email
                    emailTextField(),
                    SizedBox(
                      height: 20,
                    ),
                    // Password
                    passwordTextField(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffE81D25),
                  fixedSize: Size(MediaQuery.of(context).size.width, 48),
                  elevation: 0,
                ),
                onPressed: () async {
                  // Validate the form before attempting login
                  if (_formKey.currentState?.validate() ?? false) {
                    // Call the login API
                    bool loginSuccess = await Service.login(
                      emailcontroller.text,
                      passwordcontroller.text,
                    );

                    if (loginSuccess) {
                      // Navigate to the home screen or any other screen upon successful login
                      // For example, you can use Navigator.pushReplacement to replace the current screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MainLayout()), // Replace HomeScreen with your desired screen
                      );
                    } else {
                      // Handle login failure, show an error message or take appropriate action
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Login failed. Please check your credentials.'),
                        ),
                      );
                    }
                  }
                },
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField emailTextField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email Tidak Boleh Kosong';
        }
        return null;
      },
      controller: emailcontroller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade400,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
      ),
    );
  }

  TextFormField passwordTextField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password Tidak Boleh Kosong';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: passwordcontroller,
      keyboardType: TextInputType.text,
      obscureText: isObscure, // Use the boolean variable here
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isObscure = !isObscure; // Toggle the boolean on icon tap
            });
          },
          child: Icon(
            isObscure ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        hintText: '********',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade400,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          gapPadding: 2.0,
        ),
      ),
    );
  }
}
