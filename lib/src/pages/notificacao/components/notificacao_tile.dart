import 'package:flutter/material.dart';
import 'package:greengrocer/src/models/notificacao_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class NotificacaoTile extends StatelessWidget {
  final NotificacaoModel notificacoes;
  NotificacaoTile({super.key, required this.notificacoes});
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // imagem
        leading: Image.asset(notificacoes.item.imgUrl),
        // titulo
        title: Text(notificacoes.item.name),
        subtitle: Text(notificacoes.item.itemName),

        // valor

        trailing: Text(utilsServices.priceToCurrency(notificacoes.item.price)),
      ),
    );
  }
}
