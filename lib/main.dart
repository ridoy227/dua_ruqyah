import 'dart:io';

import 'package:dua_ruqyah/core/di/service_locator.dart';
import 'package:dua_ruqyah/core/utility/trial_utility.dart';
import 'package:dua_ruqyah/presentation/dua_ruqyah_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

void main() async {
  await _initializeEssentials();
  runApp(const DuaRuqyahApp());
}


Future<void> _initializeEssentials() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.setUp();
  await _setMaxRefreshRate();
}

Future<void> _setMaxRefreshRate() async {
  if (!Platform.isAndroid) return;
  await catchFutureOrVoid(() async => FlutterDisplayMode.setHighRefreshRate());
}

