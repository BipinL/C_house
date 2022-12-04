import 'package:c_house/util/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatelessWidget {
  final String name;
  const Categories({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: MaterialButton(
          color: AppColor.Primary,
          onPressed: () {},
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
