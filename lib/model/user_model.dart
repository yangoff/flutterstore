import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends Model{

  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseUser firebaseUser;

  Map<String,dynamic>userData = Map();

  bool isLoading = false;


  void signUp(Map<String,dynamic> userData,String pass,VoidCallback onSucess,VoidCallback onFailed){
    isLoading = true;
    notifyListeners();
    _auth.createUserWithEmailAndPassword(
        email: userData["email"],
        password: pass
    ).then((user){
      firebaseUser = user;

    }).catchError((e){

    });
  }

  void signIn()async{
    isLoading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 3));
    isLoading = false;
    notifyListeners();
  }
  void recoverPass(){

  }

  bool isLoggedIn(){
    return false;
  }
}