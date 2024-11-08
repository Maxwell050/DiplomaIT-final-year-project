import 'package:flutter/material.dart';
import 'package:greatfood/components/my_button.dart';
import 'package:greatfood/components/my_cart_tile.dart';
import 'package:greatfood/models/restaurant.dart';
import 'package:greatfood/page/payments_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context,restaurant,child){
    //cart
      final userCart= restaurant.cart;

      //scaffold UI

      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.tertiary,
          actions: [
            //clear cart button
            IconButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context)=>AlertDialog(
                        title: Text("Do you really want to clear the cart?"),
                        actions: [
                          //cancel button
                          TextButton(onPressed: ()=>Navigator.pop(context),
                              child:const Text("Cancel")
                          ),

                          //yes
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                              child:const Text("Yes")
                          ),
                        ],
                      ));
                },
                icon: const Icon(Icons.delete)
            ),
          ],
        ),
        body: Column(
          children: [

            //list of cart
            Expanded(
              child: Column(
                children: [
                 userCart.isEmpty?
                const Expanded(
                     child: Center(
                         child:  Text("No Food Selected..."),
                     ),
                 )
                     :Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                          itemBuilder: (context,index){

                          //get individual cart item
                            final cartItem=userCart[index];


                            //return cart UI
                            return MyCartTile(cartItem: cartItem);



                          return ListTile(
                              title: Text(cartItem.food.name),
                          );
                          }
                    ),
                  ),
                ],
              ),
            ),
            //button to pay
            MyButton(
                onTap:()=>Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>const PaymentsPage() )
                ),
                text:"Go to checkout"),
            const SizedBox(height: 25,)
          ],
        ),
      );
    });
  }
}
