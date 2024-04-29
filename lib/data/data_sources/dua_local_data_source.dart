// import 'package:dua_ruqyah/data/mappers/category_mapper.dart';
// import 'package:dua_ruqyah/data/mappers/dua_main_mapper.dart';
// import 'package:dua_ruqyah/data/mappers/sub_category_mapper.dart';
// import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
// import 'package:dua_ruqyah/domain/entities/category_entity.dart';
// import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
// import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';

// class DuaLocalDataSource{
//   DuaLocalDataSource(this._duaDatabase);
//   final DuaDatabase _duaDatabase;

//   final Map<int, CategoryEntity> _categoryEntityCache = {};
//   final Map<int, SubCategoryEntity> subCategoryCache = {};



//   Future<List<CategoryEntity>> getAllCategorys() async {
//     if(_categoryEntityCache.isNotEmpty) return _categoryEntityCache.values.toList();

//     final List<DuaCategoryDto> categoryDto = await _duaDatabase.categoryList;
//     final List<CategoryEntity> categoryEntitys = await categoryDto.toCategory();
//     for( CategoryEntity category in categoryEntitys) {
//       _categoryEntityCache[category.id] = category;
//     }
//     return categoryEntitys;
//   }


//   Future<List<SubCategoryEntity>> getSubcategoryByCategoryId({required int catID}) async {
//     final List<DuaSubcategoryDto> subCategoryDto = await _duaDatabase.getSubCategoryByCategoryId(categoryId: catID);
//     final List<SubCategoryEntity> subCategoryEntitys = await subCategoryDto.toSubCategory();
//     for( SubCategoryEntity subCategory in subCategoryEntitys) {
//       subCategoryCache[subCategory.id] = subCategory;
//     }
//     return subCategoryEntitys;
//   }

//    Future<List<DuaMainEntity>> getDuaByCategoryIdAndSubCategoryId({required int catID,}) async {
//     final List<DuaMainDto> subCategoryDto = await _duaDatabase.getSubDuaByCategoryAndSubCategoryId(categoryId: catID);
//     final List<DuaMainEntity> subCategoryEntitys = await subCategoryDto.toDuaMain();
//     return subCategoryEntitys;
//   }
// }



import 'package:dua_ruqyah/data/mappers/category_mapper.dart';
import 'package:dua_ruqyah/data/mappers/dua_main_mapper.dart';
import 'package:dua_ruqyah/data/mappers/sub_category_mapper.dart';
import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';

class DuaLocalDataSource {
  DuaLocalDataSource(this._duaDatabase);
  final DuaDatabase _duaDatabase;

  final Map<int, CategoryEntity> _categoryEntityCache = {};
  final Map<int, SubCategoryEntity> subCategoryCache = {};
  final Map<int, List<SubCategoryEntity>> _duaSubcategoryCache = {}; // New cache

  Future<List<CategoryEntity>> getAllCategorys() async {
    if (_categoryEntityCache.isNotEmpty) return _categoryEntityCache.values.toList();

    final List<DuaCategoryDto> categoryDto = await _duaDatabase.categoryList;
    final List<CategoryEntity> categoryEntitys = await categoryDto.toCategory();
    for (CategoryEntity category in categoryEntitys) {
      _categoryEntityCache[category.id] = category;
    }
    return categoryEntitys;
  }

  Future<List<SubCategoryEntity>> getSubcategoryByCategoryId({required int catID}) async {
    final List<DuaSubcategoryDto> subCategoryDto = await _duaDatabase.getSubCategoryByCategoryId(categoryId: catID);
    final List<SubCategoryEntity> subCategoryEntitys = await subCategoryDto.toSubCategory();
    for (SubCategoryEntity subCategory in subCategoryEntitys) {
      subCategoryCache[subCategory.id] = subCategory;
    }
    return subCategoryEntitys;
  }

  Future<List<DuaMainEntity>> getDuaByCategoryIdAndSubCategoryId({required int catID}) async {
    final List<DuaMainDto> subCategoryDto = await _duaDatabase.getSubDuaByCategoryAndSubCategoryId(categoryId: catID);
    final List<DuaMainEntity> subCategoryEntitys = await subCategoryDto.toDuaMain();
    return subCategoryEntitys;
  }

  // New method to fetch DuaSubcategoryEntity objects
  Future<List<SubCategoryEntity>> getDuaSubcategoryByCategoryId({required int catID}) async {
    if (_duaSubcategoryCache.containsKey(catID)) {
      return _duaSubcategoryCache.values.elementAt(catID); // Return cached entities
    }

    final List<DuaSubcategoryDto> duaSubcategoryDto = await _duaDatabase.getSubCategoryByCategoryId(categoryId: catID);
    final List<SubCategoryEntity> duaSubcategoryEntities = await duaSubcategoryDto.toSubCategory();

    _duaSubcategoryCache[catID] = duaSubcategoryEntities; // Cache entities
    return duaSubcategoryEntities;
  }
}