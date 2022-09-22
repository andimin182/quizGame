import 'package:dartz/dartz.dart';
import 'package:quiz/domain/auth/value_objects_impl.dart';
import 'package:quiz/domain/core/auth_failures.dart';
import 'package:quiz/domain/entities/user.dart' as entity;

abstract class AuthProvider {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Option<entity.User> getCurrentUser();

  Option<entity.User> getSignedInUser();
  Future<void> signOut();
}
