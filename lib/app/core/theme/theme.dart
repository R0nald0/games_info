import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff010712),
      surfaceTint: Color(0xff555f6d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff16202c),
      onPrimaryContainer: Color(0xff7d8897),
      secondary: Color(0xff5b5e65),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe0e2ea),
      onSecondaryContainer: Color(0xff61646b),
      tertiary: Color(0xff0e040e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff281b28),
      onTertiaryContainer: Color(0xff948192),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffbf9f9),
      onSurface: Color(0xff1b1b1c),
      onSurfaceVariant: Color(0xff44474c),
      outline: Color(0xff75777c),
      outlineVariant: Color(0xffc5c6cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303031),
      inversePrimary: Color(0xffbdc7d8),
      primaryFixed: Color(0xffd9e3f4),
      onPrimaryFixed: Color(0xff121c28),
      primaryFixedDim: Color(0xffbdc7d8),
      onPrimaryFixedVariant: Color(0xff3e4855),
      secondaryFixed: Color(0xffe0e2ea),
      onSecondaryFixed: Color(0xff181c21),
      secondaryFixedDim: Color(0xffc4c6cd),
      onSecondaryFixedVariant: Color(0xff43474d),
      tertiaryFixed: Color(0xfff2dcee),
      onTertiaryFixed: Color(0xff241724),
      tertiaryFixedDim: Color(0xffd6c0d2),
      onTertiaryFixedVariant: Color(0xff514250),
      surfaceDim: Color(0xffdcd9da),
      surfaceBright: Color(0xfffbf9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f4),
      surfaceContainer: Color(0xfff0edee),
      surfaceContainerHigh: Color(0xffeae7e8),
      surfaceContainerHighest: Color(0xffe4e2e3),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff010712),
      surfaceTint: Color(0xff555f6d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff16202c),
      onPrimaryContainer: Color(0xffa1abbb),
      secondary: Color(0xff33363c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6a6d73),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff0e040e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff281b28),
      onTertiaryContainer: Color(0xffb9a4b6),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf9f9),
      onSurface: Color(0xff111112),
      onSurfaceVariant: Color(0xff34363b),
      outline: Color(0xff505257),
      outlineVariant: Color(0xff6b6d72),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303031),
      inversePrimary: Color(0xffbdc7d8),
      primaryFixed: Color(0xff646e7c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4b5663),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6a6d73),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff51555b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff796877),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff60505f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc8c6c7),
      surfaceBright: Color(0xfffbf9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff6f3f4),
      surfaceContainer: Color(0xffeae7e8),
      surfaceContainerHigh: Color(0xffdfdcdd),
      surfaceContainerHighest: Color(0xffd3d1d2),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff010712),
      surfaceTint: Color(0xff555f6d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff16202c),
      onPrimaryContainer: Color(0xffcbd5e6),
      secondary: Color(0xff292c32),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff46494f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff0e040e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff281b28),
      onTertiaryContainer: Color(0xffe4cee0),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf9f9),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2a2c31),
      outlineVariant: Color(0xff47494e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303031),
      inversePrimary: Color(0xffbdc7d8),
      primaryFixed: Color(0xff404a57),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff293340),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff46494f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2f3338),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff544453),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3c2e3c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbab8b9),
      surfaceBright: Color(0xfffbf9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f0f1),
      surfaceContainer: Color(0xffe4e2e3),
      surfaceContainerHigh: Color(0xffd6d4d5),
      surfaceContainerHighest: Color(0xffc8c6c7),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbdc7d8),
      surfaceTint: Color(0xffbdc7d8),
      onPrimary: Color(0xff27313e),
      primaryContainer: Color(0xff16202c),
      onPrimaryContainer: Color(0xff7d8897),
      secondary: Color(0xffc4c6cd),
      onSecondary: Color(0xff2d3136),
      secondaryContainer: Color(0xff43474d),
      onSecondaryContainer: Color(0xffb2b5bc),
      tertiary: Color(0xffd6c0d2),
      onTertiary: Color(0xff3a2c3a),
      tertiaryContainer: Color(0xff281b28),
      onTertiaryContainer: Color(0xff948192),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131314),
      onSurface: Color(0xffe4e2e3),
      onSurfaceVariant: Color(0xffc5c6cc),
      outline: Color(0xff8f9196),
      outlineVariant: Color(0xff44474c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e2e3),
      inversePrimary: Color(0xff555f6d),
      primaryFixed: Color(0xffd9e3f4),
      onPrimaryFixed: Color(0xff121c28),
      primaryFixedDim: Color(0xffbdc7d8),
      onPrimaryFixedVariant: Color(0xff3e4855),
      secondaryFixed: Color(0xffe0e2ea),
      onSecondaryFixed: Color(0xff181c21),
      secondaryFixedDim: Color(0xffc4c6cd),
      onSecondaryFixedVariant: Color(0xff43474d),
      tertiaryFixed: Color(0xfff2dcee),
      onTertiaryFixed: Color(0xff241724),
      tertiaryFixedDim: Color(0xffd6c0d2),
      onTertiaryFixedVariant: Color(0xff514250),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff39393a),
      surfaceContainerLowest: Color(0xff0e0e0f),
      surfaceContainerLow: Color(0xff1b1b1c),
      surfaceContainer: Color(0xff1f1f20),
      surfaceContainerHigh: Color(0xff2a2a2b),
      surfaceContainerHighest: Color(0xff353536),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd3ddee),
      surfaceTint: Color(0xffbdc7d8),
      onPrimary: Color(0xff1c2633),
      primaryContainer: Color(0xff8791a1),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffdadce3),
      onSecondary: Color(0xff22262b),
      secondaryContainer: Color(0xff8e9197),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffecd6e8),
      onTertiary: Color(0xff2f212f),
      tertiaryContainer: Color(0xff9e8b9c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131314),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdbdce2),
      outline: Color(0xffb0b2b7),
      outlineVariant: Color(0xff8e9096),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e2e3),
      inversePrimary: Color(0xff3f4956),
      primaryFixed: Color(0xffd9e3f4),
      onPrimaryFixed: Color(0xff08121d),
      primaryFixedDim: Color(0xffbdc7d8),
      onPrimaryFixedVariant: Color(0xff2d3744),
      secondaryFixed: Color(0xffe0e2ea),
      onSecondaryFixed: Color(0xff0e1116),
      secondaryFixedDim: Color(0xffc4c6cd),
      onSecondaryFixedVariant: Color(0xff33363c),
      tertiaryFixed: Color(0xfff2dcee),
      onTertiaryFixed: Color(0xff190d19),
      tertiaryFixedDim: Color(0xffd6c0d2),
      onTertiaryFixedVariant: Color(0xff40323f),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff454445),
      surfaceContainerLowest: Color(0xff070708),
      surfaceContainerLow: Color(0xff1d1d1e),
      surfaceContainer: Color(0xff282829),
      surfaceContainerHigh: Color(0xff323233),
      surfaceContainerHighest: Color(0xff3e3d3e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe8f0ff),
      surfaceTint: Color(0xffbdc7d8),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb9c3d4),
      onPrimaryContainer: Color(0xff030c17),
      secondary: Color(0xffedf0f7),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc0c2ca),
      onSecondaryContainer: Color(0xff080c10),
      tertiary: Color(0xffffeafb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd2bcce),
      onTertiaryContainer: Color(0xff130713),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff131314),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeff0f5),
      outlineVariant: Color(0xffc1c2c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e2e3),
      inversePrimary: Color(0xff3f4956),
      primaryFixed: Color(0xffd9e3f4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbdc7d8),
      onPrimaryFixedVariant: Color(0xff08121d),
      secondaryFixed: Color(0xffe0e2ea),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc4c6cd),
      onSecondaryFixedVariant: Color(0xff0e1116),
      tertiaryFixed: Color(0xfff2dcee),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd6c0d2),
      onTertiaryFixedVariant: Color(0xff190d19),
      surfaceDim: Color(0xff131314),
      surfaceBright: Color(0xff505051),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1f1f20),
      surfaceContainer: Color(0xff303031),
      surfaceContainerHigh: Color(0xff3b3b3c),
      surfaceContainerHighest: Color(0xff474648),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xff952d14),
    value: Color(0xff952d14),
    light: ColorFamily(
      color: Color(0xff741500),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff952d14),
      onColorContainer: Color(0xffffb2a0),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff741500),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff952d14),
      onColorContainer: Color(0xffffb2a0),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff741500),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xff952d14),
      onColorContainer: Color(0xffffb2a0),
    ),
    dark: ColorFamily(
      color: Color(0xffffb4a3),
      onColor: Color(0xff621000),
      colorContainer: Color(0xff952d14),
      onColorContainer: Color(0xffffb2a0),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffb4a3),
      onColor: Color(0xff621000),
      colorContainer: Color(0xff952d14),
      onColorContainer: Color(0xffffb2a0),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffb4a3),
      onColor: Color(0xff621000),
      colorContainer: Color(0xff952d14),
      onColorContainer: Color(0xffffb2a0),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    customColor1,
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
