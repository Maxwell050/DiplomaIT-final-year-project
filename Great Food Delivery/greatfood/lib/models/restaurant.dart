
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:greatfood/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {

  // list of food menu
  final List<Food>_menu = [
    //burger
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/burger/burger1.jpeg",
        price: 2.9,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/burger/burger2.jpeg",
        price: 2.9,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/burger/burger3.jpeg",
        price: 2.9,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/burger/burger4.jpeg",
        price: 2.9,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/burger/burger5.jpeg",
        price: 2.9,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),


    //salad
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/salad/salad1.jpeg",
        price: 2.9,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Egg", price: 1.8),
          Addon(name: "Meat", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/salad/salad2.jpeg",
        price: 2.9,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Egg", price: 1.8),
          Addon(name: "Meat", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/salad/salad3.jpeg",
        price: 2.9,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Cream", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/salad/salad4.jpeg",
        price: 2.9,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Cream", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/salad/salad5.jpeg",
        price: 2.9,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.9),
          Addon(name: "Cream", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),

    //local
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/local/local1.jpg",
        price: 2.9,
        category: FoodCategory.locals,
        availableAddons: [
          Addon(name: "Extra Meat", price: 0.9),
          Addon(name: "Egg", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/local/local2.jpg",
        price: 2.9,
        category: FoodCategory.locals,
        availableAddons: [
          Addon(name: "Extra Fish", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Avocado", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/local/local3.jpg",
        price: 2.9,
        category: FoodCategory.locals,
        availableAddons: [
          Addon(name: "Extra Fish", price: 0.9),
          Addon(name: "Fanta", price: 1.8),
          Addon(name: "Egg", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/local/local4.jpg",
        price: 2.9,
        category: FoodCategory.locals,
        availableAddons: [
          Addon(name: "Malt", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Fanta", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/local/local5.jpg",
        price: 2.9,
        category: FoodCategory.locals,
        availableAddons: [
          Addon(name: "Fanta", price: 0.9),
          Addon(name: "Coke", price: 1.8),
          Addon(name: "Malt", price: 0.9),

        ]),

    //drink
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/drink/drink5.jpeg",
        price: 2.9,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Bread", price: 0.9),
          Addon(name: "Pie", price: 1.8),
          Addon(name: "Jam", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/drink/drink4.jpeg",
        price: 2.9,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Pie", price: 0.9),
          Addon(name: "Waffle", price: 1.8),
          Addon(name: "Honey", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/drink/drink3.jpeg",
        price: 2.9,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Bread", price: 0.9),
          Addon(name: "Pie", price: 1.8),
          Addon(name: "Straw", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/drink/drink2.jpg",
        price: 2.9,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Waffle", price: 0.9),
          Addon(name: "Cup", price: 1.8),
          Addon(name: "Straw", price: 0.9),

        ]),
    Food(
        name: "Kitchen Nashville",
        description: "A juicy beef with melted cheddar,tomato and a hint of onion and pickle",
        imagePath: "lib/image/drink/drink1.jpg",
        price: 2.9,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Bread", price: 0.9),
          Addon(name: "Straw", price: 1.8),
          Addon(name: "Pie", price: 0.9),

        ]),
  ];

  /*
  G E T T E R S
   */
  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

/*
O P E R A T I O N
 */


  //User cart
  final List<CartItem>_cart = [];

//add to cart
  void addToCart(Food food, List<Addon>selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
      ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    //if item already exists,increase it's quntity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // else add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
            food: food,
            selectedAddons: selectedAddons
        ),
      );
    }
    notifyListeners();
  }

//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

//get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity; // Multiply itemTotal by quantity
    }
    return total;
  }


//get total number items in the cart
  double getTotalItemCount() {
    double totalItemCount = 0.0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

/*
H E L P E R S
 */
//generate a receipt
//   String displayCartReceipt(){
//     final receipt=StringBuffer();
//     receipt.writeln("Here's your receipt.");
//     receipt.writeln();
//
//     //format the date to include up to seconds only
//     String formattedDate=
//     DateFormat("yyy-MM-HH:mm:ss").format(DateTime.now());
//
//     receipt.writeln(formattedDate);
//     receipt.writeln();
//     receipt.writeln("------------");
//
//     for( final cartItem in _cart){
//       receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
//       if(cartItem.selectedAddons.isNotEmpty){
//         receipt.writeln("Add-ons:${_formatAddons(cartItem.selectedAddons)}");
//       }
//       receipt.writeln();
//     }
//     receipt.writeln("----------");
//     receipt.writeln();
//     receipt.writeln("Total Items:${getTotalItemCount()}");
//     receipt.writeln("Total Price:${_formatPrice(getTotalPrice())}");
//
//    return receipt.toString();
//   }
//
// //format double value into money
// String _formatPrice(double price){
//   return "\$ ${price.toStringAsFixed(2)}";
// }
//
// //format list of addons into a string summary
// String _formatAddons(List<Addon>addons){
//   return addons.map((addon)=>"${addon.name}(${_formatAddons(addon.price as List<Addon>)})").join(",");
// }
//
// }
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // Format the date to include up to seconds only
    String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(
        DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(
              cartItem.food.price.toDouble())}"); // Cast to double
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(
        getTotalPrice().toDouble())}"); // Cast to double

    return receipt.toString();
  }

// Format double value into money
  String _formatPrice(double price) {
    return "\$ ${price.toStringAsFixed(2)}";
  }

// Format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(
        addon.price.toDouble())})") // Cast to double
        .join(", ");
  }
}