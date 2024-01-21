import 'package:flutter/material.dart';

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Artikel'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 4.0), // Add vertical padding
                child: Card(
                  color: Colors.white, // Set white background color
                  elevation: 5, // Add elevation for box shadow
                  shadowColor:
                      Colors.grey.withOpacity(0.5), // Set box shadow color
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image(
                        image: AssetImage('assets/images/man_woman.png'),
                      ),
                    ),
                    title: Text(
                        'Mencegah pernikahan usia dini menciptakan generasi unggul'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
