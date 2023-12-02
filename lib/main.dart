import 'dart:io';
import 'package:flutter/material.dart';
import 'package:smart_trade_journal/feature/trade_journal/trade_journal.dart';
import 'app.dart';
import 'package:hive/hive.dart';

// import 'feature/trade_journal/Item/trade_note.g.dart';



void main() async {
  var path = Directory.current.path;
  await Hive..init(path)
  ..registerAdapter(TradeNoteAdapter());
  final box = await Hive.openBox<TradeNote>('trade_note');
  runApp(SmartTradeJournal(box));
}


