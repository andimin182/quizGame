import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz/core/util/auth_errors.dart';
import 'package:quiz/domain/core/value_failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  final Either<ValueFailure<T>, dynamic> _value;

  const ValueObject(this._value);

  bool isValid() => value.isRight();

  /// Throws [UnexpectedValueError] containing the [ValueFailure] if there is
  /// a failure. Otherwise returns the value.
  dynamic getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  Either<ValueFailure<T>, dynamic> get value;

  @override
  List<Object?> get props => [_value];

  @override
  String toString();
}
