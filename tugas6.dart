import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Widget'),
        ),
        body: Center(
          child: Container(
            height: 250, // Ukuran tinggi 200
            width: 300, // Ukuran lebar 200
            margin: const EdgeInsets.symmetric(horizontal: 32.0), // margin kiri dan kanan
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 70, 1), // Mengubah warna kotak menjadi Navy
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.deepPurple),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromRGBO(0, 0, 70, 1), // Background warna navy untuk title
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Title: Flutter Stuff',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(color: Colors.black),
                const Text(
                  'Description: This is a card-like layout using a Container widget. It has padding, margin, and a box shadow.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('visit to read more')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
