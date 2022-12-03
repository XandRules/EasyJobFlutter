import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue,),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blue.withAlpha(100),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              label: 'Relatórios'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Pedidos'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Perfil'
          ),
        ],
      ),
    );
  }
}
