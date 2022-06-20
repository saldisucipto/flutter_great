class Produk {
  String? id;
  String? nama;
  int? _qty; // private Field Tidak bisa langsung diakses dari luar class

  // constrcutor
  Produk(this.id, this.nama);

  // setter untuk mengisi private Field
  set qty(int qty) {
    _qty = qty;
  }

  int? getQty() {
    return _qty;
  }
}
