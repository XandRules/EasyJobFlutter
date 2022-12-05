import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Selecionar Perfil',
  'Freelancer',
  'Estabelecimento'
];

class CustomFormFieldDropdown extends StatefulWidget {
  const CustomFormFieldDropdown({Key? key}) : super(key: key);

  @override
  State<CustomFormFieldDropdown> createState() =>
      _CustomFormFieldDropdownState();
}

class _CustomFormFieldDropdownState extends State<CustomFormFieldDropdown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        isExpanded: true,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.arrow_drop_down_outlined),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
          labelText: 'Perfil de usuário',
          isDense: true,
        ),
        hint: const Text('Selecione o perfil'),
        borderRadius: BorderRadius.circular(18),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
    ;
  }
}
