
import 'package:hive/hive.dart';
part 'trade_note.g.dart';
//have some strange errors

@HiveType(typeId: 0)
class TradeNote extends HiveObject {
  @HiveField(0)
  late String strategy;
  @HiveField(1)
  late DateTime dateTime;
  @HiveField(2)
  bool result = false;
  @HiveField(3)
  late double totalAmount;
  @HiveField(4)
  String notes = "";

  TradeNote(
      this.strategy, this.dateTime, this.result, this.totalAmount, this.notes);

}