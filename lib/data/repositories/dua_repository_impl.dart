import 'package:dua_ruqyah/data/data_sources/dua_local_data_source.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/repositories/dua_repository.dart';
import 'package:synchronized/synchronized.dart';

class DuaRepositoryImpl implements DuaRepository {
  DuaRepositoryImpl(this._duaLocalDataSource);

  final DuaLocalDataSource _duaLocalDataSource;
  late final Lock _duaMainLock = Lock();

  @override
  Future<List<DuaMainEntity>> getDuaByCategoryIdAndSubCategoryId({required int catId,}) {
    return _duaMainLock.synchronized(() async => await _duaLocalDataSource.getDuaByCategoryIdAndSubCategoryId(catID: catId));
  }

  
}