
// import 'package:dua_ruqyah/core/utility/dua_screen.dart';
// import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
// import 'package:dua_ruqyah/presentation/home/widgets/simple_app_bar.dart';
// import 'package:flutter/material.dart';

// class DuaViewScreen extends StatelessWidget {
//   const DuaViewScreen({super.key, required this.title, required this.duaList});

//   final String title;
//   final List<DuaMainEntity> duaList;

//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);
//     return Scaffold(
//       body: Column(
//         children: [
//           SimpleAppBar(title: title),
//           Text("Total Duas : ${duaList.length}"),
//           Expanded(
//             child: ListView.builder(
//                 padding: EdgeInsets.zero,
//                 itemCount: duaList.length,
//                 itemBuilder: (context, index) =>duaList[index].duaArabic =="" && duaList[index].topEn == '' ? const SizedBox.shrink(): Container(
//                       margin: EdgeInsets.symmetric(
//                           vertical: fourPx, horizontal: twentyPx),
//                       // height: sixtyFourPx,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(tenPx),
//                           color: theme.cardColor,
//                           boxShadow: [
//                             BoxShadow(
//                                 color: Colors.grey[200]!,
//                                 offset: const Offset(00, 02))
//                           ]),
//                       child:  Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             height: 30, width: 30,
//                             alignment: Alignment.center,
//                             decoration: BoxDecoration(
//                               color: Colors.green,
//                               shape: BoxShape.circle
//                             ),
//                             child: Text(duaList[index].duaId.toString(), style: TextStyle(color: Colors.white),)
//                           ),
//                            Text(duaList[index].duaArabic),
//                            Text(duaList[index].topEn),
//                         ],
//                       ),
//                     )),
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/domain/entities/sub_category_entity.dart'; // Import SubCategoryEntity
import 'package:dua_ruqyah/presentation/home/widgets/simple_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DuaViewScreen extends StatelessWidget {
  const DuaViewScreen({
    super.key,
    required this.title,
    required this.duaList,
    required this.subCategoryCache, // Add subCategoryCache parameter
  });

  final String title;
  final List<DuaMainEntity> duaList;
  final Map<int, SubCategoryEntity> subCategoryCache; // Store subCategoryCache

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    // Group duas by section name
    Map<String, List<DuaMainEntity>> groupedDuas = {};
    for (var dua in duaList) {
      String sectionName = subCategoryCache[dua.subcatId]?.subcatNameEn ?? ""; // Get subcat name from cache
      groupedDuas.putIfAbsent(sectionName, () => []);
      groupedDuas[sectionName]!.add(dua);
    }

    return Scaffold(
      body: Column(
        children: [
          SimpleAppBar(title: title),
          Text("Total Duas : ${duaList.length}"),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: groupedDuas.length,
              itemBuilder: (context, index) {
                String sectionName = groupedDuas.keys.elementAt(index);
                List<DuaMainEntity> sectionDuas = groupedDuas[sectionName]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Section Name Header
                    Container(
                      height: 40,
                      width: double.infinity,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: twentyPx, top: tenPx),
                        child: Text(
                          sectionName, // Display subcat name
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    // Duas within the section
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: sectionDuas.length,
                      itemBuilder: (context, duaIndex) {
                        DuaMainEntity dua = sectionDuas[duaIndex];
                        return dua.duaArabic == "" && dua.topEn == ""
                            ? const SizedBox.shrink()
                            : Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: fourPx, horizontal: twentyPx),
                                // height: sixtyFourPx,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(tenPx),
                                    color: theme.cardColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[200]!,
                                          offset: const Offset(00, 02))
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 30,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                        child: Text(
                                          dua.duaId.toString(),
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    Text(dua.duaArabic),
                                    Text(dua.topEn),
                                  ],
                                ),
                              );
                      },
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}