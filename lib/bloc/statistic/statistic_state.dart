part of 'statistic_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class StatisticState with _$StatisticState {
  const factory StatisticState(
      {required BarInfo barInfo,
      required int type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<BarChartGroupData>? showingBarGroups}) = _StatisticState;
  // const factory StatisticState.initial(BarInfo barInfo, int type,
  //     List<BarChartGroupData>? showingBarGroups) = _Initial;
  // const factory StatisticState.graph(BarInfo barInfo, int type,
  //     List<BarChartGroupData>? showingBarGroups) = _Graph;

  /// Connect the generated [_$StatisticStateFromJson] function to the `fromJson`
  /// factory.
  factory StatisticState.fromJson(Map<String, dynamic> json) => _$StatisticStateFromJson(json);
}

