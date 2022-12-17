import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/common_widgets/quantity_widget.dart';

import '../../models/item_model.dart';
import '../../services/utils_services.dart';

class FreelancerScreen extends StatefulWidget {
  FreelancerScreen({super.key, required this.item});

  final ItemModel item;

  @override
  State<FreelancerScreen> createState() => _FreelancerScreenState();
}

class _FreelancerScreenState extends State<FreelancerScreen> {
  final UtilsServices utilsServices = UtilsServices();

  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Conteudo
          Column(children: [
            Expanded(
              child: Hero(
                tag: widget.item.imgUrl,
                child: Image.asset(widget.item.imgUrl),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, offset: Offset(0, 2)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Nome

                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.item.itemName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        QuantityWidget(value: value, suffixText: widget.item.unit,
                        result: (quantity) {
                          setState(() {
                            value = quantity;
                          });
                        },
                        ),
                      ],
                    ),

                    // Preço
                    Text(
                      utilsServices.priceToCurrency(widget.item.price),
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Descriçao
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SingleChildScrollView(
                          child: Text(
                            widget.item.description,
                            style: const TextStyle(
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Botâo
                    SizedBox(
                      height: 55,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text(
                          'Contratar',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        icon: const Icon(
                          Icons.handshake_outlined,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),

          //Botao Voltar a tela anterior
          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
