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

/// Super Constructor
/// Tidak hanya untuk mengakses method atau field yang ada pada parent class, kata kunci super juga bisa digunakan untuk mengakses Constructor
/// Namun syaratnya untuk mengakses parent class Constructor kita harus mengaksesnya di dalam child class constructor
/// Memanggila super constructor hanya bisa dilakukan dalam bentuk redirecting Constructor

// Contoh

class Kendaraan {
  String? typeKendaraan;
  String? tahunKeluaran;
  int cc = 240;

  // parent constructor
  Kendaraan(this.typeKendaraan, this.tahunKeluaran);

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

  Mobil(this.roda, String type, String tahun) : super(type, tahun);

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
  var honda = Mobil("4", "Mobil", "2010");
  honda.infoKendaraan("Honda");
  print(honda.getCC()); // method override
  print(honda.getParentCC()); // get with super keyword parent method
}
