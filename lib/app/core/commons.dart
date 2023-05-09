import 'package:flutter/material.dart';

class Commons {
  static const lightThemeLightShadowColor = Color(0xffCECECE);
  static const baseRadius = 12.0;
  static const baseMargin = 8.0;
  static const smallBaseRadius = 8.0;
  static const bigBaseRadius = 16.0;
  static const baseIconSize = 24.0;
  static const arrowDownButtonHeight = 25.0;
  static const buttonHeight = 50.0;
  static const buttonShortHeight = 40.0;
  static BorderRadius borderRadius = BorderRadius.circular(baseRadius);
  static BorderRadius smallBorderRadius =
  BorderRadius.circular(smallBaseRadius);
  static BorderRadius bigBorderRadius = BorderRadius.circular(bigBaseRadius);

  static BoxShadow shadow() {
    return const BoxShadow(
      blurRadius: 10,
      color: lightThemeLightShadowColor,
      offset: Offset(0, 4),
    );
  }
}

const baseMargin = 8.0;

//* Horizontal Spacing
const Widget horizontalSpaceTiny = SizedBox(width: baseMargin / 2);
const Widget horizontalSpaceSmall = SizedBox(width: baseMargin);
const Widget horizontalSpaceRegular = SizedBox(width: baseMargin * 2);
const Widget horizontalSpaceMedium = SizedBox(width: baseMargin * 3);
const Widget horizontalSpaceLarge = SizedBox(width: baseMargin * 4);
const Widget bundleHorizontalSpacing = SizedBox(width: baseMargin * 1.5);

//* Vertical Spacing
const Widget verticalSpaceTiny = SizedBox(height: baseMargin / 2);
const Widget verticalSpaceSmall = SizedBox(height: baseMargin);
const Widget verticalSpaceRegular = SizedBox(height: baseMargin * 2);
const Widget verticalSpaceMedium = SizedBox(height: baseMargin * 4);
const Widget verticalSpaceLarge = SizedBox(height: baseMargin * 8);
const Widget verticalSpaceExtraLarge = SizedBox(height: baseMargin * 10);
const Widget verticalLargeSpace = SizedBox(height: baseMargin * 15);
const Widget bundleVerticalSpacing = SizedBox(height: baseMargin * 1.5);




