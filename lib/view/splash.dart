import 'package:c_house/view/login.dart';
import 'package:c_house/util/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (() {
      Get.off(() => const Loginview());
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.kBackground,
      body: Center(
        child: Text(
          "WELCOME TO C HOUSE",
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontStyle: FontStyle.italic),
        ),
      ),
    ));
  }
}
