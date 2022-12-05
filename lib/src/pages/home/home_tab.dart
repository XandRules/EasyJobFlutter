import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/home/components/item_tile.dart';

import '../../config/custom_colors.dart';
import '../../models/item_model.dart';
import 'components/category_tile.dart';
import 'package:greengrocer/src/config/app_data.dart' as app_data;


class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  String categoriaSelecionada = 'Motoboy';
  List<ItemModel> items = app_data.motoboy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: Colors.red,
                badgeContent: const Text(
                  '2',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                child: Icon(Icons.notifications),
              ),
            ),
          ),
        ],
        elevation: 0,
        title: Text.rich(TextSpan(style: TextStyle(fontSize: 30), children: [
          const TextSpan(
              text: 'Easy',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'Job',
              style: TextStyle(
                color: CustomColors.customContrastColor,
              ))
        ])),
      ),
      body: Column(
        children: [
          //Campo de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: "Pesquise aqui",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.redAccent,
                    size: 21,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none))),
            ),
          ),
          // Categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CategoryTile(
                    categoria: app_data.categorias[index],
                    selecionado: app_data.categorias[index] ==
                        categoriaSelecionada,
                    onPressed: () {
                      setState(
                              () =>
                          {
                            categoriaSelecionada = app_data.categorias[index],
                            if(categoriaSelecionada == 'Motoboy'){
                              items = app_data.motoboy
                            },
                            if(categoriaSelecionada == 'Cozinheiro(a)'){
                              items = app_data.cozinheiro
                            },
                            if(categoriaSelecionada == 'Garçom'){
                              items = app_data.garcom
                            },
                            if(categoriaSelecionada == 'Músicos'){
                              items = app_data.musico
                            },

                          });
                    },
                  );
                },
                separatorBuilder: (_, index) =>
                const SizedBox(
                  width: 10,
                ),
                itemCount: app_data.categorias.length),
          ),
          // Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5
              ),
              itemCount: items.length,
              itemBuilder: (_, index) {
                return ItemTile(item: items[index],);
              },),
          ),
        ],
      ),
    );
  }
}
