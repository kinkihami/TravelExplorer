import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_explorer/Screen/ScreenHome.dart';
import 'package:travel_explorer/Screen/ScreensignUp.dart';
import 'package:travel_explorer/contants.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

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
                Text('Login',
                    textAlign: TextAlign.left,
                    style:
                        inknut(size: 35, color: red, weight: FontWeight.bold)),
                height20,
                Text(
                  'Welcome back! Enter your login details.',
                  textAlign: TextAlign.left,
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
                      hintText: 'example@gmail.com',
                      hintStyle: jaldi(
                          size: 15, color: grey, weight: FontWeight.normal),
                      isCollapsed: true,
                      // isDense: true,
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
                      // isDense: true,
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
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'forgotten password?',
                      style: jaldi(
                          size: 10, color: grey, weight: FontWeight.normal),
                    ),
                  ),
                ),
                height20,
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
                      child: Text('Login',
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
                      "Doesn't have an account?",
                      style: jaldi(
                          size: 15, color: grey, weight: FontWeight.normal),
                    ),
                    width5,
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const ScreenSignUp())),
                      child: Text(
                        'Sign up',
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
