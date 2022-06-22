/// Polymorphism
/// Polymorphism berasal dari bahasa yunani yang berarti banyak bentuk
/// Dalam OOP, Polymorphism adalah kemampuan sebuah Object berubah bentuk menjadi bentuk lain
/// Polymorphism Erat Hubungnya dengan Inheritance / Turunan

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

void main(List<String> args) {
  // membuat object
  Employee employee = Employee("Saldi");
  print(employee);

  // contoh kode polymorphism merubah bentuk Employee menjadi Manager
  employee = Manager("Saldi Manager");
  print(employee);

  // contoh kode polymorphism merubah bentuk Manager menjadi VP

  employee = VicePresident("Saldi VP");
  print(employee);
}
