

import 'package:dua_ruqyah/core/base/base_presenter.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/use_case/get_dua_repository.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_ui_state.dart';

class DuaPresenter extends BasePresenter<HomeUiState> {
  DuaPresenter(
    this._getDuaUseCase
  );

  final GetDuaUseCase _getDuaUseCase;

  final Obs<HomeUiState> uiState = Obs(HomeUiState.empty());

   Future<void> preFetchDua({
    required int catId,
    required Function(List<DuaMainEntity>) onLoaded,
  }) async {
    await parseDataFromEitherWithUserMessage(
      task: () => _getDuaUseCase.execute(catId: catId,),
      showLoading: true,
      onDataLoaded: (_) => onLoaded(_),
    );
  }


  @override
  Future<void> addUserMessage(String message) async {
    uiState.value = uiState.value.copyWith(errorMessage: message);
  }

  @override
  Future<void> toggleLoading({required bool loading}) async {
    uiState.value = uiState.value.copyWith(isLoading: loading);
  }
  
}