import 'package:flutter/material.dart';
import 'package:greatfood/components/my_button.dart';
import 'package:greatfood/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login(){
    /*
    fill out authentication here
    */
    //navigate to home page
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context)=> const HomePage(),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          //logo
          Icon(Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.tertiary),

          const SizedBox(height: 25),

          //message app slogan
          Text(
            "Gr8t Food Delivery",
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.tertiary),
          ),

          const SizedBox(height: 25),

          //email textfield
          MyTextField(
              controller: emailController,
              hintText: "Email",

              obscureText: false),

          const SizedBox(height: 10,),

          //password textfield
          MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
              //sign in bottom
               const SizedBox(height: 10,),

              MyButton(
                text: "Sign in",
                onTap: login,
              ),

              const SizedBox(height: 10,),


          //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                  style: TextStyle(
                  color:Theme.of(context).colorScheme.primary)),

                  const SizedBox(width: 5,),

                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text("Register now",style: TextStyle(
                        color:Theme.of(context).colorScheme.tertiary,fontWeight: FontWeight.bold)),
                  ),
                ],
              )

        ]),
      ),
    );
  }
}
