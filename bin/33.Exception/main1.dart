/// Mmebuat class exception
/// Selain menggunakan class Exception yang sudah ada, kita juga bisa membuat class Exception sendiri
/// Tidak ada kontrak dalam pembuatan class exception, kita bis amembuat class seperti biasa
/// Namun sangat direkomendasikan jika membuat class exception baru, kita melakukan implemments ke class Exception
///
///
/// contoh
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
    }
    // valid
  }
}

void main(List<String> args) {
  Validate.validate("", "");
}
