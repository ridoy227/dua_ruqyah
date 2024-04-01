import 'package:drift/drift.dart';

@DataClassName("CategoryDto")
class Category extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get catId => integer().nullable()();
  TextColumn get catNameBn => text().nullable()();
  TextColumn get catNameEn => text().nullable()();
  IntColumn get noOfSubcat => integer().nullable()();
  IntColumn get noOfDua => integer().nullable()();
  TextColumn get catIcon => text().nullable()();
}
