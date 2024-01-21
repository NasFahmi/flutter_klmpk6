import 'package:flutter/material.dart';

class DetailProfil extends StatefulWidget {
  const DetailProfil({super.key});

  @override
  State<DetailProfil> createState() => _DetailProfilState();
}

class _DetailProfilState extends State<DetailProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profile'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                SizedBox(height: 16),
                Text(
                  'Detail Profil',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.amber,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildItemCardDokter(),
                      SizedBox(height: 16),
                      buildDetailText('Nama Lengkap', 'Joko Maulana'),
                      buildDetailText('Spesialis', 'Bimbingan Keluarga'),
                      buildDetailText('Alamat', 'Muncar Kedungringin'),
                      buildDetailText('Email', 'joko76@gmail.com'),
                      buildDetailText(
                          'Pendidikan Terakhir', 'S1 - Psikolog Konseling'),
                      buildDetailText('Jenis Kelamin', 'Laki-Laki'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItemCardDokter() {
    return Container(
      width: double.infinity,
      height: 210,
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
      child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/man_woman.png'),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green.shade400,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
            ),
            child: Center(
              child: Text(
                'Tersedia',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDetailText(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
