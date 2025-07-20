import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'const.dart';

mixin AppTheme {

  //default font family
  // static const String fontFamilyRoboto = 'Roboto';
  static const String fontFamilyCairo = 'Cairo';
  static const String fontFamilyUrbanist = 'Urbanist';


  //theme colors
  static const Color primaryGreen = Color(0xFF00713c);
  static const Color primaryGreenLight = Color(0xFF6cbf91);
  static const Color primaryGrey = Color(0xFFd8d9da);
  static const Color primaryDarkGrey = Color(0xFF222222);

  static const Color bpBlack = Color(0xFF000000);
  static const Color bpWhite = Color(0xFFFFFFFF);
  static const Color lightBackground = Color(0xFFF3F3F3);
  static const Color bpContainerGrey = Color(0xFFE3E3E3);
  static const Color bpGrey = Color(0xFFD1D1D1);
  static const Color bpLightGrey = Color(0xFFB5B4B4);
  static const Color bpDarkGrey = Color(0xFF6A6868);
  static const Color bpDark = Color(0xFF121212);
  static const Color bpBlue = Color(0xFF3498DB);
  static const Color bpRed = Color(0xFFF44336);
  static const Color bpGreen = Color(0xFF01d003);
  static const Color bpLightRed = Color(0x40F44336);
  static const Color bpLightBlue = Color(0x403498DB);
  static const Color bpContainerPurple = Color(0xFFD7D4FC);
  static const Color bpIconColor = Color(0xFF707070);
  static const Color bpPurple = Color(0xFF845bef);
  static const Color bpDropDownIcon = Color(0XFF383838);
  static const Color bpDarkContainer = Color(0XFF333333);
  static const Color bpReadNotification = Color(0X33333333);
  static const Color bpDarkDivider = Color(0XFF444444);
  static const Color bpDarkIcon = Color(0XFFE0E0E0);
  static const Color bpDarkBG = Color(0XFF1f2630);
  static const Color bpEbonyClay = Color(0XFF28313c);
  static const Color bpSliderLight = Color(0X1A9E9E9E);
  static const Color bpBorderLight =Color(0xFF6A6D80);
  static const Color bpFAGrey = Color(0XFFFAFAFA);
  static const Color bpDarkShimmer = Color(0xFF272F39);
  static const Color bpLightShimmer =  Color(0xFFF5F5F5);
  static const Color bpNewDarkContainer= Color(0xFF242F3D);
  static const Color bpShareBlue= Color(0xFF0079FB);
  static const Color bpNotificationNum = Color.fromARGB(255, 5, 46, 80);
  static const Color greenLight = Color(0x2634C759);
  static const Color redLight = Color(0x26FF3B30);
  static const Color sliderSegment = Color(0xFFF0F0F0);
  static const Color greyText = Color(0xFF5D5D5D);
  static const Color greyBorder = Color(0xFFE4E4E4);
  static const Color tradeRed = Color(0xFFFF7D73);
  static const Color tradeBlue = Color(0xFF63B4F5);





  //Leader Panel
  static const Color bpLightPurple = Color(0X669506FE);
  //static const Color bpLightBlue = Color(0X669AD4FF);
  static const Color bpLightGreen = Color(0X669AD499);


// Light theme data
  static ThemeData lightThemeRoboto = ThemeData(
    useMaterial3: false,
    canvasColor: bpWhite,
    fontFamily: fontFamilyUrbanist,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    //color scheme
    primarySwatch: Colors.amber,
    primaryColor: primaryGreen,
    primaryColorLight: bpDarkGrey,
    primaryColorDark: bpBlack,
    secondaryHeaderColor: bpDarkGrey,
    // highlightColor: bpDarkGrey,
    hintColor: bpDarkGrey,
    indicatorColor: primaryGreen,
    // splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: bpWhite,
    dividerColor: bpGrey,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryGreen
    ),
    cardColor: bpWhite,
    colorScheme: const ColorScheme.light(
        error: bpRed,
        primary: bpWhite,
        onPrimary: bpBlack,
        surface: bpWhite,
        onSurface: bpBlack,
        onSurfaceVariant: bpBlack,
        primaryContainer: bpWhite,
        inverseSurface: bpDarkGrey
    ),

    //Text
    textTheme: const TextTheme(
      displayLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: bpBlack,
      ),
      displayMedium:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: bpBlack,
      ),
      displaySmall:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: bpBlack,
      ),
      headlineLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: bpBlack,
      ),
      headlineMedium:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: bpBlack,
      ),
      headlineSmall:
      TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: bpBlack,
      ),
      titleLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: bpBlack,
      ),
      titleMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        color: bpBlack,
      ),
      titleSmall:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: bpBlack,
      ),
      labelLarge:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: bpBlack,
      ),
      labelMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: bpBlack,
      ),
      labelSmall:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
        color: bpBlack,
      ),
      bodyLarge:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: bpBlack,
      ),
      bodyMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: bpDarkGrey,
      ),
      bodySmall:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: bpBlack,
      ),

    ),

    //ElevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: bpBlack,
        ),
        foregroundColor: bpBlack,
        backgroundColor: primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
        ),
      ),
    ),

    // Input Decoration Theme for TextFormField
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: AppTheme.bpSliderLight,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color: AppTheme.bpBlack,
      ),
      hintStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 24,
        color: AppTheme.bpDarkGrey,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 0.5,
          color: AppTheme.bpRed,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 1,
          color: AppTheme.bpRed,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      suffixIconColor: AppTheme.bpRed,
    ),


    //DropDown style
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        isDense: false,
        hintStyle: const TextStyle(
            color:  bpDarkGrey,
            fontSize: 14,
            fontWeight: FontWeight.bold

        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
          borderSide: const BorderSide(
            width: 1,
            color: bpRed,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      textStyle:  const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold
      ),
    ),

    //Text button style
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: bpDarkGrey,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          // Set the color from your theme
        ),
      ),
    ),

    // Alert Dialog
    dialogTheme:const DialogTheme(
      backgroundColor: bpWhite,
    ),

    //Modal Bottom Sheet
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: bpWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    ),

    //Icon style
    iconTheme: const IconThemeData(
      color: bpEbonyClay,
    ),

    //Text cursor style
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryGreen,
        selectionColor: primaryGreen,
        selectionHandleColor: primaryGreen// Set the cursor color here
    ),


  );

  ThemeData lightThemeCairo = ThemeData(
    useMaterial3: false,
    canvasColor: bpWhite,
    fontFamily: fontFamilyCairo,
    brightness: Brightness.light,

    //color scheme
    primarySwatch: Colors.amber,
    primaryColor: primaryGreen,
    primaryColorLight: bpDarkGrey,
    primaryColorDark: bpBlack,
    secondaryHeaderColor: bpDarkGrey,
    highlightColor: bpDarkGrey,
    hintColor: bpDarkGrey,
    indicatorColor: primaryGreen,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: bpWhite,
    dividerColor: bpGrey,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryGreen
    ),
    cardColor:  bpWhite,
    colorScheme: const ColorScheme.light(
        error: bpRed,
        primary: bpWhite,
        onPrimary: bpBlack,
        surface: bpWhite,
        onSurface: bpBlack,
        onSurfaceVariant: bpBlack,
        primaryContainer: bpWhite,
        inverseSurface: bpDarkGrey
    ),

    //Text
    textTheme: const TextTheme(
      displayLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: bpBlack,
      ),
      displayMedium:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: bpBlack,
      ),
      displaySmall:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: bpBlack,
      ),
      headlineLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: bpBlack,
      ),
      headlineMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        color: bpBlack,
      ),
      headlineSmall:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: bpBlack,
      ),
      titleLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: bpBlack,
      ),
      titleMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        color: bpBlack,
      ),
      titleSmall:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: bpBlack,
      ),
      labelLarge:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: bpBlack,
      ),
      labelMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: bpBlack,
      ),
      labelSmall:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
        color: bpBlack,
      ),
      bodyLarge:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: bpBlack,
      ),
      bodyMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: bpDarkGrey,
      ),
      bodySmall:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: bpBlack,
      ),

    ),

    //ElevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: bpBlack,
        ),
        foregroundColor: bpBlack,
        backgroundColor: primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
        ),
      ),
    ),

    // Input Decoration Theme for TextFormField
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppTheme.bpSliderLight,

      isDense: true,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: AppTheme.bpBlack,
      ),
      hintStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: AppTheme.bpDarkGrey,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: AppTheme.primaryGreen,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: AppTheme.primaryGreen,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: AppTheme.bpRed,
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: AppTheme.bpRed,
        ),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.0,
          color: AppTheme.bpGrey,
        ),
      ),
      suffixIconColor: AppTheme.bpRed,
    ),

    //DropDown style
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        isDense: false,
        hintStyle: const TextStyle(
            color:  bpDarkGrey,
            fontSize: 14,
            fontWeight: FontWeight.bold

        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(
            width: 1.5,
            color: AppTheme.primaryGreen,
          ),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
          borderSide: const BorderSide(
            width: 1,
            color: bpGrey,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
          borderSide: const BorderSide(
            width: 1,
            color: bpRed,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
          borderSide: const BorderSide(
            width: 1,
            color: bpRed,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
          borderSide: const BorderSide(
            width: 1,
            color: primaryGreen,
          ),
        ),
      ),
      textStyle:  const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold
      ),
    ),

    // Alert Dialog
    dialogTheme:const DialogTheme(
      backgroundColor: bpWhite,
    ),

    //Modal Bottom Sheet
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: bpWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    ),

    //Text button style
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: bpDarkGrey,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          // Set the color from your theme
        ),
      ),
    ),

    //Icon style
    iconTheme: const IconThemeData(
      color: bpEbonyClay,
    ),

    //Text cursor style
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryGreen,
        selectionColor: primaryGreen,
        selectionHandleColor: primaryGreen// Set the cursor color here
    ),
  );

