import 'package:quiz/domain/core/validators.dart';
import 'package:quiz/domain/core/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:quiz/domain/core/value_objects.dart';

class Amount extends ValueObject<String> {
  final Either<ValueFailure<String>, String> _value;

  /// Validate at instantiation time with the factory constructor
  factory Amount(String input) {
    return Amount._(
      validateAmount(input),
    );
  }

  const Amount._(this._value) : super(_value);

  @override
  List<Object?> get props => [_value];

  @override
  String toString() => 'Amount($_value)';

  @override
  Either<ValueFailure<String>, String> get value => _value;
}
