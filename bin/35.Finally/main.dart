/// Finally
/// Dalam try catch kita bisa menambhkan block finally
/// Blok ini adalah blok dimana akan selalu dieksekusi baik terjadi exception atau tidak
/// ini sangat cocok kietika kita ingin melakukan sesuatu yang tidak peduli sukses ataupun gagal
///

class ValidatedException implements Exception {
  String message;

  ValidatedException(this.message);
}

class Validate {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidatedException("Username is Blank");
    } else if (password == "") {
      throw ValidatedException("Password is Blank");
    } else if (username != "saldi" && password != "123") {
      throw Exception("Username dan Password Salah");
    }
  }
  // valid
}

main(List<String> args) {
  try {
    Validate.validate("saldi", "");
  } on ValidatedException catch (exception) {
    print("Error : ${exception.message}");
  } on Exception catch (exception) {
    print("Error : ${exception.toString()}");
  } finally {
    print("Finally");
  }

  print("Selesai");
}
