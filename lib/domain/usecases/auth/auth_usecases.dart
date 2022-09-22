import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz/domain/auth/value_objects_impl.dart';
import 'package:quiz/domain/core/auth_failures.dart';
import 'package:quiz/domain/repositories/auth/auth_provider.dart';
import 'package:quiz/domain/entities/user.dart' as entity;

@injectable
class AuthService {
  final AuthProvider provider;

  const AuthService({
    required this.provider,
  });

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    return await provider.registerWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress email, required Password password}) async {
    return await provider.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Option<entity.User> getSignedInUser() {
    final user = provider.getCurrentUser();
    // optionOf return some if user is not null, otherwise return none
    return user;
  }

  Future<void> signOut() async {
    await provider.signOut();
  }
}
