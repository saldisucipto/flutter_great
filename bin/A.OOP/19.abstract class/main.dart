/// Abstract Class
/// Saat kita membuat class, kita bisa menjadikan sebuah class sebagai abtsract class
/// Abstract artinya, class tersebut tidak bisa dibuat sebagai object secara langsung, hanya bisa diturunkan
/// Untuk membuat sebuah class menjadi abstract, kita bisa menggunkan kata kunci anstract sebelum kata kunci class.
/// Dengan demikian abstract class bisa kita gunakan sebagai kontrak untuk class child

// Abstract Class
abstract class Location {
  String? nama;

  // kita juga bisa membuat method juga di dalam class ini
  // saat kita membuat sebuah anstarct method, kta tidak boleh membuat block method pada method tersebut
  // artinya abstract method wajib di override pada child class atau class turunanya
}

// child class
class City extends Location {
  City(String nama) {
    this.nama = nama;
  }
}

// abstract method
abstract class Hewan {
  String? nama;

  void run();
}

// child
class Kucing extends Hewan {
  Kucing(String nama) {
    this.nama = nama;
  }

  @override
  void run() {
    // TODO: implement run
    print("$nama Berlari Lari");
  }
}

// main
void main(List<String> args) {
  var city = City("Jakarta");
  // var location = Location("") // error tidak bisa dibuat object karena abstract class
  var kucing = Kucing("Anggora");
  kucing.run();
  print(city.nama);
}
