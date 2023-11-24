import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumPoppinsBlack900 =>
      theme.textTheme.displayMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get displayMediumPoppinsGray90002 =>
      theme.textTheme.displayMedium!.poppins.copyWith(
        color: appTheme.gray90002,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w600,
      );
  // Headline text style
  static get headlineLargePoppinsBlack900 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePoppinsBlack900Regular =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePoppinsBlack900SemiBold =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargePoppinsBlack900SemiBold_1 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargePoppinsGreen900 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.green900,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargePoppinsGreen900Regular =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.green900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular_1 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRobotoCondensedPrimary =>
      theme.textTheme.headlineSmall!.robotoCondensed.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  // Poppins text style
  static get poppinsTeal900 => TextStyle(
        color: appTheme.teal900,
        fontSize: 75.fSize,
        fontWeight: FontWeight.w700,
      ).poppins;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack900Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get titleLargeBlack900_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get titleLargeBlue900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue900,
      );
  static get titleLargeGray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleLargeOnErrorContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get robotoCondensed {
    return copyWith(
      fontFamily: 'Roboto Condensed',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
