import 'data/kategori.dart';

/// Equals Operator
/// Untuk membandingkan dua buah oject apakah sama atau tidak, biasanya kita menggunakan operator ==
/// Secara default operator == memiliki class Object, implementasinya jika kita menggunkan operator == milik class Object adalah akan melakukan pengecekan kesamaan object dari lokasi memory
/// Kadang-kadang, kita ingin mengimplemntasiknya logika untuk membdaningkan object
/// Untuk hal ini kta bisa meng override operator ==
///

// contoh

void main(List<String> args) {
  var kat1 = Category(1, 'Laptop');
  var kat2 = Category(1, 'Laptop');

  // membandingakn dengan default ==
  print(kat1 ==
      kat2); // ini akan menghasilkan nilai false karena 2 obejct tersebut berbeda lokasi mempory
  // Setelah di override makan mengahsilkan nilai true
}
