class Category {
  int? id;
  String? namaKat;

  Category(this.id, this.namaKat);

  // ovveride method
  @override
  bool operator ==(Object other) {
    if (other is Category) {
      if (id != other.id) {
        return false;
      } else if (namaKat != other.namaKat) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  // mengoverride HasCode
  @override
  int get hashCode {
    var result = id.hashCode;
    result += namaKat.hashCode;
    return result;
  }
}
