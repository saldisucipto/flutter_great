/// Membuat class yang baik adalah di awalai dengan huruf kecil
class Orang {
  // field yang biasa disbut dengan properties atau argument adalah sebuah datta yang terkait pada sebuah class
  // 1. Field yang harus di isi
  String nama = 'Nama Orang';
  // 2. Field boleh berisi null
  String? alamat;
  // 3. Field yang tidakk bisa dirubah ketika di compile
  final String country = 'Indonesia';

  // method adalah function yang ada di dalam Class
  void sayHello(String paramName) {
    print("Hallo $paramName, My Name Is $nama ");
  }

  // method expression atau membuat method dengan cara yang lebih simple
  String getOperatingSystem() => "Windows";
}

/**
 * Cara Membuat Object Ada 2 Cara 
 * 1. var saldi = Orang();
 * 2. Orang saldi = Orang(); // dengan menggunakan tipe data kembalian class tersebut
 */

/// main function
void main(List<String> args) {
  var orang1 = Orang();
  print(orang1);

  /// hasilnya adalah sebagai berikut
  /// Instance of 'Orang'
  // Menggunakan / Memanipulasi proerti pada Class
  print(orang1.nama);
  print(orang1.alamat = "Dukuh Tengah");
  print(orang1.country);

  Orang orang2 = Orang();
  print(orang2);
  // Memanipulasi data
  orang2.nama = "Saldi Sucipto";
  orang2.alamat = "Penjaringan Jakut";
  // properti final ttidak bisa dirubah di object

  print(orang2.nama);
  print(orang2.alamat = "Dukuh Tengah");
  print(orang2.country);
  // Memanggil Method
  orang2.sayHello("Restu");
  print(orang2.getOperatingSystem());

  /// hasilnya adalah sebagai berikut
  /// Instance of 'Orang'
}
