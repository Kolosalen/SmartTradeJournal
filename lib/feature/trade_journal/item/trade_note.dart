import 'package:json_annotation/json_annotation.dart';
//import 'package:hive/hive.dart';
part 'trade_note.g.dart';



// @HiveType(typeId: 0)
// class TradeNote extends HiveObject {
@JsonSerializable()
class TradeNote {
  // @HiveField(0)
  late String strategy;
  // @HiveField(1)
  late DateTime dateTime;
  // @HiveField(2)
  bool result = false;
  // @HiveField(3)
  late double totalAmount;
  // @HiveField(4)
  String notes = "";

  TradeNote(
      this.strategy, this.dateTime, this.result, this.totalAmount, this.notes);
  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory TradeNote.fromJson(Map<String, dynamic> json) => _$TradeNoteFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TradeNoteToJson(this);
}