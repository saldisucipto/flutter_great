import 'class/hasbrand.dart';
import 'class/mobil.dart';

/// Multiple Interfaces Inheritances
/// Hal yang membedaka ketika kita melakukan pewarisan adalah, kita hanya bisa melakukan extands terhadap satu class, namun kita bisa melakukan imlements atau interfaces lebih dari 1 class
/// Hal ini dikarenakan sebernya interfaces adalah bukan melakukan pewarisan namun mendekrlasikan ulang semua seluruh method atau Field
/// Anggap saj aini seperti membuat class yang berbeda, namun memiliki Field Dan Method yang sama
/// Untuk melakukan multiple implements, kita bisa menggunkan pemisah tanda , antara class yang kita implements
///

// contoh
class Avanza implements Mobil, HasBrand {
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

  @override
  String getBrand() {
    return "Toyorta";
  }
}
