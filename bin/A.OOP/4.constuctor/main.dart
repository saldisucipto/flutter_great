/// Consutructor
/// Constructor adalah sebuah method yang ada pada class yang akan dipanggil pertama kali ketika kita menginisialisasi atau membuat obejct pada class tersebut
/// Kita dapat memberi parameter pada cinstructor karena berfungsi sebagai method juga pada akhirnya
/// Nama constructor harus sama dengan nama Class dan tidak membutuhkan kata kunci void atau return value
/// Ketika kita menmabhkan pada sebuah class maka ketika kita membuat object wajib mingikuti parameter yang ada du Constructor
/// contoh
class Pegawai {
  String? namaDepan;
  String? namaBelakang;

  // Membuat constructor
  Pegawai(String paramNamaDepan, String paramNamaBelakang) {
    // Kta tidak bisa membuat constructor lebih dari 1
    namaDepan = paramNamaDepan;
    namaBelakang = paramNamaBelakang;
  }
}

// main method
void main(List<String> args) {
  // menggunkan constructor
  var saldi = Pegawai("Saldi", "Sucipto");
  print(saldi.namaDepan);
  print(saldi.namaBelakang);
}
