import 'package:dartz/dartz.dart';
import 'package:quiz/core/error.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String stringToConv) {
    try {
      final result = int.parse(stringToConv);
      if (result >= 0) {
        return Right(result);
      }
      throw const FormatException();
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }

  Either<Failure, String> checkString(String stringToCheck) {
    try {
      if (stringToCheck == "multiple" ||
          stringToCheck == "Multiple" ||
          stringToCheck == "boolean" ||
          stringToCheck == "Boolean") {
        return Right(stringToCheck);
      }
      throw const FormatException();
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}
