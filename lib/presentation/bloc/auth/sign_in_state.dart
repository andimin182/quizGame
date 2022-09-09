part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress email,
    required Password password,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required bool showErrorDialog,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        showErrorDialog: false,
      );
}
