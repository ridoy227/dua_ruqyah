import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
import 'package:dua_ruqyah/data/services/runnig_compute.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';

extension DtoToSubCategoryEntityMapper on List<DuaSubcategoryDto> {
  Future<List<SubCategoryEntity>> toSubCategory() async {
    final List<DuaSubcategoryDto> subCatDtoList = this;
    final List<SubCategoryEntity> subCategoryEntities =
        await compute(_convertSubCategoryDtoToSubCategory, subCatDtoList);
    return subCategoryEntities;
  }
}

List<SubCategoryEntity> _convertSubCategoryDtoToSubCategory(List<DuaSubcategoryDto> subCatDtoList) =>
    subCatDtoList.map(_convertDtoToSubCategoryEntity).toList();

SubCategoryEntity _convertDtoToSubCategoryEntity(DuaSubcategoryDto subCategory) {
  return SubCategoryEntity(
    id: subCategory.id,
    catId: subCategory.catId!,
    subcatId: subCategory.subcatId!,
    subcatNameBn: subCategory.subcatNameBn ?? "",
    subcatNameEn: subCategory.subcatNameEn ?? "",
    noOfDua: subCategory.noOfDua!,
  );
}
