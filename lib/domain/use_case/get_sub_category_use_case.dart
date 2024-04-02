

import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';
import 'package:dua_ruqyah/domain/repositories/category_repository.dart';
import 'package:dua_ruqyah/domain/services/error_message_handler.dart';
import 'package:fpdart/fpdart.dart';

class GetSubCategoryUseCase {
  GetSubCategoryUseCase(this._categoryRepository,this._errorMessageHandler);
  final CategoryRepository _categoryRepository;
  final ErrorMessageHandler _errorMessageHandler;

  Future<Either<String, List<SubCategoryEntity>>> execute ({required int catId}) async {
    try{
      final List<SubCategoryEntity> categorys = await _categoryRepository.getSubCategorysByCategoryId(catId: catId);
      return Right(categorys);
    } catch (e) {
      final String errorMessage = _errorMessageHandler.generateErrorMessage(e);
      return Left(errorMessage);
    }
  }



}