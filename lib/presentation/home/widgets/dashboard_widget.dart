
import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({
    super.key,
    required this.theme,
    required this.dashboardList,
  });

  final ThemeData theme;
  final List<String> dashboardList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: twentyPx
      ),
      width: 80.percentWidth,
      decoration: BoxDecoration(
      color: theme.cardColor,
      borderRadius: BorderRadius.circular(tenPx),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[200]!,
          offset: Offset(00, 02)
        )
      ]
      ),
      child: GridView.builder(
        itemCount: dashboardList.length,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: sixtyFourPx, 
          crossAxisCount: 3,
          ), 
        
        itemBuilder: (context, index) => Padding(
          padding:  EdgeInsets.all(tenPx),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.workspace_premium_outlined),
               Text(
                  dashboardList[index],
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontSize: fourteenPx
                  ),
                ),
            ],
          ),
        )
        ),
    );
  }
}

