/// Type Check and Casts
/// Saat menggunkan palomorfisme, kadang kita melakukan konversi tipe data ke tipe data aslinya
/// Namun agar aman, sebelum melakukan konversi pastika kita melakukan type check (pengecekan type data) dengan menggunkan kata kunci is
/// Hasil Operator is adalah Boolean True Or False
/// Untukmelakukan konversi tipe data Object, kita bisa gunakan kata kunci as

/// Polymorphism
/// Polymorphism berasal dari bahasa yunani yang berarti banyak bentuk
/// Dalam OOP, Polymorphism adalah kemampuan sebuah Object berubah bentuk menjadi bentuk lain
/// Polymorphism Erat Hubungnya dengan Inheritance / Turunan

/// Method Polymorphism
/// Yang paling sering digunakan Polymorphism adalah dalam sebuah method
///

// Contoh
class Employee {
  String? nama;

  Employee(this.nama);
}

class Manager extends Employee {
  Manager(String nama) : super(nama);
}

class VicePresident extends Manager {
  VicePresident(String nama) : super(nama);
}

// function
void sayHell(Employee employee) {
  // print('Hallo ${employee.nama}');
  // type check and casts
  if (employee is VicePresident) {
    VicePresident vicePresident = employee as VicePresident;
    print("Hallo Vice president ${vicePresident.nama}");
  } else if (employee is Manager) {
    Manager manager = employee as Manager;
    print("Hallo Manager ${manager.nama}");
  } else {
    print("Hallo ${employee.nama}");
  }
}

void main(List<String> args) {
  // MEMANGGIL METHOD
  sayHell(Employee("Saldi"));
  sayHell(Manager(
      "Saldi")); // karena Manager adalah turunan dari employe Polymorphism bekerja dsini
  sayHell(VicePresident(
      "Saldi")); // karena VP adalah turunan dari employe Polymorphism bekerja dsini
}
