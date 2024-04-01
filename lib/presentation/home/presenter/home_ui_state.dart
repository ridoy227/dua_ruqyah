
import 'package:dua_ruqyah/core/base/base_ui_state.dart';
import 'package:dua_ruqyah/domain/entities/category_entity.dart';

class HomeUiState extends BaseUiState {
  const HomeUiState({
    required this.categoryList,
    required super.isLoading,
    required super.userMessage,

  });

  factory HomeUiState.empty() {
    return const HomeUiState(
      categoryList: [],
      isLoading: true,
      userMessage: null
     
    );
  }

  final List<CategoryEntity> categoryList;
  

  @override
  List<Object?> get props => [
        userMessage,
        isLoading,
        categoryList,
      ];

  HomeUiState copyWith({
    List<CategoryEntity>? categoryList,
    String? errorMessage,
    bool? isLoading,
  }) {
    return HomeUiState(
      categoryList: categoryList?? this.categoryList,
      userMessage: errorMessage ?? userMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
