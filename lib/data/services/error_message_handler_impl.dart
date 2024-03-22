import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift/remote.dart';
import 'package:dua_ruqyah/domain/services/error_message_handler.dart';

/// The `ErrorMessageHandler` class helps to provide specific error handling and
/// make the error messages more user-friendly.
///
/// By creating an abstract class for error message handling and an
/// implementation class, like `ErrorMessageHandlerImpl`, we can have a central
/// place for handling errors throughout the app.
/// This makes it easier to maintain consistent error messages and ensures that
/// developers handle errors in a consistent manner.
///
/// Overall, creating an `ErrorMessageHandler` class and its implementation can
/// help to improve the quality of error handling and make the app more robust
/// and user-friendly.
class ErrorMessageHandlerImpl extends ErrorMessageHandler {
  @override
  String generateErrorMessage(Object? error) {
    if (error == null) return "ত্রুটি সংঘটিত হয়েছে";

    if (error is Error || error is Exception || error is String) {
      if (error is Error) return "ডাটা পাওয়া যায়নি";
      if (error is IOException) {
        return "আপনার মোবাইলের ইন্টারনেট অন করা আছে কিনা দেখুন।";
      } else if (error is SocketException) {
        return "সম্ভবত সার্ভারের সাথে সংযোগ স্থাপন করা সম্ভব হয়নি।।";
      } else if (error is SqliteException) {
        return "সম্ভবত ডাটাবেস লোড করা সম্ভব হয়নি। দয়া করে অ্যাপের ডাটা ক্লিয়ার করে, আবার অ্যাপটি ওপেন করার চেষ্টা করুন।";
      } else if (error is DriftRemoteException) {
        return "সম্ভবত ডাটা লোড করতে গিয়ে ডাটাবেস ব্যর্থ হয়েছে।";
      } else if (error is InvalidDataException) {
        return "সম্ভবত আপনার ডাটাটি সঠিক নয়।";
      }
      return error.toString().replaceAll("Exception: ", "");
    }

    return "";
  }
}
