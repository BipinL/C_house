import 'package:c_house/util/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListviewB extends StatelessWidget {
  // final Image image;
  final String price;
  const ListviewB({
    // required this.image,
    required this.price,
    Key? key,
    required this.products,
  }) : super(key: key);

  final List products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: Get.size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                    child: Column(
                  children: [
                    Expanded(
                      child: Image.network(products[index]['image']),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.Primary),
                    ),
                  ],
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
