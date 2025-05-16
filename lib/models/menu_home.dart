import 'package:flutter/material.dart';

class MenuOption {
  final IconData icon;
  final String menu;
  final String ruta;
  final Widget screen;

  MenuOption({
    required this.icon,
    required this.menu,
    required this.ruta,
    required this.screen,
  });
}
