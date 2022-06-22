import '../../19.abstract class/main.dart';

abstract class CategoryRepository {
  id(String id);
  nama(String name);
  quantity(int qty);
  location(String location);
}
