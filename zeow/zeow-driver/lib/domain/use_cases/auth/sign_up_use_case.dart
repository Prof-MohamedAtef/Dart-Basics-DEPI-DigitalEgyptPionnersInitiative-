import 'package:firebase_auth/firebase_auth.dart';
import 'package:zeow_driver/data/repositories/auth_repository.dart';

class SignUpUseCase{
  final AuthRepository _authRepository;

  SignUpUseCase(this._authRepository);

  Future<User?> executeSignUp(String email, String password){
    return _authRepository.signUpWithEmail(email, password);
  }
}