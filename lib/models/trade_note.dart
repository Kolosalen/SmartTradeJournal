import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
part 'trade_note.g.dart';



@HiveType(typeId: 0)
@JsonSerializable()
// class TradeNote {
class TradeNote extends HiveObject with EquatableMixin {
  @HiveField(0)
  final String strategy;
  @HiveField(1)
  final DateTime dateTime;
  @HiveField(2)
  final bool result;
  @HiveField(3)
  final double totalAmount;
  @HiveField(4)
  final String notes;

  TradeNote(
      this.strategy, this.dateTime, this.result, this.totalAmount, this.notes);
  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory TradeNote.fromJson(Map<String, dynamic> json) => _$TradeNoteFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TradeNoteToJson(this);

  @override
  List<Object?> get props => [strategy, dateTime, result, totalAmount, notes];

  @override
  bool get stringify => true;
}