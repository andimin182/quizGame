import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz/domain/auth/value_objects_impl.dart';
part 'user.freezed.dart';

/// User entity that holds an unique ID
///
@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId id,
  }) = _User;
}
