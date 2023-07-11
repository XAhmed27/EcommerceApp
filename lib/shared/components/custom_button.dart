import 'package:e_commerceapp/shared/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  Function()? onPressed;
  CustomButton(this.title, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        child: ElevatedButton(
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Constants.primarycolour,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ));
  }
}
