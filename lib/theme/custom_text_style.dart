import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack90016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeRed400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red400,
      );
  static get bodyLargeYuGothicUI =>
      theme.textTheme.bodyLarge!.yuGothicUI.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeYuGothicUIBlack900 =>
      theme.textTheme.bodyLarge!.yuGothicUI.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeYuGothicUIGray900 =>
      theme.textTheme.bodyLarge!.yuGothicUI.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeYuGothicUIOnError =>
      theme.textTheme.bodyLarge!.yuGothicUI.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 16.fSize,
      );
  static get bodyLargeYuGothicUIOnSecondaryContainer =>
      theme.textTheme.bodyLarge!.yuGothicUI.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyMediumBentonSansBoldPrimary =>
      theme.textTheme.bodyMedium!.bentonSansBold.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBentonSansMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.bentonSansMedium.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumBentonSansRegular =>
      theme.textTheme.bodyMedium!.bentonSansRegular;
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumYeonSung => theme.textTheme.bodyMedium!.yeonSung;
  static get bodyMediumYeonSungAmber500 =>
      theme.textTheme.bodyMedium!.yeonSung.copyWith(
        color: appTheme.amber500,
      );
  static get bodyMediumYeonSungBlack900 =>
      theme.textTheme.bodyMedium!.yeonSung.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumYeonSungErrorContainer =>
      theme.textTheme.bodyMedium!.yeonSung.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumYeonSungOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.yeonSung.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumYuGothicUIAmber500 =>
      theme.textTheme.bodyMedium!.yuGothicUI.copyWith(
        color: appTheme.amber500,
      );
  static get bodyMediumYuGothicUIAmber500_1 =>
      theme.textTheme.bodyMedium!.yuGothicUI.copyWith(
        color: appTheme.amber500,
      );
  static get bodyMediumYuGothicUIBlack900 =>
      theme.textTheme.bodyMedium!.yuGothicUI.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumYuGothicUIBlack90015 =>
      theme.textTheme.bodyMedium!.yuGothicUI.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumYuGothicUIBlack900_1 =>
      theme.textTheme.bodyMedium!.yuGothicUI.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumYuGothicUIOnError =>
      theme.textTheme.bodyMedium!.yuGothicUI.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 15.fSize,
      );
  static get bodyMediumYuGothicUIOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.yuGothicUI.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodySmallAmber500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.amber500,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallYeonSungAmber500 =>
      theme.textTheme.bodySmall!.yeonSung.copyWith(
        color: appTheme.amber500,
      );
  static get bodySmallYeonSungOnError =>
      theme.textTheme.bodySmall!.yeonSung.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodySmallYeonSungRed400 =>
      theme.textTheme.bodySmall!.yeonSung.copyWith(
        color: appTheme.red400,
        fontSize: 10.fSize,
      );
  static get bodySmallYeonSungff09051c =>
      theme.textTheme.bodySmall!.yeonSung.copyWith(
        color: Color(0XFF09051C),
        fontSize: 10.fSize,
      );
  static get bodySmallYuGothicUIAmber500 =>
      theme.textTheme.bodySmall!.yuGothicUI.copyWith(
        color: appTheme.amber500,
      );
  static get bodySmallYuGothicUIAmber50010 =>
      theme.textTheme.bodySmall!.yuGothicUI.copyWith(
        color: appTheme.amber500,
        fontSize: 10.fSize,
      );
  static get bodySmallYuGothicUIOnPrimaryContainer =>
      theme.textTheme.bodySmall!.yuGothicUI.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallYuGothicUIfffbbc05 =>
      theme.textTheme.bodySmall!.yuGothicUI.copyWith(
        color: Color(0XFFFBBC05),
        fontSize: 10.fSize,
      );
  // Display text style
  static get displayMediumOnPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get displaySmallYuGothicUI => theme.textTheme.displaySmall!.yuGothicUI;
  // Headline style
  static get headlineLargeYesteryear =>
      theme.textTheme.headlineLarge!.yesteryear;
  static get headlineLarge_1 => theme.textTheme.headlineLarge!;
  static get headlineSmall25 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 25.fSize,
      );
  static get headlineSmallAmber500 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.amber500,
      );
  static get headlineSmallYeonSung => theme.textTheme.headlineSmall!.yeonSung;
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelMediumAmber500 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.amber500,
      );
  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Lato text style
  static get latoOnError => TextStyle(
        color: theme.colorScheme.onError,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).lato;
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeAmber500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.amber500,
      );
  static get titleLargeDeeporange900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepOrange900,
      );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleLargeLatoAmber500 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.amber500,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLatoAmber50022 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.amber500,
        fontSize: 22.fSize,
      );
  static get titleLargeLatoAmber800 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.amber800,
        fontSize: 22.fSize,
      );
  static get titleLargeLatoBlack90001 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLatoErrorContainer =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 22.fSize,
      );
  static get titleLargeLatoYellow800 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.yellow800,
        fontSize: 22.fSize,
      );
  static get titleLargeLatoYellow800Bold =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleLargeYellow800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow800,
      );
  static get titleLargeYeonSung => theme.textTheme.titleLarge!.yeonSung;
  static get titleLargeYeonSungOnError =>
      theme.textTheme.titleLarge!.yeonSung.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleLargeYeonSungOnPrimaryContainer =>
      theme.textTheme.titleLarge!.yeonSung.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeYeonSungYellow800 =>
      theme.textTheme.titleLarge!.yeonSung.copyWith(
        color: appTheme.yellow800,
      );
  static get titleLargeYeonSungff000000 =>
      theme.textTheme.titleLarge!.yeonSung.copyWith(
        color: Color(0XFF000000),
      );
  static get titleLargeYeonSungff09051c =>
      theme.textTheme.titleLarge!.yeonSung.copyWith(
        color: Color(0XFF09051C),
      );
  static get titleLargefffbbc05 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFFBBC05),
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallLatoAmber500 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.amber500,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoBlack900 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get bentonSansRegular {
    return copyWith(
      fontFamily: 'BentonSans Regular',
    );
  }

  TextStyle get bentonSansMedium {
    return copyWith(
      fontFamily: 'BentonSans Medium',
    );
  }

  TextStyle get yesteryear {
    return copyWith(
      fontFamily: 'Yesteryear',
    );
  }

  TextStyle get yeonSung {
    return copyWith(
      fontFamily: 'Yeon Sung',
    );
  }

  TextStyle get yuGothicUI {
    return copyWith(
      fontFamily: 'Yu Gothic UI',
    );
  }

  TextStyle get bentonSansBold {
    return copyWith(
      fontFamily: 'BentonSans Bold',
    );
  }
}
