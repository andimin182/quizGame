import 'package:dartz/dartz.dart';
import 'package:quiz/domain/core/value_failures.dart';
import 'package:quiz/domain/core/validators.dart';
import 'package:quiz/domain/core/value_objects.dart';
import 'package:uuid/uuid.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> _value;

  /// Validate at instantiation time with the factory constructor
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this._value) : super(_value);

  @override
  List<Object?> get props => [_value];

  @override
  String toString() => 'EmailAddress($_value)';

  @override
  Either<ValueFailure<String>, String> get value => _value;
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> _value;

  /// Validate at instantiation time with the factory constructor
  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this._value) : super(_value);

  @override
  List<Object?> get props => [_value];

  @override
  String toString() => 'Password($_value)';

  @override
  Either<ValueFailure<String>, String> get value => _value;
}

class UniqueId extends ValueObject<String> {
  final Either<ValueFailure<String>, String> _value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this._value) : super(_value);

  @override
  String toString() => 'UniqueId($_value)';

  @override
  List<Object?> get props => [_value];

  @override
  Either<ValueFailure<String>, dynamic> get value => _value;
}
