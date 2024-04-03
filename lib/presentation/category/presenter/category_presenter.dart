import 'package:dua_ruqyah/core/base/base_presenter.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';
import 'package:dua_ruqyah/domain/use_case/get_category_use_case.dart';
import 'package:dua_ruqyah/domain/use_case/get_sub_category_use_case.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_ui_state.dart';
import 'package:fpdart/fpdart.dart';

class CategoryPresenter extends BasePresenter<HomeUiState> {
  CategoryPresenter(
    this._getCategoryUseCase, 
    this._getSubCategoryUseCase, 
  );

  final GetCategoryUseCase _getCategoryUseCase;
  final GetSubCategoryUseCase _getSubCategoryUseCase;

  final Obs<HomeUiState> uiState = Obs(HomeUiState.empty());


  @override
  Future<void> onInit() async {
    super.onInit();
    await _getAllCategorys();
  }

  Future<void> _getAllCategorys () async {
    final Either <String, List<CategoryEntity>> result = await _getCategoryUseCase.execute();
    result.fold(
      addUserMessage,
      (categoryList) => uiState.value = uiState.value.copyWith( categoryList: categoryList)
    );

  }


  Future<void> getSubCategoryByCatId ({required int catId}) async {
    final Either <String, List<SubCategoryEntity>> result = await _getSubCategoryUseCase.execute(catId: catId);
    result.fold(
      addUserMessage,
      (subCategoryList) => uiState.value = uiState.value.copyWith( subCategoryList: subCategoryList)
    );
  }

   Future<void> preFetchSubCategory({
    required int catId,
    required Function(List<SubCategoryEntity>) onLoaded,
  }) async {
    await parseDataFromEitherWithUserMessage(
      task: () => _getSubCategoryUseCase.execute(catId: catId),
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