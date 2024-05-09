import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{

  // coffee for sale list
  // user cart

  final List<Coffee> _shop = [
    // block coffee
    Coffee(
      name: 'Coffee',
      price: "4.10",
      imagePath: 'lib/image/coffee 2.png'
    ),
    // latte
    Coffee(
        name: 'Latte',
        price: "4.20",
        imagePath: 'lib/image/latte2.png'
    ),
    // espresso
    Coffee(
        name: 'Espresso',
        price: "4.40",
        imagePath: 'lib/image/espresso.png'
    ),
    // iced coffee
    Coffee(
        name: 'Iced Coffee',
        price: "4.70",
        imagePath: 'lib/image/ice_coffee.png'
    ),
  ];
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }
}