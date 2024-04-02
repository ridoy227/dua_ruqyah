
import 'package:dua_ruqyah/core/base/base_ui_state.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';

class HomeUiState extends BaseUiState {
  const HomeUiState({
    required this.categoryList,
    required super.isLoading,
    required super.userMessage,
    required this.subCategoryList,
    required this.duaList

  });

  factory HomeUiState.empty() {
    return const HomeUiState(
      categoryList: [],
      subCategoryList: [],
      duaList: [],
      isLoading: true,
      userMessage: null
     
    );
  }

  final List<CategoryEntity> categoryList;
  final List<SubCategoryEntity> subCategoryList;
  final List<DuaMainEntity> duaList;
  

  @override
  List<Object?> get props => [
        userMessage,
        isLoading,
        categoryList,
        subCategoryList,
        duaList,
      ];

  HomeUiState copyWith({
    List<CategoryEntity>? categoryList,
    String? errorMessage,
    bool? isLoading,
    List<SubCategoryEntity>? subCategoryList,
    List<DuaMainEntity>? duaList,

  }) {
    return HomeUiState(
      categoryList: categoryList?? this.categoryList,
      subCategoryList: subCategoryList?? this.subCategoryList,
      duaList: duaList?? this.duaList,
      userMessage: errorMessage ?? userMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
