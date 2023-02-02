import 'package:chef_food/Pages/Faveroites.dart';
import 'package:chef_food/Pages/Records.dart';
import 'package:chef_food/Pages/Settings.dart';
import 'SelectMoreItems.dart';
import 'Home.dart';
import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homepage> {
  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Home(),
          Faveroites(),
          // SelectMoreItems(),
          Records(),
          Settings(),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: Colors.teal,
        textStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
          
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.white,
            activeTitleColor: Colors.white,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Icon(Icons.note_add),
            title: Text('Records'),
            backgroundColorOpacity: 0.1,
            activeColor: Colors.white,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
            activeIconColor: Colors.white,
            activeTitleColor: Colors.orange.shade700,
          ),
        ],
      ),
    );
  }
}