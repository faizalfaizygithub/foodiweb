import 'package:flutter/material.dart';
import 'package:food_web/controller/productController.dart';
import 'package:food_web/view/components/assets.dart';
import 'package:food_web/view/components/carousel.dart';
import 'package:food_web/view/components/constant.dart';
import 'package:food_web/view/components/menu_item.dart';
import 'package:get/get.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              child: GridView.builder(
                  itemCount: product.listProduct.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
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
                          children: [
                            AspectRatio(
                                aspectRatio: 2,
                                child: Image.asset(burgerlist.imagePath)),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              burgerlist.name,
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
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
                                    color: Color.fromARGB(255, 27, 37, 46),
                                    fontWeight: FontWeight.bold),
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
      endDrawer: Container(
        height: 300,
        child: Drawer(
          backgroundColor: Colors.white60,
          width: 200,
          child: _drawerList(context),
        ),
      ),
    );
  }
}

_drawerList(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      MenuItems(
        title: 'Home',
        press: () {
          Navigator.pop(context);
        },
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
    ],
  );
}
