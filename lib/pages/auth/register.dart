import 'package:flutter/material.dart';
import 'package:flutter_klmpk6/pages/auth/login.dart';
import 'package:flutter_klmpk6/services/Services.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController namacontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController alamatcontroller = TextEditingController();
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
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text(
              'Masuk',
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
                'Buat',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              Text(
                'Akunmu',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                child: Column(
                  children: [
                    // Email
                    namaTextField(),
                    SizedBox(
                      height: 20,
                    ),
                    // Password
                    emailTextField(),
                    SizedBox(
                      height: 20,
                    ),
                    // Email
                    alamatTextField(),
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
                  // Validate the form before attempting registration
                  if (Form.of(context)?.validate() ?? false) {
                    // Call the registration API
                    bool registrationSuccess = await Service.register(
                      namacontroller.text,
                      emailcontroller.text,
                      alamatcontroller.text,
                      passwordcontroller.text,
                    );

                    if (registrationSuccess) {
                      // Navigate to the login screen or any other screen upon successful registration
                      // For example, you can use Navigator.pushReplacement to replace the current screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoginScreen()), // Replace LoginScreen with your login screen
                      );
                    } else {
                      // Handle registration failure, show an error message or take appropriate action
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Registration failed. Please try again.'),
                        ),
                      );
                    }
                  }
                },
                child: Text(
                  'BUAT AKUN BARU',
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
        hintText: 'Password',
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

  TextFormField namaTextField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nama Tidak Boleh Kosong';
        }
        return null;
      },
      controller: namacontroller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: 'Nama',
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

  TextFormField alamatTextField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Alamat Tidak Boleh Kosong';
        }
        return null;
      },
      controller: alamatcontroller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: 'Alamat',
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
