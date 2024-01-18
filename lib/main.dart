import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'app.dart';

// import 'feature/trade_journal/Item/trade_note.g.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  // Hive..initFlutter()
  // ..registerAdapter(TradeNoteAdapter());
  // await openHiveBox('trade_note');
  runApp(const SmartTradeJournal());
}

// старое
// void main() async {
//   // Hive..initFlutter()
//   // ..registerAdapter(TradeNoteAdapter());
//   // await openHiveBox('trade_note');
//   runApp(const SmartTradeJournal());
// }
//
// Future<Box> openHiveBox(String boxName) async {
//   if (!kIsWeb && !Hive.isBoxOpen(boxName)) {
//     Hive.init((await getApplicationDocumentsDirectory()).path);
//   }
//
//   return await Hive.openBox<TradeNote>(boxName);
// }
