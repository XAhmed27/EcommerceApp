import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormLabel  extends StatelessWidget {
  String label;
  FormLabel({required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
