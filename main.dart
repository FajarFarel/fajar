//memasukkan package yang dibutuhkan oleh aplikasi
import 'package:english_words/english_words.dart';
//paket b.ing
import 'package:flutter/material.dart';
//paket untuk tampilan UI (material UI)
import 'package:provider/provider.dart';
//paket untuk interaksi aplikasi

void main() {
  runApp(MyApp());
}
//membuat abstrak aplikasi statelessWiget {tempelate aplikasih}, aplikasinya bernama myApp  
class MyApp extends StatelessWidget {
  const MyApp({super.key});// manujukan

 
  @override //mengganti nilai lama yang suda ada di tamtele, dengan nilai-nilai yg baru {replace/overwrite}

  Widget build(BuildContext context) {
    // fungsi build adl fungsi yg mambangun UI (ngatur posisi wuget, dst)
    // ChangeNotifierProvider mendengarkan/ mendeteksi se,ua terjadi di aplikasi
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Free Fire',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  //membuat satu state bernama myAppState
  var current = WordPair.random();
  
  } 

class MyHomePage extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('tembak-tembakan'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
} 