import 'package:flutter/material.dart';
import 'package:flutter_myinsta/pages/home_page.dart';
import 'package:flutter_myinsta/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static const String id="sigin_page";

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  var emailController = TextEditingController();
  var passwordController= TextEditingController();


  // Opens the Sign Up Page --> function
  _callSignUpPage(){
    Navigator.pushReplacementNamed(context, SignUpPage.id);
  }


  // Opens the Home Page --> function
  _callHomePage(){
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(252,175, 69, 1),
                Color.fromRGBO(245,96, 64, 1),
              ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "Instagram",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontFamily: "Billabong"
                    ),
                  ),

                  const SizedBox(height: 20,),

                  //#Email
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                        helperStyle:
                        TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),

                  //#Password
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white54.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        helperStyle:
                        TextStyle(fontSize: 17, color: Colors.white54),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),

                  //#Sign In
                  GestureDetector(
                    onTap: (){
                      _callHomePage();
                    },
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white54.withOpacity(0.2),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: _callSignUpPage,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}
