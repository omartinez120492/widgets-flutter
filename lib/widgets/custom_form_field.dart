import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.hintText,
    required this.labelText,
    this.helperText,
    required this.icono,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.myForm,
    required this.keyForm,
  });

  final String? hintText;
  final String labelText;
  final String? helperText;
  final IconData icono;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Map<String, dynamic> myForm;
  final String keyForm;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //initialValue: 'Omar',
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (c) => myForm[keyForm] = c,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 4 ? 'Tamaño mínimo de 4' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: 'Hasta 4',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.supervised_user_circle_outlined),
        icon: Icon(icono),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
