import 'dart:mirrors';

import 'cat_repo.dart';

class Repository extends CategoryRepository {
  // ,kita tidak perlu mengimplemntasikan method yang ada di Catgeory Rpositroy karena Kitas sudah mengguanakn NoSuchMethodnya
  // kita tidak perlu mengimpentasikan semua method pada abstract clas karena sudah ada
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
