import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz/domain/auth/value_objects_impl.dart';
import 'package:quiz/domain/entities/user.dart' as entity;

extension FirebaseUserDomainX on User {
  entity.User toDomain() {
    return entity.User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
