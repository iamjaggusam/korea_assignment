import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: HomeScreen()),
    Center(child: Text('카테고리', style: TextStyle(fontSize: 24))),
    Center(child: Text('커뮤니티', style: TextStyle(fontSize: 24))),
    Center(child: Text('마이페이지', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildNavItem(String asset, int index) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        _selectedIndex == index ? Colors.black : Colors.grey,
        BlendMode.srcIn,
      ),
      child: Image.asset(asset, height: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _buildNavItem('assets/images/home.png', 0),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem('assets/images/search.png', 1),
            label: '카테고리',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem('assets/images/meet.png', 2),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem('assets/images/person_circle.png', 3),
            label: '마이페이지',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
