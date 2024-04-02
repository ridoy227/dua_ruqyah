import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';

abstract class  DuaRepository {
  Future< List<DuaMainEntity>> getDuaByCategoryIdAndSubCategoryId({required int catId, required int subCatId});
}