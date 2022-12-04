import 'package:flutter/material.dart';
import 'package:greengrocer/src/home/home_tab.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomeTab(),
          Container(color: Colors.blue,),
          Container(color: Colors.green,),
          Container(color: Colors.red,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
          currentIndex = index;
          pageController.jumpToPage(index);
          });
        },
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
