import 'class/rectangle.dart';

/// Getter and Setter
/// Proses Encapsulation / pembungkusan sudah dibuat standarisasinya, dimana kita bisa menggunkan Getter dan Setter method.
/// Getter adalah function yang dibuat untuk mengambil data field
/// Setter adalah function untuk mengubah data field
/// Untuk getter kita menggunakan kata kunci Get
/// Untuk setter kita menggunakan kata kunci Set

void main(List<String> args) {
  var rect = Rectangle();
  rect.width = 0;
  rect.height = 1200;
  print(rect.height);
  print(rect.width);
}
