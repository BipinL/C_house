import 'dart:ui';

import 'package:c_house/util/appcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Trending Shirts",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColor.Primary),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //CAROUSEL SLIDER

              CarouselSlider(
                options: CarouselOptions(height: 200.0, autoPlay: true),
                items: [
                  "https://i.pinimg.com/736x/cb/7b/7b/cb7b7b44ffcbb8d29edbbb6ea08d4ddb.jpg",
                  "https://static-01.daraz.com.bd/p/716ed67243203d728ab8b0d7c66eb7e1.jpg",
                  "https://static-01.daraz.com.bd/p/5878ba2dbc6b40d05d18b25e9fc35375.jpg"
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Image.network(
                          i,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: AppColor.kBackground,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                  "https://i.pinimg.com/736x/cb/7b/7b/cb7b7b44ffcbb8d29edbbb6ea08d4ddb.jpg"),
                            ),
                            Text(
                              "Rs.700",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.Primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: AppColor.kBackground,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                  "https://static-01.daraz.com.bd/p/716ed67243203d728ab8b0d7c66eb7e1.jpg"),
                            ),
                            Text(
                              "Rs.700",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.Primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: AppColor.kBackground,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                  "https://static-01.daraz.com.bd/p/3756d433850b5f237cf546d3ad63d1ca.jpg"),
                            ),
                            Text(
                              "Rs.700",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.Primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: AppColor.kBackground,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                  "https://static-01.daraz.com.bd/p/1d81b0b7845959f0c742faaa860df933.jpg"),
                            ),
                            Text(
                              "Rs.700",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.Primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: AppColor.kBackground,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                  "https://static-01.daraz.com.bd/p/99943bcd7b8ed05f4349384d3577a21d.jpg"),
                            ),
                            Text(
                              "Rs.700",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.Primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: AppColor.kBackground,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                  "https://static-01.daraz.com.bd/p/5878ba2dbc6b40d05d18b25e9fc35375.jpg"),
                            ),
                            Text(
                              "Rs.700",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.Primary),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
