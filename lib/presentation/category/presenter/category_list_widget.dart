import 'package:dua_ruqyah/core/di/service_locator.dart';
import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/core/utility/utility.dart';
import 'package:dua_ruqyah/presentation/category/presenter/category_presenter.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_ui_state.dart';
import 'package:dua_ruqyah/presentation/category/ui/sub_category_screen.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.uiState,
    required this.theme,
  });

  final HomeUiState uiState;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return uiState.categoryList.isEmpty
        ? Container(
            height: 30,width: 30,
            margin: EdgeInsets.symmetric(
                horizontal: DuaScreen.width / 2.2, vertical: tenPx),
            child: const CircularProgressIndicator())
        : 
        ListView.builder(
            itemCount: uiState.categoryList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => InkWell(
                  onTap: () => _onTapOnCatgegory(context,uiState.categoryList[index].catId,uiState.categoryList[index].catNameEn),
                  child: Container(
                    width: DuaScreen.width,
                    height: sixtyFourPx,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(tenPx),
                        color: theme.cardColor,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200]!, offset: const Offset(00, 02))
                        ]),
                    margin: EdgeInsets.symmetric(
                        horizontal: twentyPx, vertical: fourPx),
                    padding: EdgeInsets.symmetric(horizontal: tenPx),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.adjust_outlined),
                        SizedBox(
                          width: tenPx,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                uiState.categoryList[index].catNameEn,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: fourPx,
                              ),
                              Text(
                                "Subcategory : ${uiState.categoryList[index].noOfSubcat}",
                                style: theme.textTheme.bodySmall!
                                    .copyWith(fontSize: twelvePx),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                uiState.categoryList[index].noOfDua.toString()),
                            const Text("Duas"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ));
  }

  void _onTapOnCatgegory(BuildContext context, int catId,String title) {
    locate<CategoryPresenter>().preFetchSubCategory(
      catId: catId,
      onLoaded: (value) async {
        final SubCategoryScreen chaptersPage = await Future.microtask(() => SubCategoryScreen(title: title,subCategoryList: value,));
        if (context.mounted) await context.navigatorPush<void>(chaptersPage);
      },
    );
  }

  
}
