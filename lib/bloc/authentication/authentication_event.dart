part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.login({required String email,required String password,required BuildContext context}) = login;
  const factory AuthenticationEvent.signup() = signup;
    const factory AuthenticationEvent.resetPassword() = resetPassword;
}