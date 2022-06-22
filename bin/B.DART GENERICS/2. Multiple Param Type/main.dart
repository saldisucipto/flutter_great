/// Generic Class
/// Generic CLass adalah clas yang memiliki parameter type
/// Tidak ada ketentuan dalam pembuatan generic parameter type, namunbiasanya kebanyakan orang menggunakan 1 karakter sebagai generic parameter type
/// Nama generic yang biasa digunakan
/// 1. E - Element (biasa digunakan di collection atau struktur data)
/// 2. K - Key
/// 3. T - Type
/// 4. V - Value
/// 5. S,U,V etc. 2ND, 3RD, 4TH type
///
/// Multiple Prameter Type
/// Parameter Type Generic class boleh lebih dari satu
/// Namun harus menggunkan nama type berbeda
/// ini sangat berguna ketika kita ingin membuat generic type parameter yang banyak
///
/// Contoh
class Pair<K, V> {
  K first;
  V second;

  Pair(this.first, this.second);
}

class MyData<T> {
  T data;

  MyData(this.data);
  // disini kita bisa menggunkan type data T
  // T itu apa tergantung pada kita membuat objectnya nanti
}

void main(List<String> args) {
  var dataString = MyData<String>("Aku adalah Generic Bertype String");
  var dataInt = MyData(100);
  var dataBool = MyData(true);

  // penggunaan multiple
  var data1 = Pair<String, int>("Saldi", 1); // Menentukan data secara explicit
  var data2 = Pair(20, "Heheh");

  print(dataString.data);
  print(dataInt.data);
  print(dataBool.data);
  print(data1.first);
  print(data2.second);
}
