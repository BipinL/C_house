import 'package:c_house/forgot_pass.dart';
import 'package:c_house/home.dart';
import 'package:c_house/signup.dart';
import 'package:c_house/util/appcolor.dart';
import 'package:c_house/widgets/textformfield.dart';
import 'package:c_house/widgets/virtical_gaps.dart';
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
            const Mytextformfield(
              icon: Icon(Icons.email),
              labelText: "enter email",
            ),
            const Vgap(),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
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
                    icon: const Icon(Icons.visibility_off)),
              ),
              obscureText: x,
            ),
            const Vgap(),
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
            const Vgap(),
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
            const Vgap(),
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
