import 'package:flutter/material.dart';
import 'package:travel_explorer/core/utils/size_utils.dart';
import 'package:travel_explorer/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!
      .copyWith(color: Color(0XFF000000), overflow: TextOverflow.ellipsis);
  static get bodySmallJaldiBlack900 =>
      theme.textTheme.bodySmall!.jaldi.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get boldSmallJaldiBlack900 =>
      theme.textTheme.bodySmall!.jaldi.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.bold,
      );
  static get bodySmallLaila => theme.textTheme.bodySmall!.laila.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallLailaBlack900 =>
      theme.textTheme.bodySmall!.laila.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  // Jaldi text style
  static get jaldiBlack900 => TextStyle(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).jaldi;
  // Label text style
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get labelMediumff000000 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumff000000_1 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF000000),
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeffd50000 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFD50000),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallImbueWhiteA700 =>
      theme.textTheme.titleSmall!.imbue.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w900,
      );
}

extension on TextStyle {
  TextStyle get laila {
    return copyWith(
      fontFamily: 'Laila',
    );
  }

  TextStyle get jaldi {
    return copyWith(
      fontFamily: 'Jaldi',
    );
  }

  TextStyle get inknutAntiqua {
    return copyWith(
      fontFamily: 'Inknut Antiqua',
    );
  }

  TextStyle get imbue {
    return copyWith(
      fontFamily: 'Imbue',
    );
  }
}
