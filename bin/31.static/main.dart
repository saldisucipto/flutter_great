import 'class/static_example.dart';

/// Static
/// Static merupakan sebuah kata kunci yang digunakan untuk membuat field dan method yang bisa diakses tanpa harus membuat objectnya
/// Saat kita membuat field atau method static, artinya dia secara otomatis bisa diakses oleh object manapun, oleh karena itu perlu hati hati ketika membuat field atau method status
/// Field atau Method static bisa diakses oleh method yang tidak static
/// Namu field atau Method static tidak bisa mengakses method yang tidak static
/// Biasanya static digunakan untuk membuat Utility
/// Untuk mengakses ststic field atau method, kita bisa langsung menggunkan nama Class diikuti dengan titik dan static Field atau Methodnya

void main(List<String> args) {
  // menggunkan static field
  print(Application.name); // tanpa membuat object baru atau pewarisan
  print(Application.author);
}
