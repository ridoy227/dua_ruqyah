import 'package:dua_ruqyah/data/data_sources/dua_local_data_source.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';
import 'package:dua_ruqyah/domain/repositories/category_repository.dart';
import 'package:synchronized/synchronized.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(this._duaLocalDataSource);

  final DuaLocalDataSource _duaLocalDataSource;

  late final Lock _categoryLock = Lock();

  @override
  Future<List<CategoryEntity>> getDuaCategorys() async {
    return _categoryLock.synchronized( () async =>  await _duaLocalDataSource.getAllCategorys());
  }

  late final Lock _subCategoryLock = Lock();


  @override
  Future<List<SubCategoryEntity>> getSubCategorysByCategoryId({required int catId}) {
    return _subCategoryLock.synchronized(() async => await _duaLocalDataSource.getSubcategoryByCategoryId(catID: catId) );
  }
}