extension NumberUtilityExt on num {
  Duration get inMilliseconds => Duration(microseconds: (this * 1000).round());

  Duration get inSeconds => Duration(milliseconds: (this * 1000).round());

  Duration get inMinutes =>
      Duration(seconds: (this * Duration.secondsPerMinute).round());

  Duration get inHours =>
      Duration(minutes: (this * Duration.minutesPerHour).round());

  Duration get inDays => Duration(hours: (this * Duration.hoursPerDay).round());
}