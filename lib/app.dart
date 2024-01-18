import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';
import 'package:smart_trade_journal/bloc/note_list/note_list_bloc.dart';
import 'package:smart_trade_journal/bloc/statistic/statistic_bloc.dart';
import 'package:smart_trade_journal/res/theme.dart';
import 'package:smart_trade_journal/widgets/bottom_navigation_bar_class.dart';

class SmartTradeJournal extends StatelessWidget {
  const SmartTradeJournal({super.key});

  @override
  Widget build(BuildContext context) {
    var enDatesFuture = initializeDateFormatting('en', null);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NoteListBloc(),),
        BlocProvider(create: (context) => StatisticBloc(),),
      ],
      child: GetMaterialApp(
        title: 'Smart Trade Journal',
        theme: darkTheme,
        // routes: {
        //   '/' :(context) => const BottomNavigationBarClass(),
        //   '/addNote':(context) => const AddNoteForm(),
        //   //'/editNote':(context) => EditNoteForm(ModalRoute.of(context)!.settings.arguments as Item.TradeNote),
        //   // Have problem with arguments transfer
        // },
        home: const BottomNavigationBarClass(),
        localizationsDelegates: const [
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en', 'US')],
      ),
    );
  }
}