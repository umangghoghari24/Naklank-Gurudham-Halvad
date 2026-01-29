import 'package:calender/utils/responive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'color_constants.dart';

class Styles {
  // blackShadeColor

  static TextStyle blackShade16_14W600 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 14.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Sans");

  static TextStyle blackShade18_16W600 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: Responsive.isMobile(Get.context!) ? 18.sp : 16.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Sans");

  static TextStyle blackShade16_12W400 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "Sans");

  static TextStyle greenShade16_12W400 = TextStyle(
      color: ColorConstant.greenColor,
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "Sans");
  static TextStyle redShade16_12W400 = TextStyle(
      color: ColorConstant.redColor,
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "Sans");

  static TextStyle blackShade20W400 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "Sans");

  static TextStyle blackShade20_16W600 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: Responsive.isMobile(Get.context!) ? 20.sp : 16.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Sans");

  static TextStyle blackShade14W400 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "Sans");
  static TextStyle blackShade15W600 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Sans");
  static TextStyle blackShade14W600 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Sans");
  static TextStyle blackShade12W600 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Sans");

  static TextStyle blackShade24W600 = TextStyle(
      color: ColorConstant.blackShadeColor,
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Sans");

  // darkGreyColor

  static TextStyle darkGrey16W600 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      fontFamily: "Sans",
      color: ColorConstant.darkGreyColor);

  static TextStyle darkGrey13W400 = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "Sans",
      color: ColorConstant.darkGreyColor);

  static TextStyle darkGrey16W400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      fontFamily: "Sans",
      color: ColorConstant.darkGreyColor);

  // Consolidated dark grey styles
  static TextStyle darkGrey12W400 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sans',
      color: ColorConstant.darkGreyColor);

  static TextStyle darkGrey12W600 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Sans',
      color: ColorConstant.darkGreyColor);

  static TextStyle darkGrey14W300 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      fontFamily: 'Sans',
      color: ColorConstant.darkGreyColor);

  static TextStyle darkGrey14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sans',
      color: ColorConstant.darkGreyColor);
  static TextStyle darkGrey14W600 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Sans',
      color: ColorConstant.darkGreyColor);

  static TextStyle darkGrey14_12W600 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 14.sp : 12.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.darkGreyColor,
      fontFamily: 'Sans');

  // darkGrey1
  static TextStyle darkGrey1Size16W400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.darkGrey1,
      fontFamily: 'Sans');

  // darkGrey2
  static TextStyle darkGrey2Size14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.darkGrey2,
      fontFamily: 'Sans');

  static TextStyle darkGrey2Size16W400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.darkGrey2,
      fontFamily: 'Sans');

  // darkGrey3
  static TextStyle darkGrey3Size16W400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.darkGrey2,
      fontFamily: 'Sans');

  static TextStyle darkGrey3Size13W400 = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.darkGrey2,
      fontFamily: 'Sans');

  static TextStyle darkGreyColor14W600 = TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.darkGreyColor);

  // primaryColor4

  static TextStyle primaryColor4Size16W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor4Size16W400UnderLine = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.primaryColor4,
      fontSize: 16.sp,
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor4Size14W400UnderLine = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.primaryColor4,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor1);
  static TextStyle primaryColor4Size14W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      decorationColor: ColorConstant.primaryColor4,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor1);
  static TextStyle primaryColor4Size16W500 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
      color: ColorConstant.primaryColor1);
  static TextStyle greyColor4Size16W500 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      color: ColorConstant.grey);
  static TextStyle primaryColor4Size20W400UnderLine = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.primaryColor4,
      fontSize: 20.sp,
      color: ColorConstant.primaryColor1);

  // primaryColor1

  static TextStyle primaryColor18W500 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w500,
      fontSize: 18.sp,
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size14W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size12W600 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Sans',
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size12W400 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sans',
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size18_14W600 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 18.sp : 14.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Sans',
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size20W400 = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.primaryColor1,
      fontFamily: 'Sans');

  static TextStyle primaryColor1Size16_14W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 14.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sans',
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size16W400UnderLine = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sans',
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.primaryColor1,
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size16_12W600 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 12.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Sans',
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size16W600UnderLine = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Sans',
      decorationColor: ColorConstant.primaryColor1,
      decoration: TextDecoration.underline,
      color: ColorConstant.primaryColor1);

  /// greay dialog
  // moved to grey section below

  // primaryColor

  static TextStyle primaryColor16W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor16_14W400 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 14.sp,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor14W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor);

  static TextStyle accountPrimary14W400 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color: ColorConstant.greyDark);

  static TextStyle primaryColor314W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor3);

  static TextStyle primaryColor16W400 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      color: ColorConstant.primaryColor);
  static TextStyle primaryColor14W400 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor14W300 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w300,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor16W400UnderLine = TextStyle(
      fontFamily: 'Sans',
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      decorationColor: ColorConstant.primaryColor,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor14W400UnderLine = TextStyle(
      fontFamily: 'Sans',
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      decorationColor: ColorConstant.primaryColor,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor14W600UnderLine = TextStyle(
      fontFamily: 'Sans',
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      decorationColor: ColorConstant.primaryColor,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor1Size14W400 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor1Size14W400_UnderLine = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.primaryColor1,
      color: ColorConstant.primaryColor1);

  static TextStyle primaryColor16W600UnderLine = TextStyle(
      fontFamily: 'Sans',
      decorationColor: ColorConstant.primaryColor1,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor18W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 18.sp,
      color: ColorConstant.primaryColor);

  static TextStyle primaryColor16_12W600 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 12.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.primaryColor,
      fontFamily: 'Sans');

  // Black

  static TextStyle black12W400 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      fontFamily: 'Sans');
  static TextStyle black14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      fontFamily: 'Sans');
  static TextStyle black16W400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black12W600 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black20W600 = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black20W400 = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black24W600 = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black14_12W600 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 14.sp : 12.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black14W500 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black14_12W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 14.sp : 12.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black14W400_underline = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black14W600_underline = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black18W600 = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');
  static TextStyle black16W600 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');
  static TextStyle black14W600 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black18_14W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 18.sp : 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black11W600 = TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black16_14W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.black,
      fontFamily: 'Sans');
  static TextStyle black16_14W500 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 14.sp,
      fontWeight: FontWeight.w500,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  static TextStyle black16_12W600 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 12.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.black,
      fontFamily: 'Sans');

  // lightBlackShade

  static TextStyle lightBlack14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.lightBlackShade,
      fontFamily: 'Sans');
  static TextStyle lightBlack14W500 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: ColorConstant.lightBlackShade,
      fontFamily: 'Sans');

  static TextStyle lightBlack16_12W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 12.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.lightBlackShade,
      fontFamily: 'Sans');

  // white

  static TextStyle white14W600 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Sans',
      color: Colors.white);

  static TextStyle white12W400 = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sans',
      color: Colors.white);

  static TextStyle white14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Sans',
      color: Colors.white);

  static TextStyle white14W400_underline = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.whiteColor,
      fontFamily: 'Sans',
      color: Colors.white);

  static TextStyle white18_14W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 18.sp : 14.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.whiteColor);

  static TextStyle white20_14W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 20.sp : 14.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.whiteColor);

  static TextStyle white16W600 = TextStyle(
      fontSize: 16.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      color: ColorConstant.whiteColor);

  static TextStyle white16W400 = TextStyle(
      fontSize: 16.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.whiteColor);

  static TextStyle white18W600 = TextStyle(
      fontSize: 18.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      color: ColorConstant.whiteColor);

  // abColor

  static TextStyle abColor14W400 = TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.abColor);

  static TextStyle abColor16W400 = TextStyle(
      fontSize: 16.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.abColor);

  static TextStyle abColor20W400 = TextStyle(
      fontSize: 20.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.abColor);

  // grey

  static TextStyle grey12W400 = TextStyle(
      fontSize: 12.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.grey);
  static TextStyle grey12_it_W400 = TextStyle(
      fontSize: 12.sp,
      fontFamily: 'Sans',
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
      color: ColorConstant.grey);

  static TextStyle grey14W400 = TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.grey);

  static TextStyle grey14W400Underline = TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Sans',
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.grey,
      fontWeight: FontWeight.w400,
      color: ColorConstant.grey);

  static TextStyle grey16_14W400 = TextStyle(
      fontSize: Responsive.isMobile(Get.context!) ? 16.sp : 14.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.grey);

  static TextStyle grey20W400 = TextStyle(
      fontSize: 20.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w400,
      color: ColorConstant.grey);

  static TextStyle grey14W600 = TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      color: ColorConstant.grey);
  static TextStyle greyDialog14W600 = TextStyle(
      fontFamily: 'Sans',
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      color: ColorConstant.greyDialog);

  // blue

  static TextStyle blue14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.blueColor,
      fontFamily: 'Sans');

  static TextStyle blue16W600 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.blueColor,
      fontFamily: 'Sans');

  static TextStyle blue14W600 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.blueColor,
      fontFamily: 'Sans');
  static TextStyle orange0214W600 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.orangeColor,
      fontFamily: 'Sans');
  static TextStyle darkOrange0214W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.darkOrange,
      fontFamily: 'Sans');
  static TextStyle blue0214W600 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.blueColor.withOpacity(0.2),
      fontFamily: 'Sans');

  static TextStyle blue14W400Underline = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.blueColor,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.blueColor,
      fontFamily: 'Sans');

  static TextStyle blue14W600Underline = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.blueColor,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.blueColor,
      fontFamily: 'Sans');

  // red

  static TextStyle red14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.redColor,
      fontFamily: 'Sans');

  static TextStyle red14W400UnderLine = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.redColor,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.redColor,
      fontFamily: 'Sans');

  static TextStyle red16W400UnderLine = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
      decorationColor: ColorConstant.redColor,
      color: ColorConstant.redColor,
      fontFamily: 'Sans');

  static TextStyle red16W600 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.redColor,
      fontFamily: 'Sans');

  static TextStyle red16W400 = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.redColor,
      fontFamily: 'Sans');

  // green

  static TextStyle green14W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.greenColor,
      fontFamily: 'Sans');

  static TextStyle green16W400 = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ColorConstant.greenColor,
      fontFamily: 'Sans');

  static TextStyle green14W400Underline = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: ColorConstant.greenColor,
      decorationColor: ColorConstant.greenColor,
      decoration: TextDecoration.underline,
      fontFamily: 'Sans');
}
