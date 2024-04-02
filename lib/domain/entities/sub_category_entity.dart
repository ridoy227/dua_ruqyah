import 'package:equatable/equatable.dart';

class SubCategoryEntity extends Equatable {
  const SubCategoryEntity({
    required this.id,
    required this.catId,
    required this.subcatId,
    required this.subcatNameBn,
    required this.subcatNameEn,
    this.noOfDua = 0,
  });

  factory SubCategoryEntity.empty() {
    return const SubCategoryEntity(
      id: -1,
      catId: -1,
      subcatId: -1,
      subcatNameBn: '',
      subcatNameEn: '',
      noOfDua: -1,
    );
  }

  final int id;
  final int catId;
  final int subcatId;
  final String subcatNameBn;
  final String subcatNameEn;
  final int noOfDua;

  @override
  List<Object?> get props => [
        id,
        catId,
        subcatId,
        subcatNameBn,
        subcatNameEn,
        noOfDua,
      ];

  SubCategoryEntity removeDescription() {
    return SubCategoryEntity(
      id: id,
      catId: catId,
      subcatId: subcatId,
      subcatNameBn: subcatNameBn,
      subcatNameEn: subcatNameEn,
      noOfDua: noOfDua,
    );
  }

  SubCategoryEntity copyWith({
    int? id,
    int? catId,
    int? subcatId,
    String? subcatNameBn,
    String? subcatNameEn,
    int? noOfDua,
  }) {
    return SubCategoryEntity(
      id: id ?? this.id,
      catId: catId ?? this.catId,
      subcatId: subcatId ?? this.subcatId,
      subcatNameBn: subcatNameBn ?? this.subcatNameBn,
      subcatNameEn: subcatNameEn ?? this.subcatNameEn,
      noOfDua: noOfDua ?? this.noOfDua,
    );
  }
}
