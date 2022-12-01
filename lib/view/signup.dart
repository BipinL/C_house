import 'package:c_house/view/login.dart';
import 'package:c_house/util/appcolor.dart';
import 'package:c_house/widgets/textformfield.dart';
import 'package:c_house/widgets/virtical_gaps.dart';
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
            const Mytextformfield(
              labelText: "Full name",
              icon: Icon(Icons.person),
            ),
            const Vgap(),
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
                    icon: const Icon(Icons.visibility)),
              ),
              obscureText: x,
            ),
            const Vgap(),
            Row(
              children: [
                Expanded(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                      color: Colors.blue[900],
                      onPressed: () {},
                      child: const Text("Signup")),
                )),
              ],
            ),
            const Vgap(),
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
