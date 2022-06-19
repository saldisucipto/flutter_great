/// Constant Constructor
/// Saat kita membuat class yang tidak pernah berubah datanya (immutable data), ada baiknya kita buat Constant Constructor
/// Untuk membuat constantt constructor kita bisa gunakan kata kunci const
/// Keuuntungan saat menggunakan Constant COnstructor adalah ketika kita membuat contact object, secara otomatis object yang sama akan digunakan.

class ImmutablePoint {
  final int x;
  final int y;

  const ImmutablePoint(this.x, this.y);
  // constant constructor harus memiliki field yang bbertype final atau tidak bisa dirubah
}

void main(List<String> args) {
  // membuat object const constructor
  var point1 = ImmutablePoint(10, 10);
  var point2 = ImmutablePoint(10, 10);

  print(point1 == point2);
  // ini akkan menghasilkan value false karena dart akan menyimpan 2 object tersebut pada memori object yang berbeda

  // Memanfaatkan Const Constructor
  var point3 = const ImmutablePoint(10, 10);
  var point4 = const ImmutablePoint(10, 10);
  print(point3 == point4);
  // ini akan menghasilkan value true karenna 2 object tersebut ber tipe const dan disimpan pada 1 memori
}
