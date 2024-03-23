import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
    return const Placeholder();
  }
}