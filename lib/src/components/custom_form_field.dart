import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {

  final IconData icon;
  final String label;
  final bool isObscure;
  final TextInputType type;

  const CustomFormField({Key? key , required this.icon, required this.label,  this.isObscure = false , this.type = TextInputType.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 18
      ),
      child: TextFormField(
        obscureText: isObscure,
        keyboardType: type,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          isDense: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18)
          ),
          labelText: label
        ),
      ),
    );
  }
}
