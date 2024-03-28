import 'package:food_web/models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final List<Product> _listOfProduct = [
    Product('Pickle Me Elmo', 199, 'assets/burger/pickle.webp'),
    Product('Simply Sally', 159, 'assets/burger/sally.webp'),
    Product('Your Dirty Uncle', 249, 'assets/burger/dirty.webp'),
    Product('Such A Classic', 99, 'assets/burger/classic.webp'),
    Product('Get Litt', 139, 'assets/burger/getlit.webp'),
    Product('Kids Burger', 89, 'assets/burger/kids.webp'),
  ];

  //get product list

  List<Product> get listProduct => _listOfProduct;
}
