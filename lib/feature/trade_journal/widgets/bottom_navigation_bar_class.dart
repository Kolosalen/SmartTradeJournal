import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:smart_trade_journal/feature/trade_journal/trade_journal.dart';
import 'package:smart_trade_journal/theme/theme.dart';

class BottomNavigationBarClass extends StatefulWidget {
  BottomNavigationBarClass(this.tradeNoteBox, {super.key});
  final Box<TradeNote> tradeNoteBox;
  @override
  State<BottomNavigationBarClass> createState() => _BottomNavigationBarClass();
}
class _BottomNavigationBarClass extends State<BottomNavigationBarClass> {
  int _selectedIndex = 0;
  ThemeData theme = darkTheme;
  late final Box<TradeNote> tradeNoteBox;
  late final List<Widget> _widgetOptions;
  @override
  void initState() {
    tradeNoteBox = widget.tradeNoteBox;
    _widgetOptions = <Widget>[
      TradeArchiveWidget(tradeNoteBox),
      const Text(
        'Index 1: Statistic',
      ),
      const Text(
        'Index 2: Settings',
      ),
    ];
    super.initState();
  }



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