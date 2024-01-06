import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

import 'package:flutter/material.dart';

abstract class AppTheme {


  static TextStyle loginInfostyle = GoogleFonts.inter(
  textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,
  color:    AppColors.login_Info_Color)
  );

  static TextStyle loginLabelStyle = GoogleFonts.inter(
      textStyle: const TextStyle(fontSize: 12,
          fontWeight: FontWeight.w500,
          color:    AppColors.login_Label_Color)
  );

  static TextStyle smallDetails = GoogleFonts.inter(
      textStyle: const TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: AppColors.smallDetail,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color:    AppColors.smallDetail)
  );

  static TextStyle login_Elevated_Button = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color:   AppColors.white)
  );


  static TextStyle row_Small_Details = GoogleFonts.inter(
      textStyle: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color:    AppColors.black)
  );

  static TextStyle login_hint_Style = GoogleFonts.inter(
      textStyle: const TextStyle(fontSize: 14.69,
          fontWeight: FontWeight.w500,
          color:    AppColors.login_hint_Color)
  );

  static TextStyle memoryTitleStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 22,
          fontWeight: FontWeight.bold,
          color:    AppColors.memoryTitleColor)
  );

  static TextStyle memory_Sub_TitleStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 16,
          fontWeight: FontWeight.normal,
          color:    AppColors.memoryTitleColor)
  );

  static TextStyle memory_cancel_style = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 14,
          fontWeight: FontWeight.w600,
          color:    AppColors.smallDetail)
  );

  static TextStyle inputTextStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 12,
          fontWeight: FontWeight.w400,
          color:    AppColors.ligthGrey)
  );

  static TextStyle dropDownStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 20,
          fontWeight: FontWeight.w600,
          color:    AppColors.dropDownColor)
  );

  static TextStyle dollarStyle = GoogleFonts.inter(
      textStyle: const TextStyle(fontSize: 13,
          fontWeight: FontWeight.w700,
          color:    AppColors.subscribeColor)
  );


  static TextStyle helloStyle = GoogleFonts.inter(
      textStyle: const TextStyle(fontSize: 20,
          fontWeight: FontWeight.w600,
          color:    AppColors.smallDetail)
  );


  static TextStyle memoriesStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 16,
          fontWeight: FontWeight.w700,
          color:    AppColors.memory_button_color)
  );

  static TextStyle selectedItemStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 10,
          fontWeight: FontWeight.w600,
          color:    AppColors.login_Info_Color)
  );


  static TextStyle minutesStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 22,
          fontWeight: FontWeight.w300,
          color:    AppColors.subscribeColor)
  );

  static TextStyle languageStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 15,
          fontWeight: FontWeight.w400,
          color:    AppColors.login_Info_Color)
  );

  static TextStyle informStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(fontSize: 14,
          fontWeight: FontWeight.w500,
          color:    AppColors.informsColor)
  );












}