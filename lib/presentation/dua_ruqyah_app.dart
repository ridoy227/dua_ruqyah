import 'dart:io';

import 'package:dua_ruqyah/core/static/constants.dart';
import 'package:dua_ruqyah/core/utility/logger_utility.dart';
import 'package:dua_ruqyah/presentation/home/ui/home.dart';
import 'package:dua_ruqyah/presentation/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked_themes/stacked_themes.dart';

class DuaRuqyahApp extends StatefulWidget {
  const DuaRuqyahApp({super.key});

    static final GlobalKey _globalKey = GlobalKey();

  static BuildContext get globalContext =>
      Get.context ?? _globalKey.currentContext!;

  @override
  State<DuaRuqyahApp> createState() => _DuaRuqyahAppState();
}

class _DuaRuqyahAppState extends State<DuaRuqyahApp> {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      key: const Key("ThemeBuilderKey"),
      lightTheme: duaLightTheme,
      darkTheme: duaDarkTheme,
      defaultThemeMode: ThemeMode.light,
      builder: (context, lightTheme, darkTheme, themeMode) {
        return GetMaterialApp(
          key: DuaRuqyahApp._globalKey,
          debugShowCheckedModeBanner: false,
          transitionDuration: defaultPageTransitionDuration,
          defaultTransition:  Platform.isIOS? Transition.native : Transition.cupertino,
          title: "Dua & Ruqyah",
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeMode ?? ThemeMode.light,
          logWriterCallback: logWriterCallBack,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context), 
              child: child ?? const SizedBox.shrink()
              );
          },
          home:  HomeScreen(),
        );

      },
      
    );
  }
}