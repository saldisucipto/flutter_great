import 'class/mobil.dart';

/// Interfaces
/// Sebelumnya kita tau bahawa abstract class adalah bia kita gunakan untuk sebagai kontrak untuk class Childnya
/// Namun sebenarnya yang lebih tepat untuk kontrak adalah Interfaces
/// Jangan salah sangka bahwa interfaces disini bukanya User Interfaces
/// interfaces itu mirip seperti abstract class, yang membedakan adalah di interfaces semua method otomatis abstract
/// Untukmewariskan interfaces, kita tidak menggunkan kata kunci extends melainkan Implements
///
/// Membuat Interfaces
/// Hal yang sangat berbeda pada dart dengan bahasa pemrograman lainya seperti Java, php dan lain lain adalah saat kita membuat interfaces
/// Interfaces di Dart bisa diambil dari class manapun, saat kita membuat sebuah class, secara otomatis class tersebut merupakan interfaces pada class itu sendiri.
/// Interfaces dari class tersebut, bisa kita gunakan pada class lain jika kita ingin.
/// Maka secara otomatis kita harus mendeklarasikan semua method dan field yang terdapat pada class tersebut karena yang kita ambil sebenernya adalah interfacesnya bukan class nya.
/// Anggap saja interfaces adalah kontrak pada saat kita membuat class

// contoh
class Avanza implements Mobil {
  // ketika kita mewarisi interfaces itu boleh lebih dari 1 Interfaces
  @override
  String nama = "Avanza";

  @override
  void drive() {
    print("Avanza Sedang Start Engine");
  }

  @override
  int getTier() {
    return 4;
  }
}
