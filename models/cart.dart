import 'package:flutter/material.dart';

import '../models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Eyes on me',
      price: '600',
      imagepath: '../lib/images/new5.png',
      description: 'Made with soft and heat free materials',
    ),
    Shoe(
      name: 'Pepper them',
      price: '1400',
      imagepath: '../lib/images/new3.png',
      description: 'Your perfect foot',
    ),
    Shoe(
      name: 'Eyes on me',
      price: '600',
      imagepath: '../lib/images/new5.png',
      description: 'Made with soft and heat free materials',
    ),
    Shoe(
      name: 'Pepper them',
      price: '1400',
      imagepath: '../lib/images/new3.png',
      description: 'Your perfect foot',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
