import 'package:dua_ruqyah/domain/entities/category_entity.dart';

abstract class  CategoryRepository {
  Future< List<CategoryEntity>> getDuaCategorys();
}