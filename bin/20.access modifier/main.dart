import 'class/produk.dart';

/// Access Modifier
/// Secara default saat membuat Filed atau Method dalam sebuah class, maka semua Field dan Method tersebuat daoat diakses oleh siapa saja
/// Kadang - kadang kita inginkan menyembunyikan Field atau Method
/// Untuk menyembunyikan akses Field atau Method, kita bisa menambahkan _(underscore) di awal nama field atau method
/// Secara otomatis Field dan Method tersebut, hanya bisa di akses dari file tersebut, dan artinya tidak bisa diakses dari luar file

void main(List<String> args) {
  var produk = Produk("1", "Pulpen");
  produk.qty = 20;
  print(produk.id);
  print(produk.nama);
  print(produk.getQty());
}
