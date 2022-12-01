import 'package:c_house/util/appcolor.dart';
import 'package:c_house/widgets/virtical_gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
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
            const Vgap(),
            Row(
              children: [
                Expanded(
                    child: MaterialButton(
                        color: Colors.blue[900],
                        onPressed: () {},
                        child: const Text("confirm"))),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
