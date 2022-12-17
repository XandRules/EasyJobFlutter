import 'package:flutter/material.dart';

class NotificacaoTab extends StatelessWidget {
  const NotificacaoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Notificações'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Placeholder(),
          ),
          Container(
            child: Column(
              children: [
                // Mensagem

                // Botao de confirmacao
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30),),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  spreadRadius: 2,
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
