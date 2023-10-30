import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnErrorContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.65),
        fontSize: 12.fSize,
      );
  static get bodySmallOnErrorContainer10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
        fontSize: 10.fSize,
      );
  static get bodySmallOnErrorContainerLight =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOnErrorContainerLight10 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLarge13_1 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeGreen600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green600,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get labelLargeRed500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red500,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRed600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red600,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallMedium => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRed600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
        fontSize: 16.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMontserrat =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMontserratBlack900 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRed600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red600,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
