import 'package:flutter/material.dart';
import 'package:juego/features/Settings/settings.dart';
import 'package:juego/features/home/home.dart';
import 'package:juego/features/predict/predict.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() {
    return NavBarState();
  }
}

class NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final List<Widget> _views = [HomeScreen(), PredictScreen(), SettingsScreen()];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Predict',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
          ),
        ],
        iconSize: 32,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
