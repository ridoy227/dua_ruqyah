

import 'package:dua_ruqyah/core/base/base_presenter.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/use_case/get_category_use_case.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_ui_state.dart';
import 'package:fpdart/fpdart.dart';

class HomePresenter extends BasePresenter<HomeUiState> {
  HomePresenter(this._getCategoryUseCase);

  final GetCategoryUseCase _getCategoryUseCase;

  final Obs<HomeUiState> uiState = Obs(HomeUiState.empty());


  @override
  Future<void> onInit() async {
    super.onInit();
    await _getAllCategorys();
  }

  Future<void> _getAllCategorys () async {
    toggleLoading(loading: true);
    final Either <String, List<CategoryEntity>> result = await _getCategoryUseCase.execute();
    result.fold(
      addUserMessage,
      (categoryList) => uiState.value = uiState.value.copyWith( categoryList: categoryList)
    );
    toggleLoading(loading: false);

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