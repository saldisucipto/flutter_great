import 'data/category.dart';

/// Import
/// import adalah kemampuan untuk menggunkan class, function atau variable yang berada pada file yang berbeda
/// import sangat cocok digunakan kita kode program kita sudah banyak dan ditempatkan di banyak file

// contoh import

void main(List<String> args) {
  var category = Category("1", "Gadget");
  print(category.id);
  print(category.nama);
}
