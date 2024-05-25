import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:travel_explorer/Screen/ScreenHome.dart';
// import 'package:travel_explorer/Screen/ScreenLogin.dart';
import 'package:travel_explorer/Screen/ScreenSplash.dart';
import 'package:travel_explorer/core/utils/size_utils.dart';
import 'package:travel_explorer/theme/theme_helper.dart';
// import 'package:travel_explorer/Screen/ScreenSplash.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        title: 'Travel Explorer',
        home: const ScreenSplash(),
      );
    });
  }
}
