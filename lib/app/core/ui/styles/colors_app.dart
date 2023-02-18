import 'package:flutter/material.dart';

//Classe no padrão singleton
class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._();

    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secundary => const Color(0XFFF88B0C);
}

//Extensão que me permite ter acesso diretamente pelo BuilContext
extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
