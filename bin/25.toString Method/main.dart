import 'data/produk.dart';

void main(List<String> args) {
  var produk = Produk();
  produk.id = "1";
  produk.namaProduk = "Laptop";
  produk.qty = 20;

  // print
  print(produk.toString());
  print(produk);

  // Jadi Seperti in apabila kita ingin merubah represntasi mthod String dari Class Object
}
