/// Extension Method adalah cara menambahkan method terhadap class yanng sudah ada, tanpa harus mengubah class tersebut
/// Hal ini berguna untuk menggunkan class yang bukan class yang kita buat dari awal / Library
/// Membuat extension method sama dengan kita membuat class
/// Perbedaanya adalah kita menggunakan kata kunci extension bukan menggunakan kata kunci class
// Contoh Pembuatan Extension Mode
class Siswa {
  String? nama;
  String? alamat;

  String biodateSiswa() {
    return "Hallo $this.nama Alamat Kamu $this.alamat";
  }
}

// extension
extension SapaSiswa on Siswa {
  void sapa() {
    print("Hallo $nama");
  }
}

//  Menggunkan exttension pada object
void main(List<String> args) {
  Siswa seftySaskia = Siswa();
  seftySaskia.nama = "Sefty Saskia";
  seftySaskia
      .sapa(); // kita bisa menggunakan funcgi ini tanpa mengubah class Siswa
}