//dark theme data
  ThemeData darkThemeRoboto = ThemeData(
    bottomAppBarTheme:const BottomAppBarTheme(
      color: bpDarkBG,
    ) ,
    useMaterial3: false,
    canvasColor: bpDarkGrey,
    fontFamily: fontFamilyUrbanist,
    brightness: Brightness.dark,

    //color scheme
    primarySwatch: Colors.amber,
    primaryColor: primaryGreen,
    primaryColorLight: bpGrey,
    primaryColorDark: bpGrey,
    secondaryHeaderColor: bpDarkGrey,
    highlightColor: bpDarkGrey,
    hintColor: bpGrey,
    indicatorColor: primaryGreen,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: bpDarkBG,
    dividerColor: bpEbonyClay,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryGreen
    ),
    cardColor: bpEbonyClay,
    colorScheme: const ColorScheme.dark(
        error: bpRed,
        primary: bpBlack,
        onPrimary: bpWhite,
        surface: bpDark,
        onSurface: bpWhite,
        onSurfaceVariant: bpDarkGrey,
        primaryContainer: bpDarkBG,
        inverseSurface: bpDarkIcon
    ),

    //Text
    textTheme: const TextTheme(
      displayLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      displayMedium:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      displaySmall:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      headlineLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headlineMedium:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headlineSmall:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      titleLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      titleMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
      titleSmall:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
      labelLarge:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
      labelMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      labelSmall:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
      ),
      bodyLarge:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
      bodyMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: bpDarkGrey,
      ),
      bodySmall:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),

    ),

    //ElevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: bpBlack,
        ),
        foregroundColor: bpBlack,
        backgroundColor: primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),

    // Input Decoration Theme for TextFormField
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: AppTheme.bpBlack,
      ),
      hintStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: AppTheme.bpDarkGrey,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: AppTheme.primaryGreen,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: AppTheme.primaryGreen,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: AppTheme.bpRed,
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: AppTheme.bpRed,
        ),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.0,
          color: AppTheme.bpGrey,
        ),
      ),
      suffixIconColor: AppTheme.bpRed,
    ),

    //DropDown style
    dropdownMenuTheme: const DropdownMenuThemeData(
      menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(bpGrey)
      ),
      inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          hintStyle: TextStyle(
              color:  bpDarkGrey,
              fontSize: 14,
              fontWeight: FontWeight.bold

          ),
          fillColor: bpDarkBG
      ),
      textStyle:  TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: bpBlack,
      ),

    ),

    // Alert Dialog
    dialogTheme:const DialogTheme(
      backgroundColor: bpDarkBG,
    ),

    //Modal Bottom Sheet
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: bpDarkBG,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    ),

    //Text button style
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: bpDarkGrey,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          // Set the color from your theme
        ),
      ),
    ),

    //Icon style
    iconTheme: const IconThemeData(
        color:  bpWhite
    ),

    //Text cursor style
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryGreen,
        selectionColor: primaryGreen,
        selectionHandleColor: primaryGreen// Set the cursor color here
    ),

  );

  ThemeData darkThemeCairo = ThemeData(
    bottomAppBarTheme:const BottomAppBarTheme(
      color: bpDarkBG,
    ) ,
    useMaterial3: false,
    canvasColor: bpDarkGrey,
    fontFamily: fontFamilyCairo,
    brightness: Brightness.dark,

    //color scheme
    primarySwatch: Colors.amber,
    primaryColor: primaryGreen,
    primaryColorLight: bpGrey,
    primaryColorDark: bpGrey,
    secondaryHeaderColor: bpDarkGrey,
    highlightColor: bpDarkGrey,
    hintColor: bpGrey,
    indicatorColor: primaryGreen,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: bpDarkBG,
    dividerColor: bpEbonyClay,
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: primaryGreen),
    cardColor: bpEbonyClay,
    colorScheme: const ColorScheme.dark(
        error: bpRed,
        primary: bpBlack,
        onPrimary: bpWhite,
        surface: bpDark,
        onSurface: bpWhite,
        onSurfaceVariant: bpDarkGrey,
        primaryContainer: bpDarkBG,
        inverseSurface: bpDarkIcon
    ),

    //Text
    textTheme: const TextTheme(
      //Title
      displayLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
      //subTitle
      displayMedium:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      // Section subtitle or muted title
      displaySmall:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
      // Page title in detail view
      headlineLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      // Subsection heading or intermediate-level label
      headlineMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 20,
      ),
      //Label beside dropdowns, filters, or input fields
      headlineSmall:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      //Card title, popup header
      titleLarge:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      //Form title or small section
      titleMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
      // Caption or summary title
      titleSmall:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
      //Button label, tag, pill title
      labelLarge:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
      //Caption or icon-label
      labelMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      //Very small UI labels
      labelSmall:
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
      ),
      //Paragraphs, long-form content
      bodyLarge:
      TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 18,

      ),
      //Standard UI content, body copy
      bodyMedium:
      TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        color: bpDarkGrey,
      ),
      // Footnotes, small helper text, tooltips
      bodySmall:
      TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),

    ),

    //ElevatedButton theme
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: bpBlack,
        ),
        foregroundColor: bpBlack,
        backgroundColor: primaryGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),

    // Input Decoration Theme for TextFormField
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: AppTheme.bpBlack,
      ),
      hintStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: AppTheme.bpDarkGrey,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: AppTheme.primaryGreen,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: AppTheme.primaryGreen,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: AppTheme.bpRed,
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: AppTheme.bpRed,
        ),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1.0,
          color: AppTheme.bpGrey,
        ),
      ),
      suffixIconColor: AppTheme.bpRed,
    ),

    //DropDown style
    dropdownMenuTheme: const DropdownMenuThemeData(
      menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(bpGrey)
      ),
      inputDecorationTheme: InputDecorationTheme(
          isDense: false,
          hintStyle: TextStyle(
              color:  bpDarkGrey,
              fontSize: 14,
              fontWeight: FontWeight.bold

          ),
          fillColor: bpDarkBG
      ),
      textStyle:  TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: bpBlack,
      ),

    ),

    // Alert Dialog
    dialogTheme:const DialogTheme(
      backgroundColor: bpDarkBG,
    ),

    //Modal Bottom Sheet
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: bpDarkBG,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    ),

    //Text button style
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: bpDarkGrey,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          // Set the color from your theme
        ),
      ),
    ),

    //Icon style
    iconTheme: const IconThemeData(
        color:  bpWhite
    ),

    //Text cursor style
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryGreen,
        selectionColor: primaryGreen,
        selectionHandleColor: primaryGreen// Set the cursor color here
    ),

  );

}

