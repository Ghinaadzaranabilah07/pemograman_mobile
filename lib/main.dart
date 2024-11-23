import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spesifikasi Kopi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/coffeeMenu': (context) => CoffeeHomePage(),
        '/jenis': (context) => JenisCoffeeScreen(),
        '/citaRasa': (context) => CitaRasaCoffeeScreen(),
        '/caraPembuatan': (context) => CaraPembuatanCoffeeScreen(),
        '/asalUsul': (context) => AsalUsulCoffeeScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Coffee',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.brown[800],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke menu Coffee
                Navigator.pushNamed(context, '/coffeeMenu');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[800],
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoffeeHomePage extends StatelessWidget {
  final List<Map<String, String>> coffeeMenu = [
    {'title': 'Jenis Coffee', 'route': '/jenis'},
    {'title': 'Cita Rasa Coffee', 'route': '/citaRasa'},
    {'title': 'Cara Pembuatan Coffee', 'route': '/caraPembuatan'},
    {'title': 'Asal Usul Coffee', 'route': '/asalUsul'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Info'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: coffeeMenu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(coffeeMenu[index]['title']!),
              onTap: () {
                Navigator.pushNamed(context, coffeeMenu[index]['route']!);
              },
            ),
          );
        },
      ),
    );
  }
}

class JenisCoffeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jenis Coffee'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('1. Arabica'),
            Text('2. Robusta'),
            Text('3. Liberica'),
            Text('4. Excelsa'),
            Text('5. Espresso'),
          ],
        ),
      ),
    );
  }
}

class CitaRasaCoffeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cita Rasa Coffee'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('1. Arabica: rasa halus dan kompleks'),
            Text('2. Robusta: rasa yang lebih kuat, lebih pahit'),
            Text('3. Liberica: rasa unik dan kompleks, sedikit buah-buahan tropis atau kayu'),
            Text('4. Excelsa: rasa asam dengan aroma ringan namun cukup tajam'),
            Text('5. Espresso: rasa kuat, pekat, dengan lapisan crema di atasnya yang khas'),
          ],
        ),
      ),
    );
  }
}

class CaraPembuatanCoffeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cara Penyajian Coffee'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('1. Arabica: Diseduh dengan metode manual atau espresso'),
            Text('2. Robusta: Sering digunakan untuk espresso atau campuran kopi instan'),
            Text('3. Liberica: Manual brew seperti pour over atau French press'),
            Text('4. Excelsa: Untuk campuran kopi yang memberi keasaman dan kedalaman'),
            Text('5. Espresso: Dinikmati langsung atau sebagai dasar untuk minuman seperti latte'),
          ],
        ),
      ),
    );
  }
}

class AsalUsulCoffeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asal Usul Coffee'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('1. Arabica: Ethiopia'),
            Text('2. Robusta: Afrika Tengah dan Barat, Asia Tengah'),
            Text('3. Liberica: Afrika Barat, terutama Liberia'),
            Text('4. Excelsa: Subvarietas Liberica, tumbuh di Asia Tenggara'),
            Text('5. Espresso: Berasal dari Italia'),
          ],
        ),
      ),
    );
  }
}
