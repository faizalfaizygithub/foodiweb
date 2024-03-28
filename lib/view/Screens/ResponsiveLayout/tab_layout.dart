import 'package:flutter/material.dart';
import 'package:food_web/controller/productController.dart';
import 'package:food_web/view/components/assets.dart';
import 'package:food_web/view/components/carousel.dart';
import 'package:food_web/view/components/constant.dart';
import 'package:food_web/view/components/defaultButton.dart';
import 'package:food_web/view/components/menu_item.dart';
import 'package:get/get.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({super.key});

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  final product = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/images/logo.jpg',
          height: 50,
          alignment: Alignment.topCenter,
        ),
        title: Text(
          'Foodi'.toUpperCase(),
          style: const TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          MenuItems(
            title: 'Home',
            press: () {},
          ),
          MenuItems(
            title: 'About',
            press: () {},
          ),
          MenuItems(
            title: 'Pricing',
            press: () {},
          ),
          MenuItems(
            title: 'contact',
            press: () {},
          ),
          MenuItems(
            title: 'login',
            press: () {},
          ),
          DefaultaButton(
            text: 'Get Started',
            press: () {},
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: body),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: CarouselScreen(
                photos: banners,
              ),
            ),
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              child: GridView.builder(
                  itemCount: product.listProduct.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    final burgerlist = product.listProduct[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 27, 37, 46),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AspectRatio(
                                aspectRatio: 2,
                                child: Image.asset(burgerlist.imagePath)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              burgerlist.name,
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {},
                              focusColor: Colors.red,
                              overlayColor:
                                  MaterialStateProperty.all(Colors.black),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white70),
                                alignment: Alignment.center,
                                child: Text(
                                  "₹ " + burgerlist.price.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 27, 37, 46),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
