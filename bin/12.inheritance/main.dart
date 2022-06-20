/// inheritance atau pewarisan
/// Ihneritance atau pewarisan adalah kemampuan untuk menurukan sebuah class ke class lainya
/// Dalam artian, kita bisa membuat class parent ataupun class child
/// Class Child, hanya bisa mempunyai 1 class parent, namun stau class parent dapat memiliki banyak class child
/// Saat sebuah class diturunkan, maka semua field,method yang ada pada class parent secara otomatis dimiliki juga oleh class Child
/// Untuk melakukan pewarisan di class child kita harus menggunakan kata kunci extends lalu diikuti degan nama class parent yang akan diturunkan

// Contoh

class Kendaraan {
  String? typeKendaraan;
  String? tahunKeluaran;

  void bisaMaju() {
    print("Kendaraan Bisa Maju");
  }

  void infoKendaraan(String merk) {
    print(
        'Kendaraan Ini BerMerk $merk, Dengan Type Kendaraan $typeKendaraan, Dan Tahun Keluaran $tahunKeluaran ');
  }
}

// class Child
class Mobil extends Kendaraan {
  String? roda;
}

// membuat obejct dari class tersebut
void main(List<String> args) {
  var honda = Mobil();
  honda.typeKendaraan = "Mobil"; // menggunakan field
  honda.tahunKeluaran = "2004";
  honda.roda = "4"; // menggunkan field sendiri
  honda.infoKendaraan("Honda"); // menggunkan method class parent
}
