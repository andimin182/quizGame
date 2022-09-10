import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/core/error.dart';
import 'package:quiz/core/util/input_converter.dart';

void main() {
  late InputConverter inputConverter;

  setUp(() {
    inputConverter = InputConverter();
  });

  group('stringToUnsignedInt', () {
    test('should return a int when the string represents un unsigned integer',
        () async {
      //arrange
      const str = '23';
      //act
      final result = inputConverter.stringToUnsignedInteger(str);
      //assert
      expect(result, const Right(23));
    });

    test('should return a Failure when the string is not an integer', () async {
      //arrange
      const str = 'ab';
      //act
      final result = inputConverter.stringToUnsignedInteger(str);
      //assert
      expect(result, Left(InvalidInputFailure()));
    });

    test('should return a Failure when the string is a negative integer',
        () async {
      //arrange
      const str = '-12';
      //act
      final result = inputConverter.stringToUnsignedInteger(str);
      //assert
      expect(result, Left(InvalidInputFailure()));
    });
  });
}
