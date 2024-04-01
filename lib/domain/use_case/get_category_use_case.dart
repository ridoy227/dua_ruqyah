

import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/repositories/category_repository.dart';
import 'package:dua_ruqyah/domain/services/error_message_handler.dart';
import 'package:fpdart/fpdart.dart';

class GetCategoryUseCase {
  GetCategoryUseCase(this._categoryRepository,this._errorMessageHandler);
  final CategoryRepository _categoryRepository;
  final ErrorMessageHandler _errorMessageHandler;

  Future<Either<String, List<CategoryEntity>>> execute () async {
    try{
      final List<CategoryEntity> categorys = await _categoryRepository.getDuaCategorys();
      return Right(categorys);
    } catch (e) {
      final String errorMessage = _errorMessageHandler.generateErrorMessage(e);
      return Left(errorMessage);
    }
  }



}