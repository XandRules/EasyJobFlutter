import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/pages/components/custom_form_field.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../components/custom_form_field_dropdown.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final cpfFormatter = MaskTextInputFormatter(
      mask: "###.###.###-##",
      filter: {'#': RegExp(r'[0-9]')}
  );

  final phoneFormatter = MaskTextInputFormatter(
      mask: "(##)#####-####",
      filter: {'#': RegExp(r'[0-9]')}
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Column(
                children: [
                   Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text.rich(
                            TextSpan(style: TextStyle(fontSize: 40), children: [
                          TextSpan(
                            text: 'Cadastro',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ])),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(45))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomFormFieldDropdown(),
                        const CustomFormField(
                            icon: Icons.abc, label: 'Nome Completo'),
                        const CustomFormField(
                            icon: Icons.lock, label: 'Senha', isSecret: true),
                        const CustomFormField(icon: Icons.email,type: TextInputType.emailAddress, label: 'Email'),
                         CustomFormField(icon: Icons.phone,type: TextInputType.number, label: 'Celular', inputFormatters: [phoneFormatter],),
                         CustomFormField(icon: Icons.numbers,type: TextInputType.number, label: 'CPF', inputFormatters: [cpfFormatter],),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar Usuário',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SafeArea(child: IconButton(onPressed: () {
                Navigator.of(context).pop();
              }, icon: const Icon(Icons.arrow_back_ios), color: Colors.white,))
            ],
          ),
        ),
      ),
    );
  }
}
