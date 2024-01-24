import 'package:flutter/material.dart';
import 'package:flutter_klmpk6/model/Home.dart';
import 'package:flutter_klmpk6/services/Services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Home?> futureHome;
  @override
  void initState() {
    super.initState();
    futureHome = Service.fetchDataHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderComponent(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Menu Pilihan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Baca Artikel',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  // Warna latar belakang kuning
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildItemCard(),
                          buildItemCard(),
                          buildItemCard(),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Baca Selengkapnya',
                            style: TextStyle(color: Colors.red.shade400),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Daftar Dokter',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  // Warna latar belakang kuning
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildItemCardDokter(),
                          buildItemCardDokter(),
                          buildItemCardDokter(),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Baca Selengkapnya',
                            style: TextStyle(color: Colors.red.shade400),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container HeaderComponent() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFE999A),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              "Welcome To Love & Learn Muncar Banyuwangi",
              style: TextStyle(
                fontSize: 24.0, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
              ),
              maxLines: 3, // Allow up to 3 lines of text before wrapping
            ),
          ),
          SizedBox(width: 16.0), // Add some space between text and image
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.bottomCenter,
            child: Image(
              width: 200,
              height: 200,
              fit: BoxFit.contain,
              image: AssetImage('assets/images/man_woman.png'),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItemCard() {
    return Container(
      width: 100, // Lebar setiap item
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 150,
              child: ClipRRect(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/man_woman.png'),
                  // Ensure that the image provider is explicitly cast to ImageProvider<Object>
                ),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
              style: TextStyle(
                color: Colors.red.shade400,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
              style: TextStyle(
                fontSize: 8,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemCardDokter() {
    return Container(
      width: 100, // Lebar setiap item
      height: 180,
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: 150,
              child: ClipRRect(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/man_woman.png'),
                  // Ensure that the image provider is explicitly cast to ImageProvider<Object>
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Dr Joko Santoso',
              style: TextStyle(
                color: Colors.red.shade400,
                fontSize: 10,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(fixedSize: Size(100, 10)),
              child: Text(
                'Lihat Profil',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
