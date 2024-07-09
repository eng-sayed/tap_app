import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/light_theme.dart';
import '../../core/extensions/all_extensions.dart';
import 'dimansion_manager.dart';
import 'font_manager.dart';

// class TextStylesManager {
//   const TextStylesManager._();
//
//   static TextStyle gessRegular = const TextStyle(fontFamily: 'GESS', fontWeight: FontWeight.w400);
//   static TextStyle gessMedium = const TextStyle(fontFamily: 'GESS', fontWeight: FontWeight.w500);
//   static TextStyle gessSemiBold = const TextStyle(fontFamily: 'GESS', fontWeight: FontWeight.w600);
//   static TextStyle gessBold = const TextStyle(fontFamily: 'GESS', fontWeight: FontWeight.w700);
//   static TextStyle aristaRegular = const TextStyle(fontFamily: 'arista', fontWeight: FontWeight.w400);
//   static TextStyle aristaMedium = const TextStyle(fontFamily: 'arista', fontWeight: FontWeight.w500);
//   static TextStyle aristaSemiBold = const TextStyle(fontFamily: 'arista', fontWeight: FontWeight.w600);
//   static TextStyle aristaBold = const TextStyle(fontFamily: 'arista', fontWeight: FontWeight.w700);
// }
class TextStylesManager {
  const TextStylesManager._();

  //arabic text font
  static TextStyle arabicRegular = GoogleFonts.readexPro(fontWeight: FontWeightManager.regular);
  static TextStyle arabicMedium = GoogleFonts.readexPro(fontWeight: FontWeightManager.medium);
  static TextStyle arabicSemiBold = GoogleFonts.readexPro(fontWeight: FontWeightManager.semiBold);
  static TextStyle arabicBold = GoogleFonts.readexPro(fontWeight: FontWeightManager.bold);

  // english text font Neue Haas Grotesk Display Pro
  static TextStyle englishRegular = GoogleFonts.poppins(fontWeight: FontWeightManager.regular);
  static TextStyle englishMedium = GoogleFonts.poppins(fontWeight: FontWeightManager.medium);
  static TextStyle englishSemiBold = GoogleFonts.poppins(fontWeight: FontWeightManager.semiBold);
  static TextStyle englishBold = GoogleFonts.poppins(fontWeight: FontWeightManager.bold);
}


class ShadowStyles {
  const ShadowStyles._();

  static List<BoxShadow> bottomSheetShadow = [
    BoxShadow(
      color: LightThemeColors.shadowBottomSheet,
      blurRadius: 32,
      offset: const Offset(4, 10),
      spreadRadius: 0,
    )
  ];

  static List<BoxShadow> cardShadow = [
    const BoxShadow(
      color: LightThemeColors.shadow,
      blurRadius: 8,
      offset: Offset(0, 1),
      spreadRadius: 0,
    )
  ];
}

class GradientStyles {
  const GradientStyles._();

  static LinearGradient primaryGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: LightThemeColors.gradientPrimary,
  );
}

class InputDecorations {
  const InputDecorations._();

  static InputDecoration filled({
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isPassword = false,
    bool obscuredValue = true,
    bool smallSuffixIcon = false,
    Color fillColor = LightThemeColors.background,
    required ValueNotifier<bool> obscure,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hint,
      fillColor: fillColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s16),
      hintStyle: TextStylesManager.englishRegular,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: BorderSide.none,
      ),
      prefixIconConstraints: smallSuffixIcon ? const BoxConstraints(maxWidth: .15) : null,
      suffixIconConstraints: smallSuffixIcon ? const BoxConstraints(maxWidth: .15) : null,
      prefixIcon: prefixIcon,
      suffixIcon: isPassword
          ? obscuredValue
              ? Icon(
                  Icons.visibility_outlined,
                  color: LightThemeColors.textHint,
                ).onTap(() => obscure.value = !obscuredValue)
              : Icon(
                  Icons.visibility_off_outlined,
                  color: LightThemeColors.textHint,
                ).onTap(() => obscure.value = !obscuredValue)
          : suffixIcon,
    );
  }

  static InputDecoration outlined({
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isPassword = false,
    bool obscuredValue = true,
    bool smallSuffixIcon = false,
    required ValueNotifier<bool> obscure,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hint,
      fillColor: LightThemeColors.background,
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s16),
      hintStyle: TextStylesManager.englishMedium,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: BorderSide(color: LightThemeColors.inputFieldBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: const BorderSide(color: LightThemeColors.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: BorderSide(color: LightThemeColors.inputFieldBorder),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: const BorderSide(color: LightThemeColors.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.inputBorderRadius),
        borderSide: const BorderSide(color: LightThemeColors.error),
      ),
      prefixIconConstraints: smallSuffixIcon ? const BoxConstraints(maxWidth: .15) : null,
      suffixIconConstraints: smallSuffixIcon ? const BoxConstraints(maxWidth: .15) : null,
      prefixIcon: prefixIcon,
      suffixIcon: isPassword
          ? obscuredValue
              ? Icon(
                  Icons.visibility_outlined,
                  color: LightThemeColors.textHint,
                ).onTap(() => obscure.value = !obscuredValue)
              : Icon(
                  Icons.visibility_off_outlined,
                  color: LightThemeColors.textHint,
                ).onTap(() => obscure.value = !obscuredValue)
          : suffixIcon,
    );
  }

  static InputDecoration underlined({
    String? hint,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isPassword = false,
    bool obscuredValue = true,
    bool smallSuffixIcon = false,
    Color fillColor = LightThemeColors.background,
    required ValueNotifier<bool> obscure,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hint,
      fillColor: fillColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s16),
      hintStyle: TextStylesManager.englishMedium,
      border: UnderlineInputBorder(borderSide: BorderSide(color: LightThemeColors.inputFieldBorder)),
      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: LightThemeColors.primary)),
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: LightThemeColors.inputFieldBorder)),
      errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: LightThemeColors.error)),
      focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: LightThemeColors.error)),
      prefixIconConstraints: smallSuffixIcon ? const BoxConstraints(maxWidth: .15) : null,
      suffixIconConstraints: smallSuffixIcon ? const BoxConstraints(maxWidth: .15) : null,
      prefixIcon: prefixIcon,
      suffixIcon: isPassword
          ? obscuredValue
              ? Icon(
                  Icons.visibility_outlined,
                  color: LightThemeColors.textHint,
                ).onTap(() => obscure.value = !obscuredValue)
              : Icon(
                  Icons.visibility_off_outlined,
                  color: LightThemeColors.textHint,
                ).onTap(() => obscure.value = !obscuredValue)
          : suffixIcon,
    );
  }
}
