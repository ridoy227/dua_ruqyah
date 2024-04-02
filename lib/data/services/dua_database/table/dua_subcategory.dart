import 'package:drift/drift.dart';

@DataClassName("DuaSubcategoryDto")
class DuaSubcategory extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get catId => integer().nullable()();
  IntColumn get subcatId => integer().nullable()();
  TextColumn get subcatNameBn => text().nullable()();
  TextColumn get subcatNameEn => text().nullable()();
  IntColumn get noOfDua => integer().nullable()();
}
