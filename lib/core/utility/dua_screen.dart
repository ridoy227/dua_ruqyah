import 'package:dua_ruqyah/core/utility/logger_utility.dart';
import 'package:dua_ruqyah/presentation/dua_ruqyah_app.dart';
import 'package:flutter/cupertino.dart';

/// Utility class for retrieving the screen dimensions of the device.
///
/// The `DuaScreen` class provides static methods and properties to access
/// the width and height of the device's screen. It relies on the `Get` package
/// to obtain the screen dimensions.
///
///
/// Example usage:
///
/// ```dart
/// DuaScreen.setUp();
/// double screenWidth = DuaScreen.width;
/// double screenHeight = DuaScreen.height;
/// ```
///
/// Rationale:
///
/// - The `DuaScreen` class provides a convenient way to access the screen dimensions
/// of the device. By centralizing the screen dimension retrieval logic within a class,
/// it promotes code re-usability and improves code readability.
///
/// - The class utilizes the `Get` package, which is a popular package for state management
/// and navigation in Flutter applications. By relying on a well-established package,
/// the `DuaScreen` class benefits from its reliability and compatibility with different
/// screen sizes and orientations.
///
/// - The `setUp` method allows for explicit initialization of the screen dimensions. This
/// ensures that the dimensions are retrieved only when needed and avoids unnecessary
/// calculations or potential errors caused by accessing uninitialized values.
///
/// - The `_resetIfInvalid` method checks if the screen dimensions are valid. If the dimensions
/// are less than 10 pixels in either width or height, an error is logged, and the dimensions
/// are set to `null`. This prevents the usage of invalid or unreliable screen dimensions
/// throughout the application.
class DuaScreen {
  DuaScreen._();

  static void setUp(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    _height = size.height;
    _width = size.width;
    _resetIfInvalid();
  }

  static double? _width;
  static double? _height;

  static Size get _size => MediaQuery.sizeOf(DuaRuqyahApp.globalContext);

  static double get width {
    _width ??= _size.width;
    return _width!;
  }

  static double get height {
    _height ??= _size.height;
    return _height!;
  }

  static void _resetIfInvalid() {
    if (_width! < 10 || _height! < 10) {
      logErrorStatic(
        'DuaScreen size not initialized. Please initialize DuaScreen and try again.',
        "dua_screen",
      );
      _width = null;
      _height = null;
    }
  }
}
