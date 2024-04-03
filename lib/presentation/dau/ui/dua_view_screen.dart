
import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/domain/entities/dua_main_entity.dart';
import 'package:dua_ruqyah/presentation/home/widgets/simple_app_bar.dart';
import 'package:flutter/material.dart';

class DuaViewScreen extends StatelessWidget {
  const DuaViewScreen({super.key, required this.title, required this.duaList});

  final String title;
  final List<DuaMainEntity> duaList;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          SimpleAppBar(title: title),
          Text("Total Duas : ${duaList.length}"),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: duaList.length,
                itemBuilder: (context, index) =>duaList[index].duaArabic =="" && duaList[index].topEn == '' ? const SizedBox.shrink(): Container(
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
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30, width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                            ),
                            child: Text(duaList[index].duaId.toString(), style: TextStyle(color: Colors.white),)
                          ),
                           Text(duaList[index].duaArabic),
                           Text(duaList[index].topEn),
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}