import 'dart:ffi';

/// Dart Generics
/// Pengenalan Dart Generics
/// Generic adalah kemampuan nemambhkan parameter Type saat membuat class atau method
/// Berbeda dengan tipe data yang bisa kita gunakan pada classs, di function generic memungkinkan ita isa merubah rubah bentuk typr data sesuai dengan kebutuhan kita
///
/// Manfaat generic
/// Pengecekan ketika proses kompilasi
/// Tidak perlu manual menggunkan pengecekan type data dan konversi tipe data
/// memudhkan programmer membuat kode program yang generic shingga bisa digunakan pada berbagai tipe data.
///
/// contoh
class Data<T> {
  // T Adalah type data yang dimiliki oleh class ini
  // dan T belum ditentukan sebelum membuat object dari class tersebut
  T? data;
}

void main(List<String> args) {
  var data = Data<String>(); // menentukan type data dari class data tersebut
  data.data = "Saldi Sucipto";
  print(data.data);

  var daya = Data<int>();
  daya.data = 1;
  print(daya.data);

  /// karena generic kita bisa memberikan data sesuai dengan yang kita butuhkan
}
