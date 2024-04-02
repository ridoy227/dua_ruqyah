
import 'package:dua_ruqyah/core/utility/logger_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension ContextExtensions on BuildContext {
  Future<T?> navigatorPush<T>(Widget page) async {
    try {
      if (!mounted) return null;
      final CupertinoPageRoute<T> route = CupertinoPageRoute<T>(builder: (context) => page);
      return Navigator.push<T>(this, route);
    } catch (e) {
      logError("Failed to navigate to ${e.runtimeType} -> $e");
      return null;
    }
  }

  Future<T?> navigatorPushReplacement<T>(Widget page) async {
    try {
      if (!mounted) return null;
      final CupertinoPageRoute<T> route = CupertinoPageRoute<T>(builder: (context) => page);
      return Navigator.pushReplacement(this, route);
    } catch (e) {
      logError("Failed to navigate to ${e.runtimeType} -> $e");
      return null;
    }
  }

  Future<T?> showBottomSheetLegacy<T>(Widget bottomSheet) async {
    return Get.bottomSheet<T>(
      bottomSheet,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }

  Future<T?> showBottomSheet<T>(Widget bottomSheet) async {
    if (!mounted) return null;
    final T? result = await showModalBottomSheet<T>(
      context: this,
      builder: (_) => bottomSheet,
      isScrollControlled: true,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
    return result;
  }

  void navigatorPop<T>({T? result}) {
    if (!mounted) return;
    Navigator.pop(this, result);
  }
}