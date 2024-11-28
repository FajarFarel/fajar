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
          title: Text('Evaluasi Akhir'),
        ),
        body: Row(
          children: [
            
            Container(
              width: 300, 
              padding: EdgeInsets.all(16.0),
              color: const Color.fromARGB(255, 208, 230, 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Resep Khas Mas Amba',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromARGB(255, 117, 88, 8)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nasi Goreng Spesial',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Nasi Goreng adalah salah satu makanan paling populer di Indonesia. Sebagai hidangan yang sangat sederhana dan mudah dibuat, nasi goreng terbuat dari nasi yang digoreng dengan bumbu-bumbu seperti bawang merah, bawang putih, kecap manis, dan rempah lainnya. Biasanya, nasi goreng juga ditambahkan bahan pelengkap seperti telur, ayam, sosis, udang, atau sayuran.',
                        ),
                        //ini buat bintang sama review
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            SizedBox(width: 8),
                            Text('1K Reviews'),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color.fromARGB(255, 244, 76, 54)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              //ini icon 3 nya
                              child: Column(
                                children: [
                                  Icon(Icons.kitchen, color: const Color.fromARGB(255, 244, 54, 54)),
                                  SizedBox(height: 8),
                                  Text('PREP'),
                                  Text('5 min'),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color.fromARGB(255, 36, 170, 36)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.timer, color: Colors.green),
                                  SizedBox(height: 8),
                                  Text('COOK'),
                                  Text('5-10 min'),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color.fromARGB(255, 0, 68, 255)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.restaurant, color: const Color.fromARGB(255, 0, 110, 255)),
                                  SizedBox(height: 8),
                                  Text('FEEDS:'),
                                  Text('1'),
                                ],
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
            // foto
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/nasigoreng.jpg',
                  fit: BoxFit.cover, 
                  height: double.infinity, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
