import 'package:drift/drift.dart';
import 'package:dua_ruqyah/data/services/dua_database/database_loader.dart';
import 'package:dua_ruqyah/data/services/dua_database/table/dua_table.dart';


part 'dua_database_service.g.dart';

@DriftDatabase(
  tables: [
    Dua,
  ],
)
class DuaDatabase extends _$DuaDatabase {
  DuaDatabase({QueryExecutor? queryExecutor}) : super(queryExecutor ?? loadDatabase());

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

  Future<List<DuaDto>> get duaTables => select(dua).get();

}
