import 'package:dua_ruqyah/data/data_sources/dua_local_data_source.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
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
}