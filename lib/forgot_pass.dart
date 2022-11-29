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
      backgroundColor: const Color.fromARGB(255, 63, 151, 227),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "enter email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                fillColor: Color.fromARGB(255, 145, 195, 236),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("confirm"))),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
