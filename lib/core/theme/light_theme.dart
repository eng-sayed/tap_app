import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_app/core/extensions/all_extensions.dart';

import '../resources/font_manager.dart';
import '../resources/text_style_manager.dart';
import '../utils/utils.dart';
import 'theme_manager.dart';

class LightThemeColors {
  const LightThemeColors._();

  // Primary Colors
  static const Color primary = Color(0xFF8445DF);

  // Secondary Colors
  static const Color secondary = Color(0xFFA7A7A7);
  static const Color onSecondary = Color(0xFF130442);

//   // Surface Colors
  static const Color primaryContainer = Color(0xFFFFFFFF);

//
  // Background Color
  static const Color scaffoldBackground = onSecondary;
  static const Color bottomSheetBackground = Colors.white;
  static const Color dialogBackground = Colors.white;
  static const Color background = Colors.white;
  static const Color buttonBackground = primary;
  static const Color textFieldBackground = primary;
  static const Color appBarBackground = background;
  static const Color bottomNavigationBarBackground = primary;
  static Color barrierBackground = background.withOpacity(0.53);
  static const secondaryText = Color(0xFF616161);

  // Surface Colors
  static const Color surface = Color(0xFF1E251F);
  static Color surfaceSecondary = const Color(0xFF3C3C3C).withOpacity(0.61);
  static Color surfaceSuccess = const Color(0xFF32E444).withOpacity(0.35);
  static Color surfaceError = LightThemeColors.error.withOpacity(0.35);

  // Text Colors
  // static const Color primaryText = Colors.white;
  // Text Colors
  static const Color textPrimaryBlack = Color(0xFF423D68);
  static const Color textPrimarySecond = Color(0xFF130442);
  static const Color textSecondaryGrey = Color(0xFF746E87);
  static const Color textPrimaryThirdBlack = Color(0xFF2A2A2A);

  static const Color textSecondaryGreyWithOpacity = Color(0xFFA0A0A0);
  static const Color textHint = Color(0xFF8A8C95);
  static const Color textGradientColor = Color(0xFF136576);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color redTextColor = Color(0xFFEE6B8D);
  static const Color redActiveTextColor = Color(0xFFFF2D55);
  static const Color greenTextColor = Color(0xFF5BDA8C);
  static const Color yellowTextColor = Color(0xFFE39600);
  static const Color textPrimary = Color(0xFF24223E);
  static const Color textSecondary = Color(0xFF8A8C95);
  // Text Colors
  static const _primaryValue = 0xFF000000;
  static MaterialColor primaryText = MaterialColor(
    _primaryValue,
    <int, Color>{
      10: const Color(_primaryValue).withOpacity(0.1),
      20: const Color(_primaryValue).withOpacity(0.2),
      30: const Color(_primaryValue).withOpacity(0.3),
      40: const Color(_primaryValue).withOpacity(0.4),
      50: const Color(_primaryValue).withOpacity(0.5),
      60: const Color(_primaryValue).withOpacity(0.6),
      70: const Color(_primaryValue).withOpacity(0.7),
      80: const Color(_primaryValue).withOpacity(0.8),
      90: const Color(_primaryValue).withOpacity(0.9),
      100: const Color(_primaryValue),
    },
  );

  // Validation Colors:
  static const Color error = Color(0xFFFF697D);
  static const Color success = Color(0xFF32E444);
  static const Color warning = Color(0xFFE39600);

  // Icons Colors
  static Color unselectedIcon = primaryText[70]!;
  static Color selectedIcon = primary;

  // button Colors
  static const Color buttonColor = Color(0xFF613A96);

  // Icons Colors

  // border Colors
  static const Color border = Color(0xFFA7A7A7);
  static Color inputFieldBorder = primaryText[20]!;
  static const Color borderVariant = Color(0x26A7A7A7);

  // gradient
  static const List<Color> gradientPrimary = [
    Color(0xFF262A2E),
    Color(0xFF131313)
  ];
  // shadow
  static const Color shadow = Color(0x07FFFFFF);
  static const Color shadowVariant = Color(0x0AFFFFFF);
  static Color shadowBottomSheet = Colors.black.withOpacity(0.5);

  // gradient
  static List<Color> gradient = [
    Colors.white,
    // Colors.white.withOpacity(0.5),
    Colors.white.withOpacity(0),
  ];
  static const onPrimaryValue = 0xFFFFFFFF;
  static MaterialColor onPrimary = MaterialColor(
    onPrimaryValue,
    <int, Color>{
      10: const Color(onPrimaryValue).withOpacity(0.1),
      20: const Color(onPrimaryValue).withOpacity(0.2),
      30: const Color(onPrimaryValue).withOpacity(0.3),
      40: const Color(onPrimaryValue).withOpacity(0.4),
      50: const Color(onPrimaryValue).withOpacity(0.5),
      60: const Color(onPrimaryValue).withOpacity(0.6),
      70: const Color(onPrimaryValue).withOpacity(0.7),
      80: const Color(onPrimaryValue).withOpacity(0.8),
      90: const Color(onPrimaryValue).withOpacity(0.9),
      100: const Color(onPrimaryValue),
    },
  );
}

