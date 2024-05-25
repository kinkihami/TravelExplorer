import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_explorer/Screen/ScreenHome.dart';
import 'package:travel_explorer/Screen/ScreenLogin.dart';
import 'package:travel_explorer/contants.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Sign Up',
                    textAlign: TextAlign.left,
                    style:
                        inknut(size: 35, color: red, weight: FontWeight.bold)),
                height20,
                Text(
                  'Hai! Enter your details to register\n an account.',
                  textAlign: TextAlign.center,
                  style:
                      jaldi(size: 15, color: grey, weight: FontWeight.normal),
                ),
                height20,
                height10,
                SizedBox(
                  height: 50,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'John Samuel',
                      hintStyle: jaldi(
                          size: 15, color: grey, weight: FontWeight.normal),
                      isCollapsed: true,
                      prefixIcon: const Icon(Icons.person_outline),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                height10,
                SizedBox(
                  height: 50,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: 'example@gmail.com',
                      hintStyle: jaldi(
                          size: 15, color: grey, weight: FontWeight.normal),
                      isCollapsed: true,
                      prefixIcon: const Icon(Icons.mail_outline),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                height10,
                SizedBox(
                  height: 50,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: '-----------',
                      hintStyle: jaldi(
                          size: 15, color: grey, weight: FontWeight.normal),
                      isCollapsed: true,
                      prefixIcon: const Icon(Icons.key_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                height10,
                SizedBox(
                  height: 50,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: '-----------',
                      hintStyle: jaldi(
                          size: 15, color: grey, weight: FontWeight.normal),
                      isCollapsed: true,
                      prefixIcon: const Icon(Icons.key_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                height10,
                height20,
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ScreenHome())),
                  child: Container(
                    // width: 330,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromRGBO(213, 0, 0, 1),
                    ),
                    child: Center(
                      child: Text('Sign Up',
                          style: inknut(
                              size: 20,
                              color: white,
                              weight: FontWeight.normal)),
                    ),
                  ),
                ),
                height20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: jaldi(
                          size: 15, color: grey, weight: FontWeight.normal),
                    ),
                    width5,
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (ctx) => const ScreenLogin())),
                      child: Text(
                        'Login',
                        style: jaldi(
                            size: 15, color: red, weight: FontWeight.normal),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
