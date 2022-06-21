/// Callable class
/// Callable class adalah class yang dipanggil seperti fungsi
/// Untuk membuat Cllable class, kita perlu menambhakan sebuah method bernama call() pada class tersebut
/// Paramter dan return value dari methd tersebut bisa diesuaikan sesuai kebutuhan kita
/// Setelah membuat object, kita bisa langsung memanggil method call() tersebut dengan menggunakan nama objectnya
///

class Jumlah {
  int first;
  int second;

  Jumlah(this.first, this.second);

  // type kembalian integer
  int call() => first + second;
}

void main(List<String> args) {
  var jumlah = Jumlah(400, 20);
  print(
      jumlah()); // karena kita membuat call pada Class jumlah kita bisa lnsgung memanggil objecnya seperti fungsi
}
