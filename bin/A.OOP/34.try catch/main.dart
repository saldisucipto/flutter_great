/// Try Catch
/// Saat kita memanggil sebuah method yang bisa menyebabkab exception maka secara otomatis program kita akan berhenti,
/// Jika kita tidak ingin program berhenti, kita perlu menangkap exception tersebut dan melakukan sesuatu jik aterjadi exception
/// Untuk menangkan exception, kta dapat menggunkan try-catch
///
class ValidateException implements Exception {
  String message;

  ValidateException(this.message);
}

class Validate {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidateException("Username is Blank");
    } else if (password == "") {
      throw ValidateException("Password is Blank");
    } else if (username != "saldi" || password != "123") {
      throw Exception("Username dan Password Salah");
    }
    // valid
  }
}

void main(List<String> args) {
  try {
    Validate.validate("Suga", "1233");
  } on ValidateException {
    print("Ada Error Terjadi");
  }

  // menangkap error validatenya
  try {
    Validate.validate("Saldi", "");
  } on ValidateException catch (ex) {
    print("Ada Error Terjadi :${ex.message}");
  } on Exception catch (exception) {
    print("Error : ${exception.toString()}");
  }

  print("Selesai");
  // dengan begini program akan dieksekusi sampai selesai
}
