import 'package:flutter/material.dart';
import 'package:food_web/controller/productController.dart';
import 'package:food_web/view/components/assets.dart';
import 'package:food_web/view/components/carousel.dart';
import 'package:food_web/view/components/constant.dart';
import 'package:food_web/view/components/defaultButton.dart';
import 'package:food_web/view/components/menu_item.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
          child: Column(children: [
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                itemCount: product.listProduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  final burgerlist = product.listProduct[index];
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        focusColor: Colors.white,
                        mouseCursor: MouseCursor.defer,
                        focusNode: FocusNode(canRequestFocus: true),
                        child: Container(
                          height: 500,
                          width: 500,
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ZoomTapAnimation(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AspectRatio(
                                    aspectRatio: 2,
                                    child: Image.asset(burgerlist.imagePath)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  burgerlist.name,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white70),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "₹ " + burgerlist.price.toString(),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: bgColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ));
                },
              ),
            )
          ]),
        ));
  }
}
