import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/domain/core/value_failures.dart';
import 'package:quiz/domain/quiz/quiz_value_objects_impl.dart';

void main() {
  final amountOk = Amount('10');

  test(
    'should return value',
    () async {
      //arrange
      //act
      final expected = Amount('10');
      //assert
      expect(amountOk.value, equals(expected.value));
    },
  );

  test(
    'should return 10 ',
    () async {
      //arrange
      //act
      //assert
      expect(amountOk.getOrCrash(), equals('10'));
    },
  );
  test(
    'should ',
    () async {
      //arrange
      //act
      //assert
      expect(Amount('').getOrCrash(), throwsA(isA<ValueFailure>));
    },
  );
}
