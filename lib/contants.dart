import 'package:flutter/material.dart';

Color red = const Color.fromRGBO(213, 0, 0, 1);
Color white = Colors.white;
Color black = Colors.black;
Color grey = const Color.fromRGBO(0, 0, 0, 0.5);
// TextStyle redInknut = TextStyle(
//     color: red,
//     fontFamily: 'Inknut Antiqua',
//     fontSize: 35,
//     letterSpacing: 1 /*percentages not used in flutter. defaulting to zero*/,
//     fontWeight: FontWeight.bold,
//     height: 1);

TextStyle inknut(
    {required double size, required Color color, required FontWeight weight}) {
  return TextStyle(
      color: color,
      fontFamily: 'Inknut Antiqua',
      fontSize: size,
      letterSpacing: 1 /*percentages not used in flutter. defaulting to zero*/,
      fontWeight: weight,
      height: 1);
}

TextStyle inknutoverflow(
    {required double size, required Color color, required FontWeight weight}) {
  return TextStyle(
      color: color,
      fontFamily: 'Inknut Antiqua',
      fontSize: size,
      letterSpacing: 1 /*percentages not used in flutter. defaulting to zero*/,
      fontWeight: weight,
      height: 1,
      overflow: TextOverflow.ellipsis);
}

TextStyle inknutspacing(
    {required double size,
    required Color color,
    required FontWeight weight,
    required double spacing}) {
  return TextStyle(
      color: color,
      fontFamily: 'Inknut Antiqua',
      fontSize: size,
      letterSpacing:
          spacing /*percentages not used in flutter. defaulting to zero*/,
      fontWeight: weight,
      height: 1);
}

TextStyle jaldi(
    {required double size, required Color color, required FontWeight weight}) {
  return TextStyle(
      color: color,
      fontFamily: 'Jaldi',
      fontSize: size,
      letterSpacing: 1 /*percentages not used in flutter. defaulting to zero*/,
      fontWeight: weight,
      height: 1);
}

TextStyle whiteItaliana = TextStyle(
    color: white,
    fontFamily: 'Jaldi',
    fontSize: 35,
    letterSpacing: 1 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1);
// TextStyle grey15Jaldi = TextStyle(
//   color: grey,
//   fontFamily: 'Jaldi',
//   fontSize: 15,
//   letterSpacing: 2,
//   fontWeight: FontWeight.normal,
//   height: 1,
// );
// TextStyle grey10Jaldi = TextStyle(
//   color: grey,
//   fontFamily: 'Jaldi',
//   fontSize: 10,
//   letterSpacing: 2 /*percentages not used in flutter. defaulting to zero*/,
//   fontWeight: FontWeight.normal,
//   height: 1,
// );
// TextStyle red12Jaldi = TextStyle(
//   color: red,
//   fontFamily: 'Jaldi',
//   fontSize: 12,
//   letterSpacing: 2 /*percentages not used in flutter. defaulting to zero*/,
//   fontWeight: FontWeight.w600,
//   height: 1,
// );
// TextStyle grey12Jaldi = TextStyle(
//   color: grey,
//   fontFamily: 'Jaldi',
//   fontSize: 12,
//   letterSpacing: 2 /*percentages not used in flutter. defaulting to zero*/,
//   fontWeight: FontWeight.normal,
//   height: 1,
// );
// TextStyle whiteInknut = TextStyle(
//   color: white,
//   fontFamily: 'Inknut Antiqua',
//   fontSize: 20,
//   letterSpacing: 2 /*percentages not used in flutter. defaulting to zero*/,
//   fontWeight: FontWeight.w600,
//   height: 1,
// );

SizedBox height10 = const SizedBox(
  height: 10,
);
SizedBox height20 = const SizedBox(
  height: 20,
);
SizedBox width5 = const SizedBox(
  width: 5,
);
SizedBox width10 = const SizedBox(
  width: 10,
);
