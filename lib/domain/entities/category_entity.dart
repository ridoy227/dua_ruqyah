import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  const CategoryEntity( {
    required this.id,
    required this.catId,
     this.catNameBn = "", 
     this.catNameEn ="", 
     this.noOfSubcat = 0, 
     this.noOfDua = 0, 
     this.catIcon = "",
  });

  factory CategoryEntity.empty() {
    return const CategoryEntity(
      id: -1,
      catId: -1,
      catNameBn: "",
      catNameEn: "",
      noOfSubcat: -1,
      noOfDua: -1,
      catIcon: ""
    );
  }

  final int id;
  final int catId;
  final String catNameBn;
  final String catNameEn;
  final int noOfSubcat;
  final int noOfDua;
  final String catIcon;

 
  @override
  List<Object?> get props => [
        id,
        catId,
        catNameEn,
        catNameBn,
        noOfSubcat,
        noOfDua,
        catIcon
      ];

  CategoryEntity removeDescription() {
    return CategoryEntity(
      id: id,
      catId: catId,
      catNameBn: catNameBn,
      catNameEn: catNameEn,
      noOfSubcat: noOfSubcat,
      noOfDua: noOfDua,
      catIcon: catIcon
    );
  }

  CategoryEntity copyWith({
   int? id,
   int? catId,
   String? catNameBn,
   String? catNameEn,
   int? noOfSubcat,
   int? noOfDua,
   String? catIcon,
  }) {
    return CategoryEntity(
      id: id ?? this.id,
      catId: catId?? this.catId,
      catNameEn: catNameEn?? this.catNameEn,
      catNameBn: catNameBn?? this.catNameBn,
      noOfSubcat: noOfSubcat?? this.noOfSubcat,
      noOfDua: noOfDua?? this.noOfDua,
      catIcon: catIcon?? this.catIcon,
    );
  }
}
