
import 'package:flutter/material.dart';
import 'package:smart_trade_journal/feature/trade_journal/view/add_note_form.dart';
import 'feature/trade_journal/trade_journal.dart';
import 'theme/theme.dart';

class SmartTradeJournal extends StatelessWidget {
  const SmartTradeJournal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Smart Trade Journal',
        theme: darkTheme,
        routes: {
          '/' :(context) =>const BottomNavigationBarClass(),
          '/addNote':(context) => AddNoteForm(),
        }
    );
  }
}