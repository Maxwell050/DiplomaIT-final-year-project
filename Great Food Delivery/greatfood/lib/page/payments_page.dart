import 'package:flutter/material.dart';
//import 'package:flutter_braintree/flutter_braintree.dart';

import 'package:greatfood/components/my_button.dart';

import 'delivery_progress_page.dart'; // Changed to lowercase
class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // Braintree token (this should be generated on your server)
  final String tokenizationKey = 'tio';

  // User wants to pay
  void userTappedPay() async {
    if (formKey.currentState!.validate()) {

      showDialog(context: context,
          builder: (context)=>AlertDialog(
            title:  const Text("Confirm payment"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Card Number: $cardNumber"),
                  Text("Expiry Date: $expiryDate"),
                  Text("Card Holder name: $cardHolderName"),
                  Text("Cvv: $cvvCode"),
                ],
              ),
            ),
            actions: [
              //cancel button
              TextButton(
                onPressed: ()=>Navigator.pop(context),
                  child: Text("Cancel"),
              ),

              //yes button
              TextButton(onPressed: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>DeliveryProgressPage())
              ),
                child: Text("Yes"),
              ),

            ],
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.tertiary,
        title: const Text("Checkout"),
      ),
      body: Column(
        children: [
          // Credit card form fields (You can customize this or remove it if not needed)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Card Number'),
                    onChanged: (value) => setState(() => cardNumber = value),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Expiry Date'),
                    onChanged: (value) => setState(() => expiryDate = value),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'CVV'),
                    onChanged: (value) => setState(() => cvvCode = value),
                  ),
                  TextFormField(
                    decoration:
                    const InputDecoration(labelText: 'Card Holder Name'),
                    onChanged: (value) =>
                        setState(() => cardHolderName = value),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          // Pay now button
          MyButton(
            onTap: userTappedPay,
            text: "Pay Now",
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
