// class Siswa
class Siswa {
  // Properties
  String nama;
  String kelas;
  int usia;
  double nilaiAkhir;

  // Konstruktor
  Siswa(this.nama, this.kelas, this.usia, this.nilaiAkhir);

  // Method untuk menampilkan nama siswa
  void tampilkanNama() {
    print('Nama Siswa: $nama');
  }

  // Method untuk menampilkan informasi lengkap siswa
  void tampilkanInfo() {
    print('Nama: $nama, Kelas: $kelas, Usia: $usia tahun, Nilai Akhir: $nilaiAkhir');
  }
}

// Fungsi main
void main() {
  // Membuat objek siswa pertama
  var siswa1 = Siswa('Andi', '10A', 15, 88.5);
  siswa1.tampilkanNama();
  siswa1.tampilkanInfo();

  // Membuat objek siswa kedua
  var siswa2 = Siswa('Budi', '11B', 16, 92.0);
  siswa2.tampilkanNama();
  siswa2.tampilkanInfo();

  // Membuat objek siswa ketiga
  var siswa3 = Siswa('Citra', '12C', 17, 95.3);
  siswa3.tampilkanNama();
  siswa3.tampilkanInfo();
}