class LightTheme {
  static ThemeData getTheme(BuildContext context) {
    // AppThemeManager.setStatusBarAndNavigationBarColors(ThemeMode.light);.
    final textRegular = context.isArabic
        ? TextStylesManager.arabicRegular
        : TextStylesManager.englishRegular;
    final textMedium = context.isArabic
        ? TextStylesManager.arabicMedium
        : TextStylesManager.englishMedium;
    final textSemiBold = context.isArabic
        ? TextStylesManager.arabicSemiBold
        : TextStylesManager.englishSemiBold;
    final textBold = context.isArabic
        ? TextStylesManager.arabicBold
        : TextStylesManager.englishBold;
    return ThemeData(
      //* Light Theme
      scaffoldBackgroundColor: LightThemeColors.scaffoldBackground,
      useMaterial3: true,
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: Utils.lang == "en" ? "arista" : "GESS",
      cardColor: LightThemeColors.primary,
      //* Card Theme *//

      //* Color Scheme
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF8445DF),
        onPrimary: Color(0xFF00D1FF),
        primaryContainer: Color(0xFFFFFFFF),
        onPrimaryContainer: Color(0xFF410002),
        secondary: Color(0xFF0000FF),
        onSecondary: Color(0xFF130442),
        secondaryContainer: Color(0xFFCFE5FF),
        onSecondaryContainer: Color(0xFF001D34),
        tertiary: Color(0xFF24223E),
        onTertiary: Color(0xFF24223E),
        tertiaryContainer: Color(0xFFFFDAD6),
        onTertiaryContainer: Color(0xFF410002),
        error: LightThemeColors.error,
        errorContainer: Color(0xFFFFDAD6),
        onError: Color(0xFFFFFFFF),
        onErrorContainer: Color(0xFF410002),
        background: Color(0xFFF8FDFF),
        onBackground: Color(0xFF001F25),
        surface: Color(0xFFFFFFFF),
        // surface: Color(0x05FFFFFF),
        onSurface: Color(0xFF001F25),
        surfaceVariant: Color(0xFFF5DDDA),
        onSurfaceVariant: Color(0xFF534341),
        outline: Color(0xFF857371),
        onInverseSurface: Color(0xFFD6F6FF),
        inverseSurface: Color(0xFF00363F),
        inversePrimary: Color(0xFFFFB4AB),
        shadow: Color(0xFF000000),
        // app bar color on scroll
        surfaceTint: Color(0xFFFFFFFF),
        outlineVariant: Color(0xFFD8C2BF),
        scrim: Color(0xFF000000),
      ),

      //* App Bar Theme
      // appBarTheme: AppBarTheme(
      //   elevation: 0,
      //   centerTitle: false,
      //   scrolledUnderElevation: 0,
      //   backgroundColor: LightThemeColors.background,
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      //   titleTextStyle:
      //       TextStylesManager.gessMedium.copyWith(fontSize: FontSize.s14, color: LightThemeColors.textPrimary),
      //   iconTheme: IconThemeData(color: LightThemeColors.primaryText),
      // ),
      // appBarTheme: AppBarTheme(
      //   backgroundColor: LightThemeColors.scaffoldBackground,
      //   // color: DarkThemeColors.background,
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      //   foregroundColor: LightThemeColors.scaffoldBackground,
      //   elevation: 0,
      //   scrolledUnderElevation: 0,
      //   centerTitle: true,
      //   titleTextStyle: Utils.lang == "en"
      //       ? TextStylesManager.aristaBold.copyWith(
      //           color: LightThemeColors.textPrimary,
      //           fontSize: 16,
      //           fontWeight: FontWeight.w500)
      //       : TextStylesManager.gessBold.copyWith(
      //           color: LightThemeColors.textPrimary,
      //           fontSize: 16,
      //           fontWeight: FontWeight.w500),
      //   iconTheme: const IconThemeData(color: LightThemeColors.textPrimary),
      //   actionsIconTheme:
      //       const IconThemeData(color: LightThemeColors.textPrimary),
      // ),

