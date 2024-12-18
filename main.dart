// Memasukan package yang dibutuhkan aplikasi
import 'package:english_words/english_words.dart'; // Paket bahasa inggris
import 'package:flutter/material.dart'; // Paket untuk tampilan UI (material UI)
import 'package:provider/provider.dart'; // Paket untuk interasi aplikasi

//
void main() {
  runApp(MyApp());
}

// Membuat abstrak aplikasi dari statelessWidget (template aplikasi), aplikasinya bernama MyApp
class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); // Menunjukan bahwa aplikasi ini akan tetap, tidak berubah setelah di-build

  @override // Mengganti nilai lama yang sudah ada di template, dengan nilai-nilai yang baru (replace / overwrite)
  Widget build(BuildContext context) {
    // Fungsi build adalah fungsi yang membangun UI (mengatur posisi widget, membuat teks, dst)
    // ChangeNotifierProvider mendengarkan/mendeteksi semua interaksi yang terjadi di aplikasi
    return ChangeNotifierProvider(
      create: (context) =>
          MyAppState(), // Memebuat satu state bernama MyAppState
      child: MaterialApp(
        // Pada state ini menggunakan style desain dari MaterialUI
        title: 'percobaan dart', // Diberi judul
        theme: ThemeData(
          // Data tema aplikasi diberi warna deepOrange
          useMaterial3: true, // Versi materialUI yang dipakai versi 3
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 255, 255)),
        ),
        home:
            MyHomePage(), // Nama halaman "MyHomeState" yang menggunakan state "MyAppState"
      ),
    );
  }
}

// Mendefinisikan isi MyAppState
class MyAppState extends ChangeNotifier {
  // State MyAppState diisi dengan 2 kata random yang digabung. Kata random tsb disimpan dalam variable current
  var current = WordPair.random();

  // Mendefinisikan fungsi getNext
  void getNext() {
    current = WordPair.random(); // Mengisi var current dengan kata random baru
    notifyListeners();
  }

  //membuat variabel bertipe "list'/daftar bernama favorites untuk menyimpan daftar kata yangdi-like
  var favorites = <WordPair>[];

  void toggleFavorite() {
    //fungsi untuk menambahkan kata kedalam, atau menghapus kata dari list favorite
    if (favorites.contains(current)) {
      favorites.remove(current); //menghapus kata dari list favorite
    } else {
      favorites.add(current); //menambahkan kata dari list favorite
    }
    notifyListeners(); //menempelkan fungsi ini ke button like supaya button like nisa mengetahui jika dirnya sdeang ditekan
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState
        .current; // variabel pair menyimpan kata yang sedang tampil/aktif

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      // base (Canvas) dari layout
      body: Center(
        child: Column(
          // Di atas scaffold ada body. Body nya, diberi kolom
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // di dalam kolom, diberi teks
            Text('A random idea:'),
            BigCard(
                pair:
                    pair), // Mengambil nilai dari variabel pair, lalu diubah menjadi huruf kecil semua dan ditampilkan sebagai teks
            SizedBox(height: 10),
            // Membuat button timbul didalam body
            Row( //mengubah layout button menjadi row/baris
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                ElevatedButton.icon(
                  //membuat button timbul di dalam body
                  onPressed: () {
                    appState.toggleFavorite();
                  },
                  icon: Icon(icon),
                  label: Text('Like'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  // Fungsi yang dieksekusi ketika button ditekan
                  onPressed: () {
                    appState.getNext(); // Menjalankan fungsi getNext
                  },
                  child: Text('Next'), // Menampilkan teks Next didalam button
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  // Widget BigCard
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // menambahkan tema pada card
    // membuat style untuk teks, diberi nama style, style warna mengikuti parent
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      // Membungkus padding dalam widget Card
      color: theme.colorScheme
          .primary, // menambahkan warna pada card mengikuti tema warna induknya
      child: Padding(
        padding:
            const EdgeInsets.all(20), // Memberi jarak padding diantara teks
        child: Text(
          pair.asLowerCase,
          style:
              style, // menerapkan style dgn nama style yg sudah dibuat, kedalam text
          semanticsLabel:
              "${pair.first} ${pair.second}", //memberikan label pada masing-masing kata, supaya text terbaca dengan benar oleh aplikasi
        ),
      ),
    );
  }
}
