import 'class/repo.dart';

/// No Such Method
/// No Such Method merupakan sebuah method yang tedapat dari class Object yang bisa kita Override
/// No Such method hanya bisa digunkan ketika tipe objectnya adalah dynamic stau sebuah abstract class
///

void main(List<String> args) {
  // penggunkan noSuchethod harus dynamic
  dynamic repo = Repository("produk");

  repo.id(
      "1"); // walau tidak ada kita bisa memberikan method terserah kita secara dynamic
  repo.nama("Laptop");
  repo.qunatity(100);

  // Sebenarnya penggunan ini akan liar karena kita bisa membeirkan method apa saja yang akan ditambahkan
  // biasa digunkan pada abstract class
}
