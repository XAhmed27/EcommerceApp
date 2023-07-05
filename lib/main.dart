import 'package:e_commerceapp/shared/utils/my_theme.dart';
import 'package:e_commerceapp/ui/sign_in_ui/sign_in.dart';
import 'package:e_commerceapp/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: MyTheme.lighttheme,
      routes: {
         SplashScreen.routename:(_)=>SplashScreen(),
        SignIn.routename:(_)=>SignIn(),
    },
      initialRoute:SplashScreen.routename ,

    );
  }
}

