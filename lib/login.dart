import 'package:c_house/forgot_pass.dart';
import 'package:c_house/home.dart';
import 'package:c_house/signup.dart';
import 'package:c_house/util/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  bool x = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.kBackground,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   "images/login.png",
            //   width: Get.size.width * 0.75,
            //   height: Get.size.width * 0.75,
            // ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "enter email",
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  fillColor: AppColor.kPrimary,
                  filled: true),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "enter password",
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                fillColor: AppColor.kPrimary,
                filled: true,
                suffixIcon: IconButton(
                    onPressed: () {
                      x = !x;
                      print(x);
                      setState(() {});
                    },
                    icon: const Icon(Icons.visibility)),
              ),
              obscureText: x,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (() {
                    Get.to(() => const ForgotView());
                  }),
                  child: const Text("forgot password ?",
                      style: TextStyle(decoration: TextDecoration.underline)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                        color: Colors.blue[900],
                        onPressed: () {},
                        child: InkWell(
                            onTap: () {
                              Get.to(() => const Homeview());
                            },
                            child: const Text("Login")))),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const SignUpView());
                  },
                  child: const Text(
                    "I haven't an account",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
