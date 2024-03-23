import 'dart:io';

import 'package:dua_ruqyah/core/di/service_locator.dart';
import 'package:dua_ruqyah/core/utility/trial_utility.dart';
import 'package:dua_ruqyah/presentation/dua_ruqyah_app.dart';
import 'package:dua_ruqyah/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initializeEssentials();
  runApp(const DuaRuqyahApp());
}


Future<void> _initializeEssentials() async {
  // await SplashScreen.show();
  await ServiceLocator.setUp();
  await _setMaxRefreshRate();
}

Future<void> _setMaxRefreshRate() async {
  if (!Platform.isAndroid) return;
  await catchFutureOrVoid(() async => FlutterDisplayMode.setHighRefreshRate());
}

