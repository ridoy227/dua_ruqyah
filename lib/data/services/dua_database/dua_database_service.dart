import 'package:drift/drift.dart';
import 'package:dua_ruqyah/data/services/dua_database/database_loader.dart';
import 'package:dua_ruqyah/data/services/dua_database/table/category_table.dart';
import 'package:dua_ruqyah/data/services/dua_database/table/dua_main_table.dart';
import 'package:dua_ruqyah/data/services/dua_database/table/dua_subcategory.dart';

part 'dua_database_service.g.dart';

@DriftDatabase(
  tables: [
    DuaMain,
    DuaSubcategory, 
    DuaCategory
    ],
)
class DuaDatabase extends _$DuaDatabase {
  DuaDatabase({QueryExecutor? queryExecutor})
      : super(queryExecutor ?? loadDatabase());

  Future<void> deleteMalformed() async => deleteDatabase();

  Future<bool> get fileFound async => isDatabaseFileFound();

  // ### ⚠️⚠️⚠️ initial ⚠️⚠️⚠️ ###

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator migrator) async {
          // await migrator.createTable(bookmarks);
        },
      );

  Future<List<DuaMainDto>> get duaList => select(duaMain).get();


  Future<List<DuaMainDto>> getSubDuaByCategoryAndSubCategoryId({
    required int categoryId,
  }) =>
      (select(duaMain)..where((tbl) => tbl.catId.equals(categoryId)))
          .get();


  Future<List<DuaCategoryDto>> get categoryList => select(duaCategory).get();

  Future<List<DuaSubcategoryDto>> getSubCategoryByCategoryId({
    required int categoryId,
  }) =>
      (select(duaSubcategory)..where((tbl) => tbl.catId.equals(categoryId)))
          .get();
}
