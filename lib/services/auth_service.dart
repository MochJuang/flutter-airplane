import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_airplane/models/user_model.dart';
import 'package:flutter_airplane/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String email,
    required String name,
    required String password,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        hobby: hobby,
        balance: 28000000,
      );

      await UserService().setUser(user);
      return user;
    } catch (e) {
      throw e;
    }
  }
}
