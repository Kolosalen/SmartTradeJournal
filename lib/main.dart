import 'package:flutter/material.dart';
import 'feature/trade_journal/widgets/widgets.dart';
import 'package:smart_trade_journal/theme/theme.dart';

void main() {
  runApp(const SmartTradeJournal());
}

class SmartTradeJournal extends StatelessWidget {
  const SmartTradeJournal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Trade Journal',
      theme: darkTheme,
      home: const BottomNavigationBarClass()
    );
  }
}

