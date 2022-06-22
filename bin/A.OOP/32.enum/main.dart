import '../8.initializer List/main.dart';

/// Enum
/// Enum merupakan fitur untuk membuat type data yang sudah jelas nilainya
/// Untuk membuat Enum, kita bisa menggunakan kata kunci enum

enum CustomerLevel { regular, premium, vip }

class Customer {
  String name;
  // menggunkan enum
  CustomerLevel level;

  Customer(this.name, this.level);
}

void main(List<String> args) {
  // menggunkan enum
  var pelanggan = Customer("Saldi", CustomerLevel.premium);
  print(pelanggan.name);
  print(pelanggan.level);

// menampilkan value
  print(CustomerLevel.values);
}
