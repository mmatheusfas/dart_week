import 'package:flutter/material.dart';

//Classe Singleton para definir todos os estilos do texto do app
//Caso precise trocar a fonte do app facilita a troca em vez de ter
//Que ir de tela em tela mudando texto por texto
class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get i {
    _instance ??= TextStyles._();

    return _instance!;
  }

  String get font => "mplus1";

  TextStyle get textLigth => TextStyle(fontWeight: FontWeight.w300, fontFamily: font);

  TextStyle get textRegular => TextStyle(fontWeight: FontWeight.normal, fontFamily: font);

  TextStyle get textMedium => TextStyle(fontWeight: FontWeight.w500, fontFamily: font);

  TextStyle get textSemiBold => TextStyle(fontWeight: FontWeight.w600, fontFamily: font);

  TextStyle get textBold => TextStyle(fontWeight: FontWeight.w700, fontFamily: font);

  TextStyle get extraBold => TextStyle(fontWeight: FontWeight.w800, fontFamily: font);

  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);

  TextStyle get textTitle => extraBold.copyWith(fontSize: 28);
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
