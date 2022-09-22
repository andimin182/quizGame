import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz/domain/usecases/auth/auth_usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  AuthBloc(this._authService) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        getAuthCheckRequested: (e) async {
          final userOption = _authService.getSignedInUser();
          userOption.fold(
            () => emit(
              const AuthState.unauthenticated(),
            ),
            (_) => emit(
              const AuthState.authenticated(),
            ),
          );
        },
        signedOut: (e) async {
          await _authService.signOut();
          emit(
            const AuthState.unauthenticated(),
          );
        },
      );
    });
  }
}
