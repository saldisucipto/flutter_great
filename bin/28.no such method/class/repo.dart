import 'dart:mirrors';

class Repository {
  final String _name;

  Repository(this._name);

  // OVERRIDE NO SUCH METHOD
  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(
        invocation.memberName); // mendaptkan nama methodnya
    var value =
        invocation.positionalArguments.first; // mendaptkan argumrnt pertama
    var sql = "SELECT * FROM $_name where $column = '$value'";
    print(sql);
  }
}
