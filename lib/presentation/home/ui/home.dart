import 'package:dua_ruqyah/core/di/service_locator.dart';
import 'package:dua_ruqyah/core/external_librarys/presentable_widget_builder.dart';
import 'package:dua_ruqyah/core/utility/dua_screen.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_presenter.dart';
import 'package:dua_ruqyah/presentation/home/presenter/home_ui_state.dart';
import 'package:dua_ruqyah/presentation/category/presenter/category_list_widget.dart';
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
              SizedBox(height: tenPx,),
              CategoryListWidget(uiState: uiState, theme: theme,)
            ],
          );
        }
      ),
    );
  }
}

