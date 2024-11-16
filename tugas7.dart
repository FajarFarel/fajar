import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              'wendit.jpg',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Taman Wisata Air Wendit',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Malang, Indonesia',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 8),
                  Text('4.1'),
                  SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.phone),
                    label: Text('CALL'),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.navigation),
                    label: Text('ROUTE'),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    label: Text('SHARE'),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Taman Wisata Air Wendit adalah tempat wisata populer di Malang yang menawarkan keindahan alam dan berbagai wahana menarik. Sangat cocok untuk dikunjungi bersama keluarga atau teman-teman.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
