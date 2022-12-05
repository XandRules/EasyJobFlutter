import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.categoria,
    required this.selecionado,
    required this.onPressed
  }) : super(key: key);

  final String categoria;
  final bool selecionado;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selecionado? Colors.green : Colors.transparent,
          ),
          child: Text(
            categoria,
            style: TextStyle(
              color: selecionado? Colors.white : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: selecionado ? 16 : 14
            ),
          ),
        ),
      ),
    );
  }
}
