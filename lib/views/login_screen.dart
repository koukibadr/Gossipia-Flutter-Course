import 'package:flutter/material.dart';
import 'package:gossipia/views/home_screen.dart';
import 'package:gossipia/views/home_screen_grid.dart';
import 'package:gossipia/views/login_controller.dart';
import 'package:gossipia/widget/app_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 50,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Image.asset('assets/images/app_logo.png',
                                width: 120),
                            SizedBox(
                              height: 20,
                            ),
                            Text("S'authentifier",
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: loginController.emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'E-mail'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        obscureText: true,
                        controller: loginController.passwordController,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Mot de passe'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeScreen();
                              },
                            ),
                          );
                        },
                        child: AppButton(buttonText: "S'authentifier")),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Créer un compte'),
                  ],
                ),
              ),
              Text('Continuer sans compte'),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
