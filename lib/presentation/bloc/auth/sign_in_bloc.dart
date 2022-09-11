import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz/domain/auth/value_objects_impl.dart';
import 'package:quiz/domain/core/auth_failures.dart';
import 'package:quiz/domain/usecases/auth/auth_usecases.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthService _authService;

  SignInBloc(this._authService) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) {
          emit(
            state.copyWith(
              email: EmailAddress(e.emailStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        passwordChanged: (e) {
          emit(
            state.copyWith(
              password: Password(e.passStr),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        signInWithEmailAndPasswordPressed: (e) async {
          await _performActionOnAuthProviderWithEmailAndPassword(
            e,
            emit,
            _authService.signInWithEmailAndPassword,
          );
        },
        registerWithEmailAndPasswordPressed: (e) async {
          await _performActionOnAuthProviderWithEmailAndPassword(
            e,
            emit,
            _authService.registerWithEmailAndPassword,
          );
        },
      );
    });
  }

  Future<void> _performActionOnAuthProviderWithEmailAndPassword(
    SignInEvent event,
    Emitter<SignInState> emit,
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress email,
      required Password password,
    })
        forwardedCall,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (state.email.isValid() && state.password.isValid()) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await forwardedCall(
        email: state.email,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorDialog: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
