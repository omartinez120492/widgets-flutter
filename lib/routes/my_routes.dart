import 'package:flutter/material.dart';
import 'package:widgets_review/models/menu_home.dart';
import 'package:widgets_review/screens/screens.dart';
import 'package:widgets_review/widgets/widgets.dart';

class MyRoutes {
  static final initialRoute = 'home';

  static final List<MenuOption> menuOptions = [
    MenuOption(
      icon: Icons.list_alt,
      menu: '+List View Uno+',
      ruta: 'listviewuno',
      screen: ListViewUno(),
    ),
    MenuOption(
      icon: Icons.line_style_outlined,
      menu: '.List View Dos.',
      ruta: 'listviewdos',
      screen: ListViewDos(),
    ),
    MenuOption(
      icon: Icons.casino_rounded,
      menu: 'Tarjeta',
      ruta: 'card',
      screen: CardScreen(),
    ),
    MenuOption(
      icon: Icons.add_alert_sharp,
      menu: 'Alerta',
      ruta: 'alert',
      screen: AlertScreen(),
    ),
    MenuOption(
      icon: Icons.quick_contacts_dialer_outlined,
      menu: 'Card Image',
      ruta: 'cardImage',
      screen: CardImage(),
    ),
    MenuOption(
      icon: Icons.view_carousel_outlined,
      menu: 'Go Carousel View ',
      ruta: 'carouselviewx',
      screen: CarouselViewX(),
    ),
    MenuOption(
      icon: Icons.input_sharp,
      menu: ' Input Fields ',
      ruta: 'inputfield',
      screen: InputFieldScreen(),
    ),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext c) => MyHomePage(),
  //   'listviewuno': (BuildContext c) => ListViewUno(),
  //   'listviewdos': (BuildContext c) => ListViewDos(),
  //   'card': (BuildContext c) => CardScreen(),
  //   'alert': (BuildContext c) => AlertScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> routes() {
    //'home': (BuildContext c) => MyHomePage(),
    Map<String, Widget Function(BuildContext)> t = {};
    t.addAll({'home': (BuildContext c) => MyHomePage()});
    for (var item in menuOptions) {
      t.addAll({item.ruta: (BuildContext c) => item.screen});
    }
    return t;
  }
}
