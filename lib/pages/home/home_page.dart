import 'package:flutter/material.dart';
import 'package:jvm/components/app_bar_componenet.dart';
import 'package:jvm/pages/home/taps/afazeres_tabs.dart';
import 'package:jvm/pages/home/taps/perfil_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  late int selectTab;

  void selectIndex(int sIndex) {
    setState(() {
      selectTab = sIndex;
    });
  }

  @override
  void initState() {
    selectTab = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _tabs = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: 'perfil',
      ),
    ];

    final List<Widget> _cont = [
      const AfazeresTab(titulo: 1),
      const PerfilTab(),
    ];

    return Scaffold(
      appBar: const AppBarComponent(),
      body: _cont.elementAt(selectTab),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: _tabs,
        onTap: selectIndex,
      ),
    );
  }
}