      // //* Text Theme
      textTheme: TextTheme(
        displayLarge: textBold.copyWith(
            color: LightThemeColors.textPrimaryBlack,
            fontSize: FontSizeManager.s24),
        displayMedium: textBold.copyWith(
            color: LightThemeColors.textSecondaryGrey,
            fontSize: FontSizeManager.s20),
        displaySmall: textBold.copyWith(
            color: LightThemeColors.textPrimaryBlack,
            fontSize: FontSizeManager.s18),

        // Header
        headlineLarge: textSemiBold.copyWith(
            color: LightThemeColors.textPrimaryBlack,
            fontSize: FontSizeManager.s16),
        headlineMedium: textSemiBold.copyWith(
            color: LightThemeColors.textPrimarySecond,
            fontSize: FontSizeManager.s16),
        headlineSmall: textSemiBold.copyWith(
            color: LightThemeColors.textPrimaryThirdBlack,
            fontSize: FontSizeManager.s14),

        // Title
        titleLarge: textMedium.copyWith(
            color: LightThemeColors.textPrimaryBlack,
            fontSize: FontSizeManager.s24),
        titleMedium: textMedium.copyWith(
            color: LightThemeColors.textSecondaryGreyWithOpacity,
            fontSize: FontSizeManager.s20),
        titleSmall: textMedium.copyWith(
            color: LightThemeColors.textPrimaryThirdBlack,
            fontSize: FontSizeManager.s18),

        // Body Text
        bodyLarge: textRegular.copyWith(
            color: LightThemeColors.textPrimaryBlack,
            fontSize: FontSizeManager.s18),
        bodyMedium: textRegular.copyWith(
            color: LightThemeColors.textSecondaryGreyWithOpacity,
            fontSize: FontSizeManager.s16),
        bodySmall: textRegular.copyWith(
            color: LightThemeColors.textPrimaryThirdBlack,
            fontSize: FontSizeManager.s12),

        // Subtitle
        labelLarge: textRegular.copyWith(
            color: LightThemeColors.greenTextColor,
            fontSize: FontSizeManager.s16),
        labelMedium: textRegular.copyWith(
            color: LightThemeColors.textSecondaryGreyWithOpacity,
            fontSize: FontSizeManager.s16),
        labelSmall: textRegular.copyWith(
            color: LightThemeColors.redTextColor,
            fontSize: FontSizeManager.s16),
      ),

      // //*  bottomNavigationBarTheme        //*  bottomNavigationBarTheme
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //   elevation: 0,
      //   type: BottomNavigationBarType.fixed,
      //   selectedLabelStyle: TextStylesManager.cairo.regular.s10
      //       .setColor(LightThemeColors.selectedIcon),
      //   unselectedLabelStyle: TextStylesManager.cairo.regular.s10
      //       .setColor(LightThemeColors.unselectedIcon),
      //   backgroundColor: LightThemeColors.background,
      //   selectedItemColor: LightThemeColors.selectedIcon,
      //   unselectedItemColor: LightThemeColors.unselectedIcon,
      // ),

      //* Bottom Sheet Theme
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: LightThemeColors.bottomSheetBackground,
        elevation: 0,
      ),

      //* Tab Bar Theme
      // tabBarTheme: TabBarTheme(
      //   indicatorSize: TabBarIndicatorSize.tab,
      //   indicator: BoxDecoration(
      //     color: LightThemeColors.primary,
      //     borderRadius: BorderRadius.circular(AppSize.mainRadius),
      //   ),
      //   indicatorColor: Colors.transparent,
      //   dividerColor: Colors.transparent,
      //   labelColor: LightThemeColors.onPrimary,
      //   unselectedLabelColor: LightThemeColors.primaryText,
      //   labelStyle: TextStylesManager.cairo.s16,
      //   unselectedLabelStyle: TextStylesManager.cairo.s16,
      // ),

      //* ElevatedButtonThemeData
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: AppThemeManager.elevatedButtonStyleTheme(
          buttonColor: LightThemeColors.primary,
          textColor: LightThemeColors.onPrimary,
        ),
      ),

      //* TextButtonThemeData
      textButtonTheme: const TextButtonThemeData(),

      //* dividerTheme
      dividerTheme: DividerThemeData(
        thickness: 1,
        color: LightThemeColors.inputFieldBorder,
      ),

      expansionTileTheme: ExpansionTileThemeData(
        iconColor: LightThemeColors.primaryText,
        textColor: LightThemeColors.primaryText,
      ),

      //* Input Decoration Theme
      // inputDecorationTheme: InputDecorationTheme(
      //   contentPadding: const EdgeInsets.symmetric(
      //       horizontal: AppSize.s16, vertical: AppSize.s16),
      //   hintStyle: TextStylesManager.cairo.regular.s16.ellipsis
      //       .setColor(LightThemeColors.hintText),
      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
      //     borderSide: BorderSide(color: LightThemeColors.inputFieldBorder),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
      //     borderSide: BorderSide.none,
      //   ),
      //   enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
      //     borderSide: BorderSide.none,
      //   ),
      //   errorBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
      //     borderSide: BorderSide.none,
      //   ),
      //   focusedErrorBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
      //     borderSide: BorderSide.none,
      //   ),
      //   filled: true,
      //   fillColor: LightThemeColors.primaryContainer,
      // ),
    );
  }
}
