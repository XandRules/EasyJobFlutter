import 'package:greengrocer/src/models/item_model.dart';

class NotificacaoModel {
  ItemModel item;
  int quantity;

  NotificacaoModel({
    required this.item,
    required this.quantity,
  });
}
