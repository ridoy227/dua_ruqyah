
import 'package:dua_ruqyah/data/services/dua_database/dua_database_service.dart';
import 'package:dua_ruqyah/data/services/runnig_compute.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';


  extension DtoToCategoryEntityMapper on List<CategoryDto> {
    Future<List<CategoryEntity>> toCategory() async {
      final List<CategoryDto> catDtoList = this;
      final List<CategoryEntity> categoryEntitys = await compute( _convertCategoryDtoToCategory, catDtoList);
      return categoryEntitys;
    }
    
  }



  List<CategoryEntity> _convertCategoryDtoToCategory(List<CategoryDto> catDtoList) => catDtoList.map(_convertDtoToCategoryEntity).toList();







  CategoryEntity _convertDtoToCategoryEntity(CategoryDto category) {
    return CategoryEntity(
      id: category.id, 
      catId: category.catId!,
      catNameBn: category.catNameBn ?? "",
      catNameEn: category.catNameEn ?? "",
      noOfSubcat: category.noOfSubcat!,
      noOfDua: category.noOfDua!,
      catIcon: category.catIcon!,
      );
  }