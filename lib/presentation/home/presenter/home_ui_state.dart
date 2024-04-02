
import 'package:dua_ruqyah/core/base/base_ui_state.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';

class HomeUiState extends BaseUiState {
  const HomeUiState({
    required this.categoryList,
    required super.isLoading,
    required super.userMessage,
    required this.subCategoryList

  });

  factory HomeUiState.empty() {
    return const HomeUiState(
      categoryList: [],
      subCategoryList: [],
      isLoading: true,
      userMessage: null
     
    );
  }

  final List<CategoryEntity> categoryList;
  final List<SubCategoryEntity> subCategoryList;
  

  @override
  List<Object?> get props => [
        userMessage,
        isLoading,
        categoryList,
        subCategoryList,
      ];

  HomeUiState copyWith({
    List<CategoryEntity>? categoryList,
    String? errorMessage,
    bool? isLoading,
    List<SubCategoryEntity>? subCategoryList,

  }) {
    return HomeUiState(
      categoryList: categoryList?? this.categoryList,
      subCategoryList: subCategoryList?? this.subCategoryList,
      userMessage: errorMessage ?? userMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
