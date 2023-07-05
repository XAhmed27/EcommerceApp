

import 'package:e_commerceapp/shared/components/form_label.dart';
import 'package:e_commerceapp/shared/utils/constants.dart';
import 'package:flutter/material.dart';

class SignIn  extends StatefulWidget {

  static String routename="SignIn";
  @override
  State<SignIn> createState() => _State();
}

  class _State extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 60,),
          Image.asset("assets/image/Route_Login_Logo.png"),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Welcome Back to Route ",
              style:Theme.of(context).textTheme.labelMedium,),
          ),
          const SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Please sign in with mail",
              style:Theme.of(context).textTheme.labelSmall,),
          ),
          SizedBox(height: 24,),
          FormLabel(label: "EmailAddress"),
          SizedBox(height: 24,)






        ],
      ),
    ),





  );
  }

  }