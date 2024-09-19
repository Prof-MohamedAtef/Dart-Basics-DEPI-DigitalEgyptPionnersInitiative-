import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:zeow_driver/domain/use_cases/auth/sign_up_use_case.dart';
import 'package:zeow_driver/presentation/states/auth_states.dart';

import '../../data/repositories/auth_repository.dart';

class AuthViewModel extends ChangeNotifier{
  final SignUpUseCase _signUpUseCase;
  AuthViewModel(this._signUpUseCase);


  AuthState _state = AuthInitialState();

  AuthState get state => _state;

  Future<void> signUpWithEmail(String email, String password) async{
    _state = AuthLoadingState();
    notifyListeners();
    try{
      User? user = await _signUpUseCase.executeSignUp(email, password);
      _state = AuthSuccess(user!);
    }catch(e){
      _state = AuthFailureState(e.toString());
    }
    notifyListeners();
  }
}