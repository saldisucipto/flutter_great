/// ToSttring Method
/// Sebelumnya kita sudah bahas bahwa parent class untuk semua class kecuali null adlaah Object
/// Di dalam Object, terdapat method bernama toString(), method ini merupakan method untuk mrepresentasikan String daro Object
/// Contohnya saat kita menggunkan Function print(Object), sebenarnya yang dipanggil adalah print(object.toString());
/// Kita bisa mengoverride method toString() jika ingin mengimplemntasikan representasi data String dari class yang kita Buat
///

class Produk {
  String? id;
  String? namaProduk;
  int? _quantitas;

  int? getQty() {
    return _quantitas;
  }

  set qty(int value) {
    _quantitas = value;
  }

  @override // mengoverride method toString() pada default Object
  String toString() {
    return "Product { id=$id, nama=$namaProduk, qunatitas=$_quantitas } ";
  }
}
