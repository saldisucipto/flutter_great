/// Named Constructor
/// Constructor hanya dibuat sekali pada class
/// Namun terdapat beberapa fitur yang bername named COnstructor, Yaitu Constructor dengan nama yang berbeda
/// Dengan Menggunakan Named Constructor, kita bisa membuat constructor lebih dari satu, namun wajib menggunkan nama yang berbeda
/// Untuk membuatnya menggunkan Class.namaCOnstructor
/// Named COnstructor Bisa DIbuat lebih dari satu

// Contoh
class Mobil {
  String? namaMobil;
  String? typeMobil;

  // named Constructor
  Mobil.denganNama(this.namaMobil);
  Mobil.denganType(this.typeMobil);
}

void main(List<String> args) {
  Mobil toyota = Mobil.denganNama("Toyota");
  Mobil honda = Mobil.denganType("Fortuner");
  print(toyota.namaMobil);
  print(honda.typeMobil);
}
