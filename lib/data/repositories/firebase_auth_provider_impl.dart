import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz/domain/core/auth_failures.dart';
import 'package:quiz/domain/auth/value_objects_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:quiz/domain/repositories/auth/auth_provider.dart';

/// Firebase authentication service provider
@LazySingleton(as: AuthProvider)
class FirebaseAuthProvider implements AuthProvider {
  // We need a module to inject third party dependencies from which we don't have access to
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthProvider(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    // Extract the value hold in the value object
    final emailAddressString = email.getOrCrash();
    final passwordString = password.getOrCrash();
    // Handle the [FirebaseAuthException] and convert them into [AuthFailure]
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const Left(AuthFailure.emailAlreadyInUse());
      } else {
        return const Left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress email,
    required Password password,
  }) async {
    // Extract the value hold in the value object
    final emailAddressString = email.getOrCrash();
    final passwordString = password.getOrCrash();
    // Handle the [FirebaseAuthException] and convert them into [AuthFailure]
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'invalid-email') {
        return const Left(AuthFailure.invalidEmailAndPassword());
      } else {
        return const Left(AuthFailure.serverError());
      }
    }
  }
}
