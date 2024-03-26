import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/presentation/home/widgets/custom_app_bar.dart';
import 'package:dua_ruqyah/presentation/home/widgets/daily_dua_carousol_widget.dart';
import 'package:dua_ruqyah/presentation/home/widgets/dashboard_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {

  List<String> dashboardList = [
    'Last Read',
    'Memorize',
    'Ruqyah',
    'Dua Q&A',
    'Books',
    'Support'
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          const CustomAppBar(title: "Dua & Ruqyah",),
          const DailyDuaCarousolWidget(),
          SizedBox(height: tenPx,),
          DashboardWidget(theme: theme, dashboardList: dashboardList),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              width: DuaScreen.width,
              height: sixtyFourPx,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(fourPx),
                color: theme.cardColor,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: twentyPx,
                vertical: fourPx
              ),
              padding: EdgeInsets.symmetric(horizontal: tenPx),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Icon(Icons.alarm),
                SizedBox(width: tenPx,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dua's Importance"),
                      Text("Subcategory : 7"),
                  
                  
                    ],
                  ),
                ),
                 Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("21"),
                    Text("Duas"),


                  ],
                ),

              ],),
            )
            ),
            SizedBox(height: twentyEightPx,)
        ],
      ),
    );
  }
}
