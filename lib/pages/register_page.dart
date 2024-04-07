import 'package:deli/components/my_button.dart';
import 'package:deli/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          //message, app slogan
          Text(
            "Great !! Let's create an account", 
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            ),

          const SizedBox(height: 25),

          //email textfield
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 25),

          //password textfield
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),

          const SizedBox(height: 25),

          //confirm password textfield
          MyTextField(
            controller: passwordController,
            hintText: "Confirm Password",
            obscureText: true,
          ),

          const SizedBox(height: 25),

          //register button
          MyButton(
            text: "Register",
            onTap: () {
              print(emailController.text);
              print(passwordController.text);
              print(confirmPasswordController.text);
            },
          ),

          const SizedBox(height: 25),

          //have an account? login
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I have an account?",
                style: TextStyle(color :Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap:() => widget.onTap,
                child: Text("Login", 
                style: TextStyle(fontWeight: FontWeight.bold, color :Theme.of(context).colorScheme.inversePrimary),),
              )
            ],
          ),
        ], 
        )
      ),
    );
  }
}