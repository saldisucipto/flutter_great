/// Cascade Notations
/// Cascade Notation merupakan operator yang bisa kita gunakan untuk memberikan beberapa operasi pada object yang sama.
/// Ada 2 jenis cascade Notaions, Yaitu
/// 1. .. (titik titik) digunakan untuk obejct yang tidak nullable
/// 2. ?.. (tanda tanya titik) digunakan untuk object yang nullable

class User {
  String? username;
  String? name;
  String? email;
}

//  method nullable
User? createUser() {
  return null;
}

void main(List<String> args) {
  // menggunkan cascade untuk memberikan valuu field pada class User
  var user = User()
    ..name = "SALDI"
    ..username = "saldisucipto"
    ..email = "saldisucipto@gmail.com";

  User? user2 = createUser()
    ?..username = "saldisuciptto"
    ..name = "Saldi"
    ..email = "saldisucipto@gmai.com";
}
