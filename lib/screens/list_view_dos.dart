import 'package:flutter/material.dart';

class ListViewDos extends StatelessWidget {
  const ListViewDos({super.key});
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).iconTheme.color;

    List<String> comidas = [
      'Mole',
      'Entomatadas',
      'Omelet',
      'Jugo verde',
      'Tlayuda',
      ' Tacos',
      'Quesadillas',
      'Tamales',
      'Huevitos',
      'Mole',
      'Entomatadas',
      'Omelet',
      'Jugo verde',
      'Tlayuda',
      ' Tacos',
      'Quesadillas',
      'Tamales',
      'Huevitos',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Wigdets Review', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: comidas.length,
        itemBuilder: (_, i) {
          return ListTile(
            leading: Icon(Icons.home, color: primary, size: 30),
            title: Text(' ${comidas[i]}', style: TextStyle(color: primary)),
            //subtitle: Text('Subtitle ${i + 1}'),
            trailing: Icon(
              Icons.navigate_next_outlined,
              color: primary,
              size: 35,
            ),
            onTap: () => print('OnTap ${comidas[i]}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.plus_one_outlined),
      ),
    );
  }
}
