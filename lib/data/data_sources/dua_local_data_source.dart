import 'package:dua_ruqyah/data/mappers/category_mapper.dart';
import 'package:dua_ruqyah/data/mappers/dua_main_mapper.dart';
import 'package:dua_ruqyah/data/mappers/sub_category_mapper.dart';
import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';

class DuaLocalDataSource{
  DuaLocalDataSource(this._duaDatabase);
  final DuaDatabase _duaDatabase;

  final Map<int, CategoryEntity> _categoryEtityCache = {};


  Future<List<CategoryEntity>> getAllCategorys() async {
    if(_categoryEtityCache.isNotEmpty) return _categoryEtityCache.values.toList();

    final List<DuaCategoryDto> categoryDto = await _duaDatabase.categoryList;
    final List<CategoryEntity> categoryEntitys = await categoryDto.toCategory();
    for( CategoryEntity category in categoryEntitys) {
      _categoryEtityCache[category.id] = category;
    }
    return categoryEntitys;
  }


  Future<List<SubCategoryEntity>> getSubcategoryByCategoryId({required int catID}) async {
    final List<DuaSubcategoryDto> subCategoryDto = await _duaDatabase.getSubCategoryByCategoryId(categoryId: catID);
    final List<SubCategoryEntity> subCategoryEntitys = await subCategoryDto.toSubCategory();
    return subCategoryEntitys;
  }

   Future<List<DuaMainEntity>> getDuaByCategoryIdAndSubCategoryId({required int catID, required int subCatId}) async {
    final List<DuaMainDto> subCategoryDto = await _duaDatabase.getSubDuaByCategoryAndSubCategoryId(categoryId: catID, subCategoryId: subCatId);
    final List<DuaMainEntity> subCategoryEntitys = await subCategoryDto.toDuaMain();
    return subCategoryEntitys;
  }
}