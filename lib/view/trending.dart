import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                  width: 140,
                  child: Column(
                    children: const [Text("hello")],
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.notification_add))
          ])),
    );
  }
}
