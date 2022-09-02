import 'package:flutter/material.dart';
import 'package:greengrocer/src/components/custom_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
     body: Column(

       children: [
         Expanded(
           child: Container( color: Colors.green,
            ),
         ),
         Expanded(
           child: Container(
             padding: const EdgeInsets.symmetric(
               horizontal: 32,
               vertical: 40
             ),
             decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.vertical(
                 top: Radius.circular(45)
               )
             ),
             child: Column(
               children: [
                 CustomFormField(
                   icon: Icons.email,
                   label: 'E-mail',
                   type: TextInputType.emailAddress,
                 ),
                 CustomFormField(
                   icon: Icons.lock,
                   label: 'Senha',
                   isSecret: true,
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
    );
  }
}
