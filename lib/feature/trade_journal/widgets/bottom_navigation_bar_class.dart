import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_trade_journal/theme/theme.dart';

class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({super.key});

  @override
  State<BottomNavigationBarClass> createState() => _BottomNavigationBarClass();
}
class _BottomNavigationBarClass extends State<BottomNavigationBarClass> {
  int _selectedIndex = 0;
  ThemeData theme = darkTheme;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Trade Archive',
    ),
    Text(
      'Index 1: Statistic',
    ),
    Text(
      'Index 2: Settings',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/TradeArchive.svg'),
            activeIcon: SvgPicture.asset('assets/svg/TradeArchiveGrad.svg'),
            label: 'Trade Archive',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/Statistic.svg'),
            activeIcon: SvgPicture.asset('assets/svg/StatisticGrad.svg'),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/Settings.svg'),
            activeIcon: SvgPicture.asset('assets/svg/SettingsGrad.svg'),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: theme.tabBarTheme.labelStyle,
        unselectedLabelStyle: theme.tabBarTheme.unselectedLabelStyle,
        onTap: _onItemTapped,
      ),
    );
  }
}