import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  
  final String buttonText;
  final Color buttonColor;

  const AppButton(
      {Key? key,
      required this.buttonText,
      this.buttonColor = const Color(0xff2DB9DC)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xff2DB9DC), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text("S'authentifier", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
