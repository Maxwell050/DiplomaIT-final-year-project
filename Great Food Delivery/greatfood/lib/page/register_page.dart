import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


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
                "Let's create an account for you",
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

              MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true),
              //sign in bottom
              const SizedBox(height: 10,),

              MyButton(
                text: "Sign Up",
                onTap: (){

                },
              ),

              const SizedBox(height: 25,),

              //already have an account? Login here
              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("already have an account?",
                      style: TextStyle(
                          color:Theme.of(context).colorScheme.primary)),

                  const SizedBox(width: 5,),

                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text("Login now",style: TextStyle(
                        color:Theme.of(context).colorScheme.tertiary,fontWeight: FontWeight.bold)),
                  ),
                ],
              )

            ]),
      ),
    );
  }
}
