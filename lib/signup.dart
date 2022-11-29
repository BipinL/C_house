import 'package:c_house/login.dart';
import 'package:c_house/util/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
            TextFormField(
              decoration: InputDecoration(
                labelText: "enter email",
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                fillColor: AppColor.kPrimary,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "enter email",
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                fillColor: AppColor.kPrimary,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
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
              children: [
                Expanded(
                    child: MaterialButton(
                        color: Colors.blue[900],
                        onPressed: () {},
                        child: const Text("Signup"))),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (() {
                    Get.to(() => const Loginview());
                  }),
                  child: const Text("I already have an account ",
                      style: TextStyle(decoration: TextDecoration.underline)),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
