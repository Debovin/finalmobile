import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:find_job_app/offices_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class DataProvider extends ChangeNotifier {
  var _bottomNavIndex = 0;
  List<Widget> _pages = [HomePage(), OfficesPage()];
  List<Widget> get pages => _pages;
  get bottomNavIndex => _bottomNavIndex;

  setBottomNavIndex(value) {
    _bottomNavIndex = value;
    notifyListeners();
  }
}

const kBottomNavIconList = <IconData>[Icons.person, Icons.house];

AnimatedBottomNavigationBar getBottomBar(DataProvider provider, context) {
  // DataProvider dataProvider = Provider.of<DataProvider>(context);
  return AnimatedBottomNavigationBar(
    icons: kBottomNavIconList,
    inactiveColor: Colors.blue[900],
    activeColor: Colors.grey,
    gapLocation: GapLocation.none,
    activeIndex: provider._bottomNavIndex,
    onTap: (index) => provider.setBottomNavIndex(index),
  );
}
