import 'package:c_house/util/appcolor.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.kBackground,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text("C-house"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'On sale now',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
            Container(
              height: 150,
              color: AppColor.kPrimary,
              child: Row(
                children: [
                  SizedBox(
                    height: 170,
                    width: 160,
                    child: Image.network(
                        "https://www.incimages.com/uploaded_files/image/1920x1080/getty_507716250_226806.jpg"),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
