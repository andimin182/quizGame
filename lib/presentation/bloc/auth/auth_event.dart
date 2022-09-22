part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getAuthCheckRequested() = GetAuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}
