import 'package:firebase_auth/firebase_auth.dart';
import 'package:zeow_driver/domain/core/firebase/firebase_auth_service.dart';

class AuthRepository {

  final FirebaseAuthService firebaseAuthService = FirebaseAuthService();

  Future<User?> signUpWithEmail(String email, String password) async{
    try {
      User? user = await firebaseAuthService.signUpWithEmail(email, password);
      return user;
    }catch(e){
      throw Exception("Sign up failed: ${e.toString()}");
    }
  }
}