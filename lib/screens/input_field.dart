import 'package:flutter/material.dart';
import 'package:widgets_review/widgets/widgets.dart';

class InputFieldScreen extends StatelessWidget {
  const InputFieldScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, dynamic> myForm = {
      'nombre': 'Aloha',
      'apellidos': '',
      'email': 'test@nova.gob.mx',
      'password': 'secret',
    };

    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Form(
            //key: key,
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 10),
                CustomFormField(
                  labelText: 'Nombre A',

                  icono: Icons.add,
                  myForm: myForm,
                  keyForm: 'nombre',
                ),
                SizedBox(height: 20),
                CustomFormField(
                  labelText: 'Apellido Pat',
                  icono: Icons.plus_one,
                  myForm: myForm,
                  keyForm: 'apellidos',
                ),
                SizedBox(height: 20),
                CustomFormField(
                  labelText: 'email',
                  icono: Icons.home,
                  keyboardType: TextInputType.emailAddress,
                  myForm: myForm,
                  keyForm: 'email',
                ),
                SizedBox(height: 20),
                CustomFormField(
                  labelText: 'Password',
                  icono: Icons.home,
                  obscureText: true,
                  myForm: myForm,
                  keyForm: 'password',
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      //TODO: revisar las validaciones
                      //TODO: No dispara las validaciones
                      if (!formKey.currentState!.validate()) {
                        print('Form no valido');
                        return;
                      }
                      print('Enviando datos al backend');
                      print(myForm);
                    },
                    child: Text('Enviar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
