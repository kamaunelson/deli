import 'package:deli/components/my_button.dart';
import 'package:deli/components/my_textfield.dart';
import 'package:deli/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  final void Function() onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // text editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() {
   /* print(emailController.text);
    print(passwordController.text);*/
    
    // once authenticated navigate to landing page
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),
    ),
    );
  }

  @override
  /// Builds the widget tree for this [BuildContext].
  ///
  /// The [BuildContext] parameter [context] is used to obtain the current build
  /// context. The function returns a [Widget] that represents the built UI.
  ///
  /// The UI consists of a [Scaffold] widget with a background color obtained from
  /// the current [Theme]. The [Scaffold]'s body is a [Center] widget containing
  /// a [Column] widget. The [Column] contains several child widgets:
  ///
  /// - An [Icon] widget displaying an "lock_open_rounded" icon with a size of
  ///   100 and a color obtained from the current [Theme].
  /// - A [SizedBox] widget with a height of 25 pixels.
  /// - A [Text] widget displaying the text "Food Delivery" with a font size of
  ///   16 and a color obtained from the current [Theme].
  /// - A [SizedBox] widget with a height of 25 pixels.
  /// - An instance of a custom [MyTextField] widget that takes an [emailController]
  ///   and displays the hint text "Email".
  /// - A [SizedBox] widget with a height of 25 pixels.
  /// - An instance of a custom [MyTextField] widget that takes a [passwordController]
  ///   and displays the hint text "Password".
  /// - A custom [MyButton] widget that displays the text "Login" and calls the
  ///   [print] function with the values of [emailController] and [passwordController]
  ///   when tapped.
  /// - A [Row] widget with [MainAxisAlignment.center] alignment. The row contains
  ///   two [Text] widgets: "Not a member?" and "Register". The "Register" text
  ///   has a bold font weight.
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
            "Food Delivery", 
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

          //login button
          MyButton(
            text: "Login",
            onTap: () {
              //print(emailController.text);
              //print(passwordController.text);
              login();
            },
          ),

          const SizedBox(height: 25),

          //not a member? register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(color :Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Register", 
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
