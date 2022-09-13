import 'package:dartz/dartz.dart';
import 'package:quiz/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return Right(input);
  } else {
    return Left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, int> validateCategory(String valueInput) {
  if (valueInput.isNotEmpty) {
    final result = int.parse(valueInput);

    return Right(result);
  } else {
    return Left(ValueFailure.invalidCategory(failedValue: valueInput));
  }
}

Either<ValueFailure<String>, String> validateType(String valueInput) {
  if (valueInput.isNotEmpty) {
    return Right(valueInput);
  } else {
    return Left(ValueFailure.invalidCategory(failedValue: valueInput));
  }
}

Either<ValueFailure<String>, String> validateAmount(String input) {
  if (input.isNotEmpty) {
    final result = int.parse(input);
    if (result > 0 && result <= 15) {
      return Right(input);
    } else {
      return Left(ValueFailure.invalidAmount(failedValue: input));
    }
  } else {
    return const Left(ValueFailure.emptyString());
  }
}
