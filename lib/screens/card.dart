import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _colorText = TextStyle(color: Colors.white);

    return Scaffold(
      appBar: AppBar(title: Text('Card Screen')),
      body: ListView(
        children: [
          _CustomCard(colorText: _colorText),
          _CustomCard(colorText: _colorText),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required TextStyle colorText})
    : _colorText = colorText;

  final TextStyle _colorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1),
      child: Card(
        color: Colors.pink,
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle_outlined,
                color: Colors.white,
              ),
              title: Text('Omar Martinez', style: _colorText),
              subtitle: Text(
                'Profesor-Investigador, bien enojon de NovaUniversitas',
                style: _colorText,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.home, color: Colors.white),
                  TextButton(
                    onPressed: null,
                    child: Text('Aceptar', style: _colorText),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('Cancelar', style: _colorText),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
