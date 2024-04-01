import 'package:dua_ruqyah/core/di/service_locator.dart';
import 'package:dua_ruqyah/core/external_librarys/presentable_widget_builder.dart';
import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_presenter.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_ui_state.dart';
import 'package:dua_ruqyah/presentation/home/widgets/custom_app_bar.dart';
import 'package:dua_ruqyah/presentation/home/widgets/daily_dua_carousol_widget.dart';
import 'package:dua_ruqyah/presentation/home/widgets/dashboard_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> dashboardList = [
    'Last Read',
    'Memorize',
    'Ruqyah',
    'Dua Q&A',
    'Books',
    'Support'
  ];

  final HomePresenter _presenter = locate();



  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: PresentableWidgetBuilder(
        presenter: _presenter,
        builder: () {
          HomeUiState uiState = _presenter.uiState.value;
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              const CustomAppBar(title: "Dua & Ruqyah",),
              const DailyDuaCarousolWidget(),
              SizedBox(height: tenPx,),
              DashboardWidget(theme: theme, dashboardList: dashboardList),
              uiState.isLoading?  Container(height: 30, width: 30, margin: EdgeInsets.symmetric(
                horizontal: DuaScreen.width/2.2,
                vertical: tenPx
              ), child: const CircularProgressIndicator()) : ListView.builder(
                itemCount: uiState.categoryList.length,
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
                    const Icon(Icons.alarm),
                    SizedBox(width: tenPx,),
                     Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(uiState.categoryList[index].catNameEn),
                          Text("Subcategory : ${uiState.categoryList[index].noOfSubcat}"),
                        ],
                      ),
                    ),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(uiState.categoryList[index].noOfDua.toString()),
                        const Text("Duas"),
                      ],
                    ),
                     ],),
                )
                ),
                SizedBox(height: twentyEightPx,)
            ],
          );
        }
      ),
    );
  }
}
