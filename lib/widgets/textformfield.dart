import 'package:flutter/material.dart';

import '../util/appcolor.dart';

class Mytextformfield extends StatelessWidget {
  final String labelText;
  final Icon icon;
  const Mytextformfield({
    required this.labelText,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: icon,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        fillColor: AppColor.kPrimary,
        filled: true,
      ),
    );
  }
}
