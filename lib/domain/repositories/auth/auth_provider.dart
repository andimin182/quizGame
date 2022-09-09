import 'package:dartz/dartz.dart';
import 'package:quiz/domain/auth/value_objects_impl.dart';
import 'package:quiz/domain/core/auth_failures.dart';

abstract class AuthProvider {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  });
}
