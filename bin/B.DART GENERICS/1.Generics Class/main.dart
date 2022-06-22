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
/// Kode Generic Class

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

  print(dataString.data);
  print(dataInt.data);
  print(dataBool.data);
}
