import 'package:drift/drift.dart';

@DataClassName("DuaDto")
class Dua extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get catId => integer().nullable()();

  IntColumn get subcatId => integer().nullable()();

  IntColumn get duaId => integer().nullable()();

  TextColumn get duaNameBn => text().nullable()();
  TextColumn get duaNameEn => text().nullable()();

  TextColumn get topBn => text().nullable()();
  TextColumn get topEn => text().nullable()();

  TextColumn get duaArabic => text().nullable()();
  TextColumn get duaIndopak => text().nullable()();

  
  TextColumn get cleanArabic => text().nullable()();


  TextColumn get transliterationBn => text().nullable()();
  TextColumn get transliterationEn => text().nullable()();

  TextColumn get translationBn => text().nullable()();
  TextColumn get translationEn => text().nullable()();

  TextColumn get bottomEn => text().nullable()();
  TextColumn get bottomBn => text().nullable()();

  TextColumn get refferenceBn => text().nullable()();
  TextColumn get refferenceEn => text().nullable()();

  TextColumn get audio => text().nullable()();
}
