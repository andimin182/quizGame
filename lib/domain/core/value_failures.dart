import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

/// Abstract class ValueFailure (we handle Failures instead of Exceptions).
/// For different types of failures which implements the abstract class,
///  we use freezed package for union
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  /// 2 Union case: InvalidEmail, InvalidPassword
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({
    required String failedValue,
  }) = InvalidPassword<T>;
}
