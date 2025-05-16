import 'package:flutter/material.dart';
import 'package:widgets_review/routes/my_routes.dart';
import 'package:widgets_review/theme/theme_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: MyRoutes.initialRoute,
      theme: ThemeApp.primaryTheme(),
      routes: MyRoutes.routes(),
    );
  }
}


// Avatar
// 