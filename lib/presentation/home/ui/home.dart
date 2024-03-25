import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/presentation/home/widgets/custom_app_bar.dart';
import 'package:dua_ruqyah/presentation/home/widgets/daily_dua_carousol_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
          Container(
            //  height: 50.percentWidth,
            width: 90.percentWidth,
            color: theme.cardColor,
            child: GridView.builder(
              itemCount: 6,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: fortyEightPx, 
                crossAxisCount: 3,
                ), 
              
              itemBuilder: (context, index) => Container(
                color: Colors.grey.withOpacity(0.3),
                 margin: EdgeInsets.symmetric(horizontal: tenPx, vertical: 2.px),
              )
              ),
          ),
        ],
      ),
    );
  }
}

