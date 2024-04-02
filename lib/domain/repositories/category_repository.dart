import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';

abstract class  CategoryRepository {
  Future< List<CategoryEntity>> getDuaCategorys();
  Future< List<SubCategoryEntity>> getSubCategorysByCategoryId({required int catId});
}