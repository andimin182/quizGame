import 'package:quiz/domain/core/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        'Encountered a ValueFailure. Terminating. Failure was: $valueFailure');
  }
}
