

import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/repositories/dua_repository.dart';
import 'package:dua_ruqyah/domain/services/error_message_handler.dart';
import 'package:fpdart/fpdart.dart';

class GetDuaUseCase {
  GetDuaUseCase(this._duaRepository,this._errorMessageHandler);
  final DuaRepository _duaRepository;
  final ErrorMessageHandler _errorMessageHandler;

  Future<Either<String, List<DuaMainEntity>>> execute ({required int catId,}) async {
    try{
      final List<DuaMainEntity> duaList = await _duaRepository.getDuaByCategoryIdAndSubCategoryId(catId: catId);
      return Right(duaList);
    } catch (e) {
      final String errorMessage = _errorMessageHandler.generateErrorMessage(e);
      return Left(errorMessage);
    }
  }



}