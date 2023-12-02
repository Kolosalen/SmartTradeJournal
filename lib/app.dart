import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';
import 'feature/trade_journal/trade_journal.dart';
import 'theme/theme.dart';

class SmartTradeJournal extends StatelessWidget {
  SmartTradeJournal(this.tradeNoteBox, {super.key});
  final Box<TradeNote> tradeNoteBox;
  @override
  Widget build(BuildContext context) {
    var enDatesFuture = initializeDateFormatting('en', null);
    return MaterialApp(
        title: 'Smart Trade Journal',
        theme: darkTheme,
        routes: {
          '/' :(context) => BottomNavigationBarClass(tradeNoteBox),
          '/addNote':(context) => const AddNoteForm(),
          //'/editNote':(context) => EditNoteForm(ModalRoute.of(context)!.settings.arguments as Item.TradeNote),
          // Have problem with arguments transfer
        },
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', 'US')],
    );
  }
}