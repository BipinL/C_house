import 'package:c_house/util/appcolor.dart';
import 'package:flutter/material.dart';

class Listlite extends StatelessWidget {
  final String title;
  final String trailing;
  const Listlite({
    required this.title,
    required this.trailing,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: AppColor.Primary),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, color: AppColor.Primary),
      ),
    );
  }
}
