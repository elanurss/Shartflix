import 'package:flutter/widgets.dart';

class ShartflixColors {
  const ShartflixColors._(this.name, this.value);
  final String name;
  final Color value;

  static const black = Color(0xFF090909);
  static const white = Color(0xFFFFFFFF);
  static const crimsonRed = Color(0xFFE50914);
  static const darkRed = Color(0xFF6F060B);
  static const purple = Color(0xFF5949E6);

  static const values = <ShartflixColors>[
    ShartflixColors._('black', black),
    ShartflixColors._('white', white),
    ShartflixColors._('crimsonRed', crimsonRed),
    ShartflixColors._('darkRed', darkRed),
    ShartflixColors._('purple', purple),
  ];
}
