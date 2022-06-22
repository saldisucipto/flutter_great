/// Generic Function
/// Generic parameter type tidak hanya bisa digunakan pada class namun bisa digunakan pada function pula
/// Generic pram type yang kita deklarasikan di function, hanya bisa diakses di function tersebut tidakbisa digunakan pada luar funsgi
/// Ini cocok jika kita ingin membuat generic function, tanpa harus mengubah deklarasi class
///
/// contoh
class ArrayHelper {
  static int count<T>(List<T> list) {
    return list.length;
  }
}

void main(List<String> args) {
  var angka = [1, 2, 3, 4, 5, 5, 5, 6, 7, 7, 7, 8, 8, 88, 8];
  var huruf = ["saya", "Suka", "Belajar", "Dart"];

  print(ArrayHelper.count(angka));
  print(ArrayHelper.count(huruf));
}
