/// Factory Constructor
/// Factory Constructor adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat object baru,namun logika cara pembuatan object barunya bisa kita sesuaikan dengan yang kita mau
/// Misal kita ingin mengembalikan object yang sama berkali kali, kita bisa menggunnkan Factory Constructor
/// Untuk membuat Facttory Constructor kita bisa menggunkan kata kunci factory sebelum pembuatan Constructornya

// contoh
class Database {
  // static db
  static Database database = Database();

  // menggunkan faactory
  factory Database.get() {
    return database;
  }

  Database() {
    print("Create New Database Connection");
  }
}

void main(List<String> args) {
  var database1 = Database.get();
  var database2 = Database();

  print(database1 == database2);
}
