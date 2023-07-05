

import 'package:e_commerceapp/shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomTextFormFeild extends StatelessWidget {
  String hintText;
  bool isPassword;
  String ? Function(String?)?validator;
  TextEditingController? controller;
  TextInputType type;
  CustomTextFormFeild({
    required this.hintText,
    this.isPassword=false,
    required this.controller,
    required this.validator,
    required this.type,
   });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validator,
      obscureText: isPassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
           errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          disabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedErrorBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Constants.primarycolour,
          filled: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
