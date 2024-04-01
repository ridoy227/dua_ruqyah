import 'package:dua_ruqyah/data/mappers/category_mapper.dart';
import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';

class DuaLocalDataSource{
  DuaLocalDataSource(this._duaDatabase);
  final DuaDatabase _duaDatabase;

  final Map<int, CategoryEntity> _categoryEtityCache = {};


  Future<List<CategoryEntity>> getAllCategorys() async {
    if(_categoryEtityCache.isNotEmpty) return _categoryEtityCache.values.toList();

    final List<CategoryDto> categoryDto = await _duaDatabase.categoryList;
    final List<CategoryEntity> categoryEntitys = await categoryDto.toCategory();
    for( CategoryEntity category in categoryEntitys) {
      _categoryEtityCache[category.id] = category;
    }
    return categoryEntitys;
  }


}