extension CustomThemeColors on ThemeData {
  Color get bpPortfolioContainer => brightness == Brightness.dark ?  AppTheme.bpDarkContainer :  AppTheme.bpContainerPurple;
  Color get bpPortfolioText => brightness == Brightness.dark ?  AppTheme.bpWhite :  AppTheme.bpDarkGrey;
  Color get bpDivider => brightness == Brightness.dark ?  AppTheme.bpDarkDivider :  AppTheme.bpGrey;
  Color get bpBorder => brightness == Brightness.dark ?  AppTheme.bpBorderLight :  AppTheme.bpGrey;
  Color get bpSlider => brightness == Brightness.dark ?  AppTheme.bpEbonyClay :  AppTheme.sliderSegment;
  Color get bpIconFill => brightness == Brightness.dark ?  AppTheme.bpDarkIcon :  AppTheme.bpBlack;
  Color get bpIconChild => brightness == Brightness.dark ?  AppTheme.bpBlack :  AppTheme.bpWhite;
  Color get bpDrawer => brightness == Brightness.dark ?  AppTheme.bpDarkBG :  AppTheme.sliderSegment;
  Color get bpDarkText => brightness == Brightness.dark ?  AppTheme.bpDarkIcon :  AppTheme.bpBlack;
  Color get bpLeaderBox => brightness == Brightness.dark ?  AppTheme.bpDarkContainer :  AppTheme.bpGrey;
  Color get bpBurgerMenu => brightness == Brightness.dark ?  AppTheme.bpWhite :  AppTheme.bpBlack;
  Color get bpCard => brightness == Brightness.dark ?  AppTheme.bpDarkBG :  AppTheme.bpGrey.withValues(alpha: 0.1);
  Color get bpSection => brightness == Brightness.dark ?  AppTheme.bpDarkContainer :  AppTheme.bpContainerGrey;
  Color get bpBox => brightness == Brightness.dark ?  AppTheme.bpWhite :  AppTheme.bpDarkGrey;
  Color get bpHintDark => brightness == Brightness.dark ?  AppTheme.bpDarkIcon :  AppTheme.bpDarkGrey;
  Color get bpRead => brightness == Brightness.dark ?  AppTheme.bpReadNotification :  AppTheme.bpWhite;
  Color get bpNotRead => brightness == Brightness.dark ?  AppTheme.bpDarkContainer :  AppTheme.bpGrey;
  Color get bpBrokerCard => brightness == Brightness.dark ?  AppTheme.bpNewDarkContainer :  AppTheme.bpFAGrey;
  Color get bpContainer => brightness == Brightness.dark ?  AppTheme.bpGrey :  AppTheme.bpDarkContainer;
  Color get bpButton => brightness == Brightness.dark ?  AppTheme.bpWhite :  AppTheme.bpBlack;
  Color get bpTitles => brightness == Brightness.dark ?  AppTheme.bpWhite :  AppTheme.bpDarkGrey;
  Color get bpTransparentContainer => brightness == Brightness.dark ?  AppTheme.bpDarkBG :  AppTheme.bpWhite;
  Color get bpShimmerBaseColor => brightness == Brightness.dark ?  AppTheme.bpDarkBG :  AppTheme.bpDarkIcon;
  Color get bpShimmerHighlightColor => brightness == Brightness.dark ?  AppTheme.bpDarkShimmer:  AppTheme.bpLightShimmer;
  Color get bpDropDownMenuColor => brightness == Brightness.dark ?  AppTheme.bpEbonyClay:  AppTheme.bpWhite;
  Color get bpDisabled => brightness == Brightness.dark ?  AppTheme.bpBorderLight :  AppTheme.bpGrey;
  Color get bpIcon => brightness == Brightness.dark ?  AppTheme.bpGrey :  AppTheme.bpIconColor;
  Color get bpToastMessage => brightness == Brightness.dark ?  AppTheme.bpEbonyClay :  AppTheme.bpContainerGrey;

}



