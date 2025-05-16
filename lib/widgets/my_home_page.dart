import 'package:flutter/material.dart';
import 'package:widgets_review/routes/my_routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).iconTheme.color;

    final menuOptions = MyRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.separated(
        itemBuilder:
            (BuildContext context, i) => ListTile(
              leading: Icon(menuOptions[i].icon, color: primary),
              title: Text(
                menuOptions[i].menu,
                style: TextStyle(color: primary),
              ),
              trailing: Icon(Icons.navigate_next_outlined, color: primary),
              onTap: () => Navigator.pushNamed(context, menuOptions[i].ruta),
            ),
        separatorBuilder: (BuildContext context, i) => Divider(color: primary),
        itemCount: menuOptions.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.plus_one_outlined),
      ),
    );
  }
}
