import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future sign_Up(String email , String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email , password: password);
    return null;
  } 
  catch (e) {
    print(e);
  }
}

Future<UserCredential?> googleSignIn() async {

  // try {
  //   print('mo');
  //   await FirebaseAuth.instance
  //     .signInWithPopup(GoogleAuthProvider());
  //     print('moooooo');
  //     return null;
  // } on FirebaseAuthException 
  // catch (ex) {
  //   return "${ex.code}: ${ex.message}";
  // } on UnimplementedError catch (ex) {return ex.message;}

  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);

}