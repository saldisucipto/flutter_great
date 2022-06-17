/// Method operator pada dart
/// Pada Dart Kita bisa membuat opeartor semau kita sesuai dengan kebutuhan
/// contoh
class Jeruk {
  int qty = 0;

  Jeruk operator +(Jeruk jeruk) {
    var hasil = Jeruk();
    hasil.qty = qty + jeruk.qty;
    return hasil;
  }
}

void main(List<String> args) {
  // membuat objek jeruk
  Jeruk jeruk1 = Jeruk();
  jeruk1.qty = 20;

  Jeruk jeruk2 = Jeruk();
  jeruk2.qty = 40;

  var jeruk3 = jeruk1 + jeruk2; // inilah cara penggunaan opeartor
  print(jeruk3.qty);
}
