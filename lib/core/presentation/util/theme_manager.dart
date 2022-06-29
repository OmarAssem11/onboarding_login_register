import 'package:flutter/material.dart';
import 'package:onboarding_login_register/core/presentation/util/color_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/font_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/styles_manager.dart';
import 'package:onboarding_login_register/core/presentation/util/values_manager.dart';

//Light theme
ThemeData getLightTheme() => ThemeData(
      colorSchemeSeed: ColorManager.primary,
      //AppBar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        titleTextStyle: getRegularTextStyle(
          fontSize: FontSizeManager.s16,
          color: ColorManager.white,
        ),
      ),
      //Text
      textTheme: TextTheme(
        titleLarge: getBoldTextStyle(
          color: ColorManager.black,
          fontSize: FontSizeManager.s26,
        ),
        bodyLarge: getSemiBoldTextStyle(
          color: ColorManager.darkGrey,
          fontSize: FontSizeManager.s16,
        ),
        bodyMedium: getSemiBoldTextStyle(
          color: ColorManager.grey,
          fontSize: FontSizeManager.s16,
        ),
        bodySmall: getRegularTextStyle(
          color: ColorManager.grey,
        ),
      ),
      //InputDecoration
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(Insets.i8),
        hintStyle: getRegularTextStyle(
          color: ColorManager.grey,
          fontSize: FontSizeManager.s14,
        ),
        labelStyle: getMediumTextStyle(
          color: ColorManager.grey,
          fontSize: FontSizeManager.s14,
        ),
        errorStyle: getRegularTextStyle(
          color: ColorManager.error,
          fontSize: FontSizeManager.s14,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.grey,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.error,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSize.s1_5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),
      ),
    );
