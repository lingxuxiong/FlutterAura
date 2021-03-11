import 'package:flutter/material.dart';

import 'demo/shopping/product.dart';
import 'demo/shopping/shopping_list_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingListScreen(
      products: <Product>[
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}