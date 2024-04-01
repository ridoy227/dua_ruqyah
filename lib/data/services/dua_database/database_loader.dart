import 'dart:io';
import 'dart:typed_data';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:dua_ruqyah/core/utility/trial_utility.dart';
import 'package:dua_ruqyah/data/services/runnig_compute.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

const String _dbPath = "assets/databases";
const String _duaDbFileName = "dua_main.db";
const String _duaDbPath = "$_dbPath/$_duaDbFileName";

LazyDatabase loadDatabase() => LazyDatabase(() => _databaseOpener);

Future<bool> isDatabaseFileFound() async {
  final bool? fileFound = await catchAndReturnFuture(() async {
    final File file = await _getDatabaseFile();
    // ignore: avoid_slow_async_io
    final bool exists = await file.exists();
    if (!exists) return false;
    return true;
  });
  return fileFound ?? false;
}

Future<void> deleteDatabase() async {
  await catchFutureOrVoid(() async {
    final File file = await _getDatabaseFile();
    // ignore: avoid_slow_async_io
    final bool exists = await file.exists();
    if (exists) await file.delete();
  });
}

// Moves a database file from the app's assets folder to the internal
// storage of the device.
//
// The method first checks whether the database file already exists in the
// internal storage. If it does, the method returns immediately.
//
// Otherwise, it loads the database file from the assets folder using the
// rootBundle class, creates a new file in the internal storage with the same
// name as the database file, and writes the loaded data into the new
// file.
Future<void> _moveDatabaseFromAssetToInternal(File file) async {
  await catchFutureOrVoid(() async {
    // ignore: avoid_slow_async_io
    final bool databaseExists = await file.exists();
    if (databaseExists) return;

    final ByteData blob = await rootBundle.load(_duaDbPath);
    final ByteBuffer buffer = blob.buffer;
    final Uint8List dbAsBytes =
        buffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes);

    await file.parent.create(recursive: true);
    await file.create(recursive: true);

    await writeFileAsBytesInIsolate(file, dbAsBytes);
  });
}

// doing this operation in main isolate will cause the app to freeze
// and the database will not be copied to the internal storage
// and sometime the app will crash
// spent 2-3 hours to find this solution
// also make sure to use writeAsBytesSync instead of writeAsBytes
Future<void> writeFileAsBytesInIsolate(File file, List<int> dbAsBytes) async {
  await compute(_writeFileAsBytes, (file, dbAsBytes));
}

void _writeFileAsBytes((File, List<int>) param) {
  catchAndReturn(() {
    final (file, dbAsBytes) = param;
    file.writeAsBytesSync(dbAsBytes);
  });
}

Future<File> _getDatabaseFile() async {

  final String dbPath = await _getDatabasePath();
  final File file = File(dbPath);
  return file;
}

Future<String> _getDatabasePath() async {

  final Directory databaseFolder = await getApplicationDocumentsDirectory();
  final String dbPath = path.join(databaseFolder.path, _duaDbFileName);
  return dbPath;
}

Future<QueryExecutor> get _databaseOpener async {

  final File file = await _getDatabaseFile();
  await _moveDatabaseFromAssetToInternal(file);
  return NativeDatabase.createInBackground(file);
}
