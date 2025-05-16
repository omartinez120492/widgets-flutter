import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void mostrarAlertaAndroid(BuildContext c) {
    showDialog(
      context: c,
      barrierDismissible: false,
      builder: (BuildContext c) {
        return AlertDialog(
          //icon: Icon(Icons.import_contacts),
          title: Text('Aceptas a N en matrimonio?'),
          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Text('Esperamos respuesta..'),
              FlutterLogo(size: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(c, true);
                    },
                    child: Text('Aceptar'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(c, true);
                    },
                    child: Text('Cancelar'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => mostrarAlertaAndroid(context),
          child: Text('Click aquí'),
        ),
      ),
    );
  }
}
