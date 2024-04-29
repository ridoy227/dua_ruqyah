// import 'package:dua_ruqyah/core/di/service_locator.dart';
// import 'package:dua_ruqyah/core/utility/dua_screen.dart';
// import 'package:dua_ruqyah/core/utility/utility.dart';
// import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
// import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';
// import 'package:dua_ruqyah/presentation/home/presenter/home_presenter.dart';
// import 'package:dua_ruqyah/presentation/dau/ui/dua_view_screen.dart';
// import 'package:dua_ruqyah/presentation/home/widgets/simple_app_bar.dart';
// import 'package:flutter/material.dart';

// class SubCategoryScreen extends StatelessWidget {
//   const SubCategoryScreen({super.key, required this.title, required this.subCategoryList});

//   final String title;
//   final List<SubCategoryEntity> subCategoryList;

//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);
//     return Scaffold(
//       body: Column(
//         children: [
//           SimpleAppBar(title: title),
//           Expanded(
//             child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 itemCount: subCategoryList.length,
//                 itemBuilder: (context, index) => Container(
//                       margin: EdgeInsets.symmetric(
//                           vertical: fourPx, horizontal: twentyPx),
//                       height: sixtyFourPx,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(tenPx),
//                           color: theme.cardColor,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey[200]!,
//                                 offset: const Offset(00, 02))
//                           ]),
//                       child:  ListTile(
//                         onTap: () => _onTapOnSubCategory(
//                           context,
//                           subCategoryList[index].catId,
//                           subCategoryList[index].subcatId,
//                           title,
//                           subCategoryList,
//                           ),
//                         title: Text(subCategoryList[index].subcatNameEn),
//                         subtitle: Text("Total Dua: ${subCategoryList[index].noOfDua}"),
//                       ),
//                     )),
//           )
//         ],
//       ),
//     );
//   }

//    void _onTapOnSubCategory(BuildContext context, int catId,int subCatId,String title, List<SubCategoryEntity> subCategoryList) {
//     locate<HomePresenter>().preFetchDua(
//       catId: catId,
//       subCatId: subCatId,
//       onLoaded: (value) async {
//         Map<int, SubCategoryEntity> categoryCache = {};
//         for (SubCategoryEntity dua in subCategoryList) {
//           categoryCache[dua.subcatId] = dua;
//         }
//         final DuaViewScreen duaPage = await Future.microtask(() => DuaViewScreen(title: title,duaList: value, subCategoryCache: categoryCache ,));
//         if (context.mounted) await context.navigatorPush<void>(duaPage);
//       },
//     );
//   }

  
// }


import 'package:dua_ruqyah/core/di/service_locator.dart';
import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/core/utility/utility.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_presenter.dart';
import 'package:dua_ruqyah/presentation/dau/ui/dua_view_screen.dart';
import 'package:dua_ruqyah/presentation/home/widgets/simple_app_bar.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({
    super.key,
    required this.title,
    required this.subCategoryList,
  });

  final String title;
  final List<SubCategoryEntity> subCategoryList;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          SimpleAppBar(title: title),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: subCategoryList.length,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(
                          vertical: fourPx, horizontal: twentyPx),
                      height: sixtyFourPx,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(tenPx),
                          color: theme.cardColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[200]!,
                                offset: const Offset(00, 02))
                          ]),
                      child: ListTile(
                        onTap: () => _onTapOnSubCategory(
                          context,
                          subCategoryList[index].catId,
                          subCategoryList[index].subcatId,
                          title,
                          subCategoryList,
                        ),
                        title: Text(subCategoryList[index].subcatNameEn),
                        subtitle: Text("Total Dua: ${subCategoryList[index].noOfDua}"),
                      ),
                    )),
          )
        ],
      ),
    );
  }

  void _onTapOnSubCategory(
    BuildContext context,
    int catId,
    int subCatId,
    String title,
    List<SubCategoryEntity> subCategoryList,
  ) {
    locate<HomePresenter>().preFetchDua(
      catId: catId,
      subCatId: subCatId,
      onLoaded: (value) async {
        Map<int, SubCategoryEntity> categoryCache = {};
        for (SubCategoryEntity dua in subCategoryList) {
          categoryCache[dua.subcatId] = dua;
        }
        final DuaViewScreen duaPage = await Future.microtask(
          () => DuaViewScreen(
            title: title,
            duaList: value,
            subCategoryCache: categoryCache, // Pass subCategoryCache
          ),
        );
        if (context.mounted) await context.navigatorPush<void>(duaPage);
      },
    );
  }
}
