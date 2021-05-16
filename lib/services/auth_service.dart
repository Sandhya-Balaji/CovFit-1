import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart';


class AuthService {
  //sign in with id and password
  //create an instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //user object
  MyUser __userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<MyUser> get user {
    return _auth
        .authStateChanges()
        .map((User user) => __userFromFirebaseUser(user));
  }

  // SignOut
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print('error at sign out');
      print(e.toString());
      return null;
    }
  }

  Future registerEmailPassword(String email, String pw) async {
    try {
      //request firebase
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: pw);
      // firebase user to regular user/student
      User u = result.user;

      return __userFromFirebaseUser(u);
    } catch (e) {
      print("error at register");
      print('$e');
      print(e.toString());
    }
  }

  Future signInEmailRegister(String email, String pw) async {
    try {
      //request firebase
      UserCredential result =
      await _auth.signInWithEmailAndPassword(email: email, password: pw);
      User u = result.user;
      // firebase user to regular user/student
      return __userFromFirebaseUser(u);
    } catch (e) {
      print("Error at SignIn");
      print('$e');
      print(e.toString());
    }
  }
}