import 'package:flutter/material.dart';
import 'package:assessment/Register/Register.dart';
import 'package:assessment/login/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25.0),
        child: AppBar(),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image/Screen2.png', // Path to your background image
            fit: BoxFit.cover, // Menyesuaikan gambar dengan seluruh layar
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/image/danau-toba.png',
                      width: double.infinity,
                      height: 230,
                      fit: BoxFit.cover,
                    ),
                    const Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        'Danau Toba',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      left: 16,
                      right: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari destinasi',
                            border: InputBorder.none,
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      child: IconButton(
                        icon: const Icon(Icons.list_rounded,
                            size: 40, color: Colors.white),
                        onPressed: () {
                          // Handle grid icon press
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Destinasi favorit',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildDestinationCard(
                          'assets/image/danau-toba1.png', 'Danau Toba'),
                      _buildDestinationCard(
                          'assets/image/aek-sijorni.png', 'Aek Sijorni'),
                      _buildDestinationCard(
                          'assets/image/air-terjun-sipiso-piso.png',
                          'Air Terjun Sipiso-piso'),
                      _buildDestinationCard(
                          'assets/image/lumbini-natural-park.png',
                          'Lumbini Natural Park'),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Destinasi lain',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildDestinationCard('assets/image/mr-al-mashun.png',
                          'Masjid Raya Al Mashun'),
                      _buildDestinationCard(
                          'assets/image/mikie-holiday.png', 'Mikie Holiday'),
                      _buildDestinationCard(
                          'assets/image/kebun-binatang-siantar.png',
                          'Kebun Binatang Siantar'),
                      _buildDestinationCard(
                          'assets/image/istana-mimun.png', 'Istana Mimun'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // belum beres codenya
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        backgroundColor: const Color(0xFF554FFC),
        child: const Icon(
          Icons.headset_rounded,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildDestinationCard(String imagePath, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset(
              imagePath,
              width: 290,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                name,
                style: const TextStyle(
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
}
