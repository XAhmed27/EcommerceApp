import 'package:e_commerceapp/shared/utils/constants.dart';
import 'package:flutter/material.dart';

abstract class MyTheme{
  static ThemeData lighttheme=ThemeData(
    scaffoldBackgroundColor: Constants.accentcolour,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(
            color: Constants.primarycolour,
            fontSize: 12
        ),
        selectedIconTheme: IconThemeData(
            size:  36
        ),
        selectedItemColor: Constants.primarycolour,
      ),
      primaryColor: Constants.accentcolour,
    textTheme: const TextTheme(
        labelMedium: TextStyle(fontSize: 24,color:
        Constants.primarycolour,),//welconme back
      labelSmall:TextStyle(fontSize: 16,color:
      Constants.primarycolour,
          fontWeight: FontWeight.w300),// below welcome back
      labelLarge:TextStyle(fontSize: 18,color:
      Constants.black,
          fontWeight: FontWeight.w500),
      displaySmall:TextStyle(fontSize: 20,color:
      Constants.accentcolour,
          fontWeight: FontWeight.w600),// color login
      headlineSmall:TextStyle(fontSize: 18,
          fontWeight: FontWeight.w500,color: Constants.primarycolour)// under please email
    ),
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true
        ),


  );
}