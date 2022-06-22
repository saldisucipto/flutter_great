import '../26.equals operator/data/kategori.dart';

/// Hascode Getter
/// Hascode Getter adalah representasi integer object kita, mirip toString() yang merupakan representasi string, Hashcode adalah representasi integer
/// HashCode sangat bermanfaat untuk membuat struktur data unque seperti HashMap, HashSet, dan lain-lain, karena cukup menggunkan hasCode method unutk mendapatkan identitas unique object kita
/// secara default Hashcode akan mengembalikan nilaiinteger sesuai data memory, namun kita bisa mengoverride nya jika kita ingin
///
/// Kontrak HashCode Method
/// Tidak mudah mengoverride method hasCode, karena ada kontraknya
/// Sebanyak apapun hashCode dipanggil, untuk Object yang sama, harus menghasilkan data integer yang sama
/// Jika ada 2 object yang sama yang dibandingkan menggunkan method equals, maka nilai hascodenya juga harus sama
///
///
void main(List<String> args) {
  var kat1 = Category(1, 'Laptop');
  var kat2 = Category(1, 'Laptop');

  // membandingakn dengan default ==
  print(kat1 ==
      kat2); // ini akan menghasilkan nilai false karena 2 obejct tersebut berbeda lokasi mempory
  // Setelah di override makan mengahsilkan nilai true
  //  memeriksa hascode apakah sudah sama apa belum
  // ini masih salah karena memiliki 2 hashcode yang berbeda
  //  dangen ini membrikan hascode informasi yang sama sesuai dengan object yang dibandingkan
  print(kat1.hashCode);
  print(kat2.hashCode);
}
