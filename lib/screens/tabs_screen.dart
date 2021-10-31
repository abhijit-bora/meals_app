import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favorites_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Widget> _pages = [
    CategoriesScreen(),
    FavoriteScreen(),
  ];
  int _seletPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _seletPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
          ),
          body: _pages[_seletPageIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _seletPageIndex,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.category),
                title: Text('Categories'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favorite'),
              ),
            ],
          ),
        ));
  }
}
