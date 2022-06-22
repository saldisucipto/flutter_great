/// Variable Shadowing
/// Varaible shadowing adalah ketika kita membuat nama variable yang sama dengan scope yang menutupi variable dengan nama yang sama di scope atasnya
/// ini bisa terjadi ketika kita membuat parameter sama dengan nama field pada class
/// saat terjadi variable shadowing, maka secara otomatis variable scope diatasnya tidak bisa diakses

// ignore_for_file: prefer_initializing_formals

class Siswa {
  String? namaLengkap;
  String? kelas;

  Siswa(String namaLengkap, String kelas) {
    this.namaLengkap =
        namaLengkap; // ini yang dinamakan varaible shadowing maka kita butuh untuk menggunkan keyword this
    // ignore: prefer_initializing_formals
    this.kelas = kelas;
    // pada intinya ketika terjadi hal seperti ini, kita menggunakan keyword this untuk menunjukan bahwa itu adalah milik class bukan milik dari constructor
  }
}

void main(List<String> args) {
  // object baru
  var saldi = Siswa("Saldi Sucipto", "7 c");
  print(saldi.namaLengkap);
  print(saldi.kelas);
}
