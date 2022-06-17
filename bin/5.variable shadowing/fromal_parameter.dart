/// Formal parameter adalah bagaiman kita bisa merubah value field yang ada pada class
///

class Buah {
  String namaBuah = "Buah Segar";
  double harga = 0;

  // ini dinamakan formal parameter yang akan langsung merubah data field pada class
  Buah(this.namaBuah, this.harga);
}

void main(List<String> args) {
  Buah jeruk = Buah("Jeruk Manis", 20.000);
  print(jeruk.namaBuah);
  print(jeruk.harga);
}
