import 'package:flutter/material.dart';
import '../../state/auth_state.dart';
import '../user/user_view_model.dart';
import '/data/models/user_model.dart';
import '../../../data/repositories/firebase/auth_repository.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;
  final UserViewModel _userViewModel; // Inject UserViewModel

  AuthViewModel(this._authRepository, this._userViewModel);

  AuthState _state = AuthInitial();

  AuthState get state => _state;
  UserModel? _user;

  UserModel? get user => _user;

  bool get isLoggedIn => _user != null;

  Future<void> signIn(String email, String password) async {
    _state = AuthLoading();
    notifyListeners();
    try {
      UserModel? user = await _authRepository.signInWithEmail(email, password);
      if (user != null) {
        // Save user data using UserViewModel
        await _userViewModel.saveUser(user);
      }
      _state = AuthSuccess(user!);
    } catch (e) {
      _state = AuthFailure(e.toString());
    }
    notifyListeners();
  }

  Future<void> signUp(String email, String password) async {
    _state = AuthLoading();
    notifyListeners();
    try {
      UserModel? user = await _authRepository.signUpWithEmail(email, password);
      _state = AuthSuccess(user!);
    } catch (e) {
      _state = AuthFailure(e.toString());
    }
    notifyListeners();
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
    _state = AuthInitial();
    _user = null;
    notifyListeners();
  }

  // Google Sign-In
  Future<void> signInWithGoogle() async {
    _state = AuthLoading();
    notifyListeners();
    try {
      // signInWithGoogle() returns Either<AuthFailure, User?>

      final result = await _authRepository.signInWithGoogle();
      result.fold(
        (failure) {
          // Handle the failure case
          print(failure.message);
          _state = AuthFailure(failure.message); // or a custom error message
        },
        (firebaseUser) {
          // Handle the success case
          if (firebaseUser != null) {
            // Convert Firebase User to UserModel
            _user = UserModel.fromFirebaseUser(firebaseUser);
            _state = AuthSuccess(_user!); // Use the updated AuthSuccess
          } else {
            _state = AuthFailure("Google Sign-In failed");
          }
        },
      );
    } catch (e) {
      _state = AuthFailure(e.toString());
      print(e.toString());
    }
    notifyListeners();
  }

  void fetchCurrentUser() {
    _user = _authRepository.getCurrentUser();
    notifyListeners();
  }
}