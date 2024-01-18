part of 'statistic_bloc.dart';

@freezed
class StatisticEvent with _$StatisticEvent {
  const factory StatisticEvent.init(int type, List<TradeNote> noteList) = _Init;
  const factory StatisticEvent.update(int type) = _Update;
}
