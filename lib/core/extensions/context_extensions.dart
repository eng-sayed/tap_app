import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

double tabletBreakpointGlobal = 600.0;
double desktopBreakpointGlobal = 720.0;

// Context Extensions
extension ContextExtensions on BuildContext {
  /// return screen size
  Size get size => MediaQuery.of(this).size;

  /// return screen width
  double get width => MediaQuery.of(this).size.width;

  /// return screen height
  double get height => MediaQuery.of(this).size.height;

  /// return screen devicePixelRatio
  double get pixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// returns brightness
  Brightness platformBrightness() => MediaQuery.of(this).platformBrightness;

  /// Return the height of status bar
  double get statusBarHeight => MediaQuery.of(this).padding.top;

  /// Return the height of navigation bar
  double get navigationBarHeight => MediaQuery.of(this).padding.bottom;

  /// Returns DefaultTextStyle.of(context)
  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  /// Returns Form.of(context)
  FormState? get formState => Form.of(this);

  /// Returns Scaffold.of(context)
  ScaffoldState get scaffoldState => Scaffold.of(this);

  /// Returns Overlay.of(context)
  OverlayState? get overlayState => Overlay.of(this);

  /// Request focus to given FocusNode
  void requestFocus(FocusNode focus) {
    FocusScope.of(this).requestFocus(focus);
  }

  /// Request focus to given FocusNode
  void unFocus(FocusNode focus) => focus.unfocus();

  /// Return the height of status bar
  bool get isArabic => locale == const Locale('ar', 'EG');

  bool isPhone() => MediaQuery.of(this).size.width < tabletBreakpointGlobal;

  bool isTablet() =>
      MediaQuery.of(this).size.width < desktopBreakpointGlobal &&
      MediaQuery.of(this).size.width >= tabletBreakpointGlobal;

  bool isDesktop() => MediaQuery.of(this).size.width >= desktopBreakpointGlobal;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isLandscape => orientation == Orientation.landscape;

  bool get isPortrait => orientation == Orientation.portrait;

  TargetPlatform get platform => Theme.of(this).platform;

  bool get isAndroid => platform == TargetPlatform.android;

  bool get isIOS => platform == TargetPlatform.iOS;

  void openDrawer() => Scaffold.of(this).openDrawer();

  void openEndDrawer() => Scaffold.of(this).openEndDrawer();
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  // ColorScheme
  ColorScheme get colorScheme => theme.colorScheme;
  Color get primaryColor => theme.colorScheme.primary;
  Color get primaryFontColor => theme.colorScheme.primary;
  Color get background => theme.colorScheme.background;
  Color get secondaryColor => theme.colorScheme.secondary;

  /// Purple Lilac/Purple
  Color get purpleLilac1 => theme.colorScheme.primary;
  Color get purpleLilac2 => const Color(0xff955EE1);
  Color get purpleLilac3 => const Color(0xffA678E4);
  Color get purpleLilac4 => const Color(0xffB791E6);
  Color get purpleLilac5 => const Color(0xffC7AAE8);
  Color get purpleLilac6 => const Color(0xffD8C4EB);
  Color get purpleLilac7 => const Color(0xffE9DDED);

  /// Sky Blue/Sky 1
  Color get skyBlue1 => theme.colorScheme.onPrimary;
  Color get skyBlue2 => const Color(0xff07CBFA);
  Color get skyBlue3 => const Color(0xff0EC4F5);
  Color get skyBlue4 => const Color(0xff15BEF1);
  Color get skyBlue5 => const Color(0xff1BB8EC);
  Color get skyBlue6 => const Color(0xff22B1E7);
  Color get skyBlue7 => const Color(0xff00D1FF);

  /// Blue Pear/Blue 1
  Color get bluePear1 => theme.colorScheme.secondary;
  Color get bluePear2 => const Color(0xff0023FF);
  Color get bluePear3 => const Color(0xff0046FF);
  Color get bluePear4 => const Color(0xff0069FF);
  Color get bluePear5 => const Color(0xff008BFF);
  Color get bluePear6 => const Color(0xff00AEFF);
  Color get bluePear7 => const Color(0xff00D1FF);

  /// Midnight/Midnight 1
  Color get midnight1 => theme.colorScheme.onSecondary;
  Color get midnight2 => const Color(0xff1B0E48);
  Color get midnight3 => const Color(0xff23174F);
  Color get midnight4 => const Color(0xff2B2155);
  Color get midnight5 => const Color(0xff322A5B);
  Color get midnight6 => const Color(0xff3A3362);
  Color get midnight7 => const Color(0xff423D68);

  /// only found in one place in login screen
  Color get loginTextColor => theme.colorScheme.onTertiary;
  Color get formFieldColor => theme.colorScheme.surface;
  Color get tertiaryColor => theme.colorScheme.tertiary;

  Color get primaryCardColor => theme.cardColor;
  Color get secondaryCardColor => theme.cardTheme.color!;

  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;
  Color get bottomSheetBackground => theme.bottomSheetTheme.backgroundColor!;

  Color get buttonColor => theme.colorScheme.primaryContainer;
  Color get errorColor => theme.colorScheme.error;
  Color get errorContainerColor => theme.colorScheme.errorContainer;

  Color get fillColor => theme.inputDecorationTheme.fillColor!;
  Color get hintColor => theme.inputDecorationTheme.hintStyle!.color!;
  Color get borderColor => theme.inputDecorationTheme.border!.borderSide.color;

  Color get bottomNavBarSelectedItemColor =>
      theme.bottomNavigationBarTheme.selectedItemColor!;

  TextStyle? get hintTextStyle => theme.inputDecorationTheme.hintStyle;

  IconThemeData? get iconTheme => theme.appBarTheme.iconTheme;

  // TextTheme
  TextTheme get textTheme => theme.textTheme;
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;
}
