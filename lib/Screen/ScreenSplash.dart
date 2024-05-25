import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_explorer/Screen/ScreenLogin.dart';
import 'package:travel_explorer/contants.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    load();
    super.initState();
  }

  load() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => const ScreenLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/Desktopwallpaperbeautifulplacesforandroidtouristplace1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: 393,
          height: 852,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.699999988079071),
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Make a\n\nMake a',
                  style: whiteItaliana,
                ),
                width5,
                Text(
                  'Trip,\n\nLaugh!',
                  style: inknut(size: 35, color: red, weight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
