import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_trade_journal/pages/settings_widget.dart';
import 'package:smart_trade_journal/pages/statistic_widget.dart';
import 'package:smart_trade_journal/pages/trade_archive_widgets.dart';
import 'package:smart_trade_journal/res/theme.dart';


class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({super.key});
  @override
  State<BottomNavigationBarClass> createState() => _BottomNavigationBarClass();
}
class _BottomNavigationBarClass extends State<BottomNavigationBarClass> {
  int _selectedIndex = 0;
  ThemeData theme = darkTheme;
  static final _widgetOptions = <Widget>[
    const TradeArchiveWidget(),
    const StatisticWidget(),
    const SettingsWidget()
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