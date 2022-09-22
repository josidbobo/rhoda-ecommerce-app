import 'package:flutter/material.dart';
import 'package:rhoda_ecommerce_app/widgets/cart.dart';
import 'package:rhoda_ecommerce_app/widgets/favourites.dart';
import 'package:rhoda_ecommerce_app/widgets/home.dart';
import 'package:rhoda_ecommerce_app/widgets/profile.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  final List<Map<String, Object>> _pages = [
      {'page': HomePageWidget(), 'title': '', 'appBarColor': Colors.white, 'elevation': 0.0},
      {'page': const Favourites(), 'title': 'Favourites', 'appBarColor': Colors.blueAccent, 'elevation': 2.0},
      {'page': const CartItem(), 'title': 'Cart', 'appBarColor': Colors.blueAccent, 'elevation': 2.0},
      {'page': const UserProfile(), 'title': 'My Profile', 'appBarColor': Colors.blueAccent, 'elevation': 2.0}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_pages[_selectedPageIndex]['title'] as String)),
        elevation: (_pages[_selectedPageIndex]['elevation'] as double),
        backgroundColor: _pages[_selectedPageIndex]['appBarColor'] as Color,
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
              icon: _selectedPageIndex == 0 ? const Icon(
                Icons.home,
                color: Colors.black,
              ) : const Icon(Icons.home_outlined),
              activeIcon: Container(
                height: 1.2,
              )),
          BottomNavigationBarItem(
              icon: _selectedPageIndex == 1 ? const Icon(
                Icons.favorite,
                color: Colors.black,
              ) : const Icon(Icons.favorite_border_outlined),
              activeIcon: Container(
                height: 1.2,
              )),
          BottomNavigationBarItem(
              icon: _selectedPageIndex == 2 ? const Icon(
                Icons.shopping_cart_sharp,
                color: Colors.black,
              ) : const Icon(Icons.shopping_cart_outlined),
              activeIcon: Container(
                height: 1.2,
              )),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 40,
                width: 40,
                child: ClipOval(
                  child: Image.asset(
                    'assets/20220314_100746.jpg',
                    fit: BoxFit.fill,
                    scale: 11.8,
                  ),
                ),
              ),
              activeIcon: Container(
                height: 3.8,
              )),
        ],
      ),
    );
  }
}
