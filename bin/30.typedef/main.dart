/// typedef
/// Typedef merupakan fitur dimana kita bisa membuat alias atau type data lainya
/// ini cocok ketika misal terdapat pada class dengan nama yang sama, sehingga kita bisa menggunakan alias untuk nama lain
/// Atau kita bisa mempersingkat nama class yang panjang dengan alias

// contoh
class Kurang {
  int first;
  int second;

  Kurang(this.first, this.second);

  int call() => first - second;
}

// menggunkan tyedef
typedef Total = Kurang;
typedef Minus = Kurang;

void main(List<String> args) {
  // menggunkan typedef
  var kurang = Total(20, 40); // menggunkan alias typedef
  print(kurang());
}
