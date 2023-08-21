import 'package:educo/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'home/home_screen.dart';
import 'profile/profile_screen.dart';
import 'saved/saved_screen.dart';
import 'search/search_screen.dart';
import 'widget/active_bar_item.dart';
import 'widget/bar_item.dart';
import 'widget/bar_label_text.dart';

class MainApp extends StatefulWidget {
  static const routeName = '/main';

  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];
  final List<SalomonBottomBarItem> _navBarItems = [
    SalomonBottomBarItem(
      icon: const BarItem(image: 'assets/images/navbar/home.png'),
      title: const BarLabelText(label: "Home"),
      activeIcon: const ActiveBarItem(image: 'assets/images/navbar/home-active.png'),
    ),
    SalomonBottomBarItem(
      icon: const BarItem(image: 'assets/images/navbar/search.png'),
      title: const BarLabelText(label: "Search"),
      activeIcon: const ActiveBarItem(image: 'assets/images/navbar/search-active.png'),
    ),
    SalomonBottomBarItem(
      icon: const BarItem(image: 'assets/images/navbar/bookmark.png'),
      title: const BarLabelText(label: "Saved"),
      activeIcon: const ActiveBarItem(image: 'assets/images/navbar/bookmark-active.png'),
    ),
    SalomonBottomBarItem(
      icon: const BarItem(image: 'assets/images/navbar/user.png'),
      title: const BarLabelText(label: "Profile"),
      activeIcon: const ActiveBarItem(image: 'assets/images/navbar/user-active.svg'),
    ),
  ];
  int _initialIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _initialIndex, children: _screens),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _initialIndex,
        onTap: (i) => setState(() => _initialIndex = i),
        backgroundColor: Colors.white,
        selectedItemColor: CustomColor.grey700Color,
        unselectedItemColor: CustomColor.grey500Color,
        items: _navBarItems,
        selectedColorOpacity: 0,
      ),
    );
  }
}
