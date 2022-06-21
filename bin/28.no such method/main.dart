import 'class/repo.dart';

/// No Such Method
/// No Such Method merupakan sebuah method yang tedapat dari class Object yang bisa kita Override
/// No Such method hanya bisa digunkan ketika tipe objectnya adalah dynamic stau sebuah abstract class
///

void main(List<String> args) {
  // penggunkan noSuchethod harus dynamic
  var repo = Repository("produk");

  repo.id(
      "1"); // walau tidak ada kita bisa memberikan method terserah kita secara dynamic
  repo.nama("Laptop");
  repo.quantity(100);
  repo.location("Indo");

  // dengan seperti ini kita tidak bisa secara liar menambhkan method yang tidak adapada sbtract clas

  // Sebenarnya penggunan ini akan liar karena kita bisa membeirkan method apa saja yang akan ditambahkan
  // biasa digunkan pada abstract class
  // nosuch method juga bisa digunakan pada interfaces
}
