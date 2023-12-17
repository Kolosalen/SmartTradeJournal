import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';
import 'package:smart_trade_journal/feature/trade_journal/trade_journal.dart';
import 'theme/theme.dart';

class SmartTradeJournal extends StatelessWidget {
  const SmartTradeJournal({super.key});
  @override
  Widget build(BuildContext context) {
    var enDatesFuture = initializeDateFormatting('en', null);
    return MaterialApp(
        title: 'Smart Trade Journal',
        theme: darkTheme,
        routes: {
          '/' :(context) => const BottomNavigationBarClass(),
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