/// Initializer List
/// Saat kita membuat Constructor atau Named Constructor, terdapat fitur yang bernama intializer list
/// Initializer list merupakan tempat dimana kita bisa mengubah field pada object, sebelum block body Constructor
/// Hal ini bisa menjadi lebih mudah dibanding mengubah filed pada body constructor
/// contoh
class Customer {
  String namaDepan = "";
  String namaBelakang = "";
  String namaLengkap = "";

  // Constructor
  Customer(this.namaLengkap)
      : namaDepan = namaLengkap.split(" ")[0],
        namaBelakang = namaLengkap.split(" ")[1] {
    print("Membuat Customer Baru");
  }
}

void main(List<String> args) {
  var saldi = Customer("Saldi Sucipto");
  print(saldi.namaDepan);
  print(saldi.namaBelakang);
  print(saldi.namaLengkap);
}
