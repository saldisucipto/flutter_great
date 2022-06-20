/// inheritance atau pewarisan
/// Ihneritance atau pewarisan adalah kemampuan untuk menurukan sebuah class ke class lainya
/// Dalam artian, kita bisa membuat class parent ataupun class child
/// Class Child, hanya bisa mempunyai 1 class parent, namun stau class parent dapat memiliki banyak class child
/// Saat sebuah class diturunkan, maka semua field,method yang ada pada class parent secara otomatis dimiliki juga oleh class Child
/// Untuk melakukan pewarisan di class child kita harus menggunakan kata kunci extends lalu diikuti degan nama class parent yang akan diturunkan

/// Method overriding
/// Method Overriding adalah kemampuan mendeklarasikan ulang method parent class pada child class
/// Saat kita membuat method tersebut secara otomatis kita menimpa method yang ada pada prent clas dan tidak bisa diakses kembali
/// Saat membuat method Overriding kita harus pastikan semuanya sama dan sesuai dengan method yang ada pada parent class

/// Super Keyword
/// Kadang kita ingin mengakses method yang sudah terlanjur kita overriding pada class child
/// Untuk mengakses method milik class parent, kita bisa menggunakan kata kunci super
/// sederhanya super digunakan untuk mengakses class parent
/// Tidak hanya method, field milik class parent pun dapat kita akses menggunakan kata kunci super

// Contoh

class Kendaraan {
  String? typeKendaraan;
  String? tahunKeluaran;
  int cc = 240;

  void bisaMaju() {
    print("Kendaraan Bisa Maju");
  }

  int getCC() {
    return cc;
  }

  void infoKendaraan(String merk) {
    print(
        'Kendaraan Ini BerMerk $merk, Dengan Type Kendaraan $typeKendaraan, Dan Tahun Keluaran $tahunKeluaran ');
  }
}

// class Child
class Mobil extends Kendaraan {
  String? roda;

  // method overriding
  @override
  void infoKendaraan(String merk) {
    print(
        'Mobil Ini BerMerk $merk, Dengan Type Kendaraan $typeKendaraan, Dan Tahun Keluaran $tahunKeluaran ');
  }

  // mengakses parent method menggunkan kata kunci super
  // terlanjur sudah di override
  @override
  int getCC() {
    return 300;
  }

  // kita bisa akses menggunkan super keyword
  int getParentCC() {
    return super.getCC();
  }
}

// membuat obejct dari class tersebut
void main(List<String> args) {
  var honda = Mobil();
  honda.typeKendaraan = "Mobil"; // menggunakan field
  honda.tahunKeluaran = "2004";
  honda.roda = "4"; // menggunkan field sendiri
  print(honda.getCC()); // method override
  print(honda.getParentCC()); // get with super keyword parent method
  honda.infoKendaraan("Honda"); // menggunkan method class parent
}
