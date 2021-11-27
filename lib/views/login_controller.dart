import 'package:flutter/cupertino.dart';

class LoginController {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onPressButton(){
    String email = emailController.text;
    String password = passwordController.text;

    if(email == 'badr@gmail.com' && password == "123456"){
      print("Compte valide");
    }else{
      print("Compte invalide");
    }
  }

}