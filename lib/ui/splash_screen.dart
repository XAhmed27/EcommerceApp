


import 'package:e_commerceapp/ui/sign_in_ui/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routename="Splashscreen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){

      Navigator.pushReplacementNamed(context,SignIn.routename);
    });

    return Image.asset("assets/image/Splash Screen.png",
      fit: BoxFit.fill,
    );

  }
}
