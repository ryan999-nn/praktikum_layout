import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Layout',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HalamanLayout(),
    );
  }
}

class HalamanLayout extends StatelessWidget {
  const HalamanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Praktikum Layout'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      // Menggunakan SingleChildScrollView agar aman dari error overflow di layar sempit
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Memenuhi lebar layar
          children: [
            // ==========================================
            // SYARAT 1: Minimal 3 Text dengan SizedBox
            // ==========================================
            const Text(
              'Selamat Datang di Tugas 3',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Belajar Container, Row, dan Column',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Mata Kuliah: Pemrograman Mobile',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30), // Jarak sebelum masuk ke Container
            // ==========================================
            // SYARAT 2: Container berwarna (padding, margin, borderRadius)
            // ==========================================
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal, // Sentuhan personal: Warna kesukaan
                borderRadius: BorderRadius.circular(16), // Sudut membulat
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                'Ini adalah contoh penggunaan Container. Terdapat margin agar tidak menempel ke tepi layar, padding agar teks di dalam tidak menempel ke garis pinggir, dan warna latar belakang.',
                style: TextStyle(color: Colors.white, fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            ),

            const SizedBox(height: 30),

            // ==========================================
            // SYARAT 3 & 4: Kartu Profil (Row & Column) + Sentuhan personal
            // ==========================================
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Bagian Kiri: Avatar Inisial
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blueAccent,
                      child: Text(
                        'RD',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(width: 16), // Jarak antara avatar dan teks
                    // Bagian Kanan: Informasi Data Diri
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'Ryan Danuarta',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 4),
                              // Sentuhan personal: Tambahan ikon verified
                              Icon(
                                Icons.verified,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text('NIM: 231080200110'),
                          const Text('Prodi: Informatika'),
                          const SizedBox(height: 8),
                          // Sentuhan personal: Tambahan baris hobi dengan ikon
                          Row(
                            children: const [
                              Icon(
                                Icons.sports_esports,
                                size: 16,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Game & Sepakbola',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
