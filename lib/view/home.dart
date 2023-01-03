import 'package:c_house/util/appcolor.dart';
import 'package:c_house/view/trending.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/categories.dart';
import '../widgets/listtile.dart';
import '../widgets/listviewB.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  @override
  Widget build(BuildContext context) {
    List products = [
      {
        "image":
            "https://static.fibre2fashion.com/MemberResources/LeadResources/1/2018/5/Buyer/18147557/Images/18147557_0_men-s-branded-shirts.jpg"
      },
      {
        "image":
            "https://i.pinimg.com/736x/cb/7b/7b/cb7b7b44ffcbb8d29edbbb6ea08d4ddb.jpg"
      },
      {
        "image":
            "https://static.fibre2fashion.com/MemberResources/LeadResources/1/2018/5/Buyer/18147888/Images/18147888_0_men-s-branded-shirt.jpg"
      },
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Center(
              child: Text(
                "C-HOUSE",
                style: TextStyle(
                    color: AppColor.Primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            // searchfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "search",
                  // prefixIcon: icon,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  // fillColor:Color(value),
                  filled: true,
                ),
              ),
            ),
            //On sale now
            const Listlite(
              title: "On sale now",
              trailing: "See all",
            ),
            ListviewB(
              products: products,
              price: "Rs.700",
            ),

            //trending
            InkWell(
                onTap: () {
                  Get.to(() => Trending());
                },
                child: const Listlite(title: "Trending", trailing: "See all")),
            ListviewB(price: "Rs.900", products: products),

            //categories
            const Listlite(title: "Categories", trailing: "See all"),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Wrap(
                children: const [
                  Categories(name: "Men"),
                  Categories(name: "Women"),
                  Categories(name: "Children"),
                  Categories(name: "old"),
                  Categories(name: "Kitchen items"),
                  Categories(name: "Home Decoration")
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
