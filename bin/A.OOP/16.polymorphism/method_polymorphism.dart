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
  print('Hallo ${employee.nama}');
}

void main(List<String> args) {
  // MEMANGGIL METHOD
  sayHell(Employee("Saldi Employee"));
  sayHell(Manager(
      "Saldi Manager")); // karena Manager adalah turunan dari employe Polymorphism bekerja dsini
  sayHell(VicePresident(
      "Saldi VP")); // karena VP adalah turunan dari employe Polymorphism bekerja dsini
}
