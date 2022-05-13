import 'package:flutter/material.dart';

enum BookingState {
  free,
  reserved,
  blocked,
}

class RmColorStyle {
  final Color primary;
  final Color secondary;
  final Color onPrimary;
  final Color onSurface;
  final Color outline;
  final Color success;
  final Color onSuccess;
  final Color error;
  final Color onError;
  final Color warn;
  final Color onWarn;
  final Color info;
  final Color onInfo;
  final Color surface;
  final Color background;
  final Color linkTo;

  // App specific colors
  final Map<BookingState, Color> bookingState;

  RmColorStyle({
    required this.primary,
    required this.secondary,
    required this.onPrimary,
    required this.onSurface,
    required this.outline,
    required this.success,
    required this.onSuccess,
    required this.error,
    required this.onError,
    required this.warn,
    required this.onWarn,
    required this.info,
    required this.onInfo,
    required this.surface,
    required this.background,
    required this.linkTo,
    required this.bookingState,
  });
}

class RmTextStyle {
  static const fontFamily = 'Montserrat';
  static const style = TextStyle(
    fontFamily: RmTextStyle.fontFamily,
    fontFamilyFallback: ['Roboto'],
  );

  /// Largest of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  final TextStyle displayLarge;

  /// Middle size of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  final TextStyle displayMedium;

  /// Smallest of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  final TextStyle displaySmall;

  /// Largest of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  final TextStyle headlineLarge;

  /// Middle size of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  final TextStyle? headlineMedium;

  /// Smallest of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  final TextStyle headlineSmall;

  /// Largest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  final TextStyle titleLarge;

  /// Middle size of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  final TextStyle titleMedium;

  /// Smallest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  final TextStyle titleSmall;

  /// Largest of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  final TextStyle bodyLarge;

  /// Middle size of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  ///
  /// The default text style for [Material].
  final TextStyle bodyMedium;

  /// Smallest of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  final TextStyle bodySmall;

  /// Largest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  ///
  /// Used for text on [ElevatedButton], [TextButton] and [OutlinedButton].
  final TextStyle labelLarge;

  /// Middle size of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  final TextStyle labelMedium;

  /// Smallest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  final TextStyle labelSmall;

  const RmTextStyle({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });
}

class Light {
  static final RmColorStyle color = RmColorStyle(
    primary: const Color(0xFF10b981),
    secondary: const Color(0xFF6366F1),
    onPrimary: const Color(0xFFFFFFFF),
    onSurface: const Color(0xFF020202),
    outline: const Color(0xFF000000).withOpacity(0.12),
    success: const Color(0xFF4CAF50),
    onSuccess: const Color(0xFFFFFFFF),
    error: const Color(0xFFF44336),
    onError: const Color(0xFFFFFFFF),
    warn: const Color(0xFFFFA726),
    onWarn: const Color(0xFFFFFFFF),
    info: const Color(0xFF29B6F6),
    onInfo: const Color(0xFFFFFFFF),
    surface: const Color(0xFFFAFAFA),
    background: const Color(0xFFFFFFFF),
    linkTo: const Color(0xFF2563EB),
    bookingState: const {
      BookingState.free: Color(0xFFCDDC39),
      BookingState.reserved: Color(0xFF3B82F6),
      BookingState.blocked: Color(0xFF4B5563),
    },
  );

  static const _textTheme = Typography.blackCupertino;

  static final RmTextStyle text = RmTextStyle(
    displayLarge: _textTheme.displayLarge!.merge(RmTextStyle.style),
    displayMedium: _textTheme.displayMedium!.merge(RmTextStyle.style),
    displaySmall: _textTheme.displaySmall!.merge(RmTextStyle.style),
    headlineLarge: _textTheme.headlineLarge!.merge(RmTextStyle.style),
    headlineMedium: _textTheme.headlineMedium!.merge(RmTextStyle.style),
    headlineSmall: _textTheme.headlineSmall!.merge(RmTextStyle.style),
    titleLarge: _textTheme.titleLarge!.merge(RmTextStyle.style),
    titleMedium: _textTheme.titleMedium!.merge(RmTextStyle.style),
    titleSmall: _textTheme.titleSmall!.merge(RmTextStyle.style),
    bodyLarge: _textTheme.bodyLarge!.merge(RmTextStyle.style),
    bodyMedium: _textTheme.bodyMedium!.merge(RmTextStyle.style),
    bodySmall: _textTheme.bodySmall!.merge(RmTextStyle.style),
    labelLarge: _textTheme.labelLarge!.merge(RmTextStyle.style),
    labelMedium: _textTheme.labelMedium!.merge(RmTextStyle.style),
    labelSmall: _textTheme.labelSmall!.merge(RmTextStyle.style),
  );

  static final TextTheme textTheme = TextTheme(
    displayLarge: text.displayLarge,
    displayMedium: text.displayMedium,
    displaySmall: text.displaySmall,
    headlineLarge: text.headlineLarge,
    headlineMedium: text.headlineMedium,
    headlineSmall: text.headlineSmall,
    titleLarge: text.titleLarge,
    titleMedium: text.titleMedium,
    titleSmall: text.titleSmall,
    bodyLarge: text.bodyLarge,
    bodyMedium: text.bodyMedium,
    bodySmall: text.bodySmall,
    labelLarge: text.labelLarge,
    labelMedium: text.labelMedium,
    labelSmall: text.labelSmall,
  );

  Light._();
}

class Dark {}

class AppTheme {
  AppTheme._();

  static const Color _iconColor = Colors.black;

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
          floatingLabelStyle: const TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.white)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)));

  static final ThemeData lightTheme = ThemeData(
    inputDecorationTheme: _inputDecorationTheme,
    scaffoldBackgroundColor: Light.color.background,
    appBarTheme: AppBarTheme(
        color: Light.color.background,
        iconTheme: const IconThemeData(color: _iconColor)),
    bottomAppBarColor: Light.color.primary,
    colorScheme: ColorScheme.light(
      primary: Light.color.primary,
      onPrimary: Light.color.onPrimary,
      secondary: Light.color.secondary,
      onSecondary: Light.color.onPrimary,
      outline: Light.color.outline,
      background: Light.color.background,
      onBackground: Light.color.onPrimary,
      surface: Light.color.surface,
      onSurface: Light.color.onSurface,
      error: Light.color.error,
      onError: Light.color.onError,
    ),
    textTheme: Light.textTheme,
  );

  static final ThemeData darkTheme = ThemeData();
}
