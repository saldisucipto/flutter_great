/// Redirecting Constructor
/// Saat membuat named constructor, kita bisa memanggil Default Constructor, atau istilahnya adalah melakukan Redirecting Constructor
/// Cara membuat Redirecting COnstructor adalah dengan menambhakan : (titik dua), lalu diikuti dengan memanggil this(param), dimana this() disini dinaggap mengakses Default Constructor
/// Saat membuat redirecting constructor, kuta tidak bisa menambahkan body pada redirecting Constructor
/// Contoh

class Laptop {
  String? brand;
  String? harga;

  // Default Constructor
  Laptop(this.brand, this.harga);

  // named const
  Laptop.withBrand(String brand)
      : this(brand,
            ""); // ini berarti reiderecting ke constructor utama untuk mengisi dengan value pada name constructor
  Laptop.withHarga(String harga) : this("", harga);
  // redirecting named constructor
  Laptop.lonovoBrand() : this.withBrand("Lenovo Brand");
}

void main(List<String> args) {
  var lenovo = Laptop.withBrand("Lenovo");
  var samsung = Laptop.withHarga("5000000");
  var hp = Laptop.lonovoBrand();

  print(lenovo.brand);
  print(samsung.harga);
  print(hp.brand);
}
