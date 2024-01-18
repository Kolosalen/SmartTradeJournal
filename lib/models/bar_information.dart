
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar_information.g.dart';


@JsonSerializable()
class BarInfo{
  List<double> successCountDay;
  List<double> unsuccessCountDay;
  List<double> successCountWeek;
  List<double> unsuccessCountWeek;
  List<double> successCountMonth;
  List<double> unsuccessCountMonth;

  BarInfo(
      this.successCountDay,
      this.unsuccessCountDay,
      this.successCountWeek,
      this.unsuccessCountWeek,
      this.successCountMonth,
      this.unsuccessCountMonth);

  factory BarInfo.empty(){
    List<double> successCountDay = [0, 0, 0, 0, 0, 0, 0];
    List<double> unsuccessCountDay = [0, 0, 0, 0, 0, 0, 0];
    List<double> successCountWeek = [0, 0, 0, 0, 0, 0, 0];
    List<double> unsuccessCountWeek = [0, 0, 0, 0, 0, 0, 0];
    List<double> successCountMonth = [0, 0, 0, 0, 0, 0];
    List<double> unsuccessCountMonth = [0, 0, 0, 0, 0, 0];
    return BarInfo(successCountDay, unsuccessCountDay, successCountWeek, unsuccessCountWeek, successCountMonth, unsuccessCountMonth);
  }
  /// Connect the generated [_$BarInfoFromJson] function to the `fromJson`
  /// factory.
  factory BarInfo.fromJson(Map<String, dynamic> json) => _$BarInfoFromJson(json);

  /// Connect the generated [_$BarInfoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BarInfoToJson(this);
}