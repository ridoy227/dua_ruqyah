import 'dart:async';

import 'package:isolated_worker/isolated_worker.dart';


final IsolatedWorker _worker = IsolatedWorker();

typedef ComputeFunction<RESULT, PARAM> = FutureOr<RESULT> Function(
  PARAM parameter,
);

Future<RESULT> compute<PARAM, RESULT>(
  ComputeFunction<RESULT, PARAM> function,
  PARAM parameter,
) async {
  final RESULT result = await _worker.run(function, parameter);
  return result;
}
