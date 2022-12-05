import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatefulWidget {

  final IconData icon;
  final String label;
  final TextInputType type;
  final bool isSecret ;
  final List<TextInputFormatter> ? inputFormatters;


  const CustomFormField(
      {Key? key ,
        required this.icon,
        required this.label,
        this.isSecret = false ,
        this.type = TextInputType.text,
        this.inputFormatters,
      }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {

  bool isObscure = false;
  IconData iconVisibility = Icons.visibility;

  @override
  void initState() {
    isObscure = widget.isSecret;
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 18
      ),
      child: TextFormField(
        obscureText: isObscure,
        keyboardType: widget.type,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isSecret ? IconButton(
              icon:  Icon(iconVisibility),
              onPressed: () {
               setState(() {
                 isObscure = !isObscure;
                 iconVisibility = !isObscure ? Icons.visibility_off : Icons.visibility;
               });

              })
          : null,
          isDense: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18)
          ),
          labelText: widget.label
        ),
      ),
    );
  }
}
