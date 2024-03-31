import 'package:drift/drift.dart';

@DataClassName("DuaTableDto")
class DuaTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get catId => integer()();

  IntColumn get subcatId => integer()();

  IntColumn get duaId => integer()();

  TextColumn get duaNameBn => text()();
  TextColumn get duaNameEn => text()();

  TextColumn get topBn => text()();
  TextColumn get topEn => text()();

  TextColumn get duaArabic => text()();
  TextColumn get duaIndopak => text()();

  
  TextColumn get cleanArabic => text()();


  TextColumn get transliterationBn => text()();
  TextColumn get transliterationEn => text()();

  TextColumn get translationBn => text()();
  TextColumn get translationEn => text()();

  TextColumn get bottomEn => text()();
  TextColumn get bottomBn => text()();

  TextColumn get refferenceBn => text()();
  TextColumn get refferenceEn => text()();

  TextColumn get audio => text()();
}
