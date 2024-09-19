import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthSuccess extends AuthState {
  User user;

  AuthSuccess(this.user);
}

class AuthFailureState extends AuthState {
  final String message;

  AuthFailureState(this.message);

  factory AuthFailureState.cancelByUser() =>
      AuthFailureState('Sign Up Cancel By the User');

  factory AuthFailureState.serverError() =>
      AuthFailureState('Server Error');
}