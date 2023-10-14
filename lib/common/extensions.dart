import 'package:flutter/material.dart';

/// Extensions on [BuildContext].
extension BuildContextEx on BuildContext {
  /// Returns the [TextTheme] of the current [BuildContext].
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns the [ThemeData] of the current [BuildContext].
  ThemeData get theme => Theme.of(this);

  /// Returns the [MediaQueryData] of the current [BuildContext].
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ///Navigation
  void push<T>(Route<T> route, {bool avoidDuplicates = false}) => {
        if (avoidDuplicates)
          Navigator.of(this).pushAndRemoveUntil(
            route,
            (Route<dynamic> route) => false,
          )
        else
          Navigator.of(this).push(route),
      };
}

/// Extensions on [TextStyle].
extension TextStyleEx on TextStyle {
  /// Returns a [TextStyle] with the [fontSize] of the current [TextStyle]
  /// multiplied by [factor = 1.2].
  TextStyle get scaled => copyWith(fontSize: fontSize! * 1.2);

  /// Returns a [TextStyle] with the [fontSize] specified.
  TextStyle fs(double size) => copyWith(fontSize: size);

  /// Returns a [TextStyle] with the [color] specified.
  TextStyle c(Color color) => copyWith(color: color);
}
