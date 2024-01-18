
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:smart_trade_journal/models/bar_information.dart';

import '../../models/trade_note.dart';

part 'statistic_event.dart';
part 'statistic_bloc.g.dart';
part 'statistic_bloc.freezed.dart';
part 'statistic_state.dart';

class StatisticBloc extends HydratedBloc<StatisticEvent, StatisticState> {


  StatisticBloc() : super( StatisticState(barInfo: BarInfo.empty(), type: 0)) {
    on<_Init>((event, emit) {
      DateTime now = DateTime.now();
      BarInfo newBarInfo = BarInfo.empty();
      event.noteList.where((val) => val.dateTime.compareTo(DateTime(now.year, now.month, now.day) // success and unsuccess Day Count
          .subtract(const Duration(days: 1))) >= 0).forEach((element) {
        switch (TimeOfDay.fromDateTime(element.dateTime).hour) {
          case <= 2:
            element.result ? newBarInfo.successCountDay[0]++ : newBarInfo.unsuccessCountDay[0]++;
            break;
          case > 2 && < 4:
            element.result ? newBarInfo.successCountDay[1]++ : newBarInfo.unsuccessCountDay[1]++;
            break;
          case >= 4 && < 8:
            element.result ? newBarInfo.successCountDay[2]++ : newBarInfo.unsuccessCountDay[2]++;
            break;
          case >= 8 && < 12:
            element.result ? newBarInfo.successCountDay[3]++ : newBarInfo.unsuccessCountDay[3]++;
            break;
          case >= 12 && < 16:
            element.result ? newBarInfo.successCountDay[4]++ : newBarInfo.unsuccessCountDay[4]++;
            break;
          case >= 16 && < 20:
            element.result ? newBarInfo.successCountDay[5]++ : newBarInfo.unsuccessCountDay[5]++;
            break;
          case >= 20 && <= 23:
            element.result ? newBarInfo.successCountDay[6]++ : newBarInfo.unsuccessCountDay[6]++;
            break;
        }
      });
      event.noteList.where((val) => val.dateTime.compareTo(DateTime(now.year, now.month, now.day)// success and unsuccess week Count
          .subtract(const Duration(days: 7))) >= 0).forEach((element) {
        element.result ?
        newBarInfo.successCountWeek[element.dateTime.weekday-1] += 1 :
        newBarInfo.unsuccessCountWeek[element.dateTime.weekday-1] += 1;
      });
      event.noteList.where((val) => val.dateTime.compareTo(DateTime(now.year, now.month-1)) >= 0).forEach((element) {
        switch (element.dateTime.day) {
          case <= 5:
            element.result ? newBarInfo.successCountMonth[0]++ : newBarInfo.unsuccessCountMonth[0]++;
            break;
          case >= 5 && <= 10:
            element.result ? newBarInfo.successCountMonth[1]++ : newBarInfo.unsuccessCountMonth[1]++;
            break;
          case >= 10 && <= 15:
            element.result ? newBarInfo.successCountMonth[2]++ : newBarInfo.unsuccessCountMonth[2]++;
            break;
          case >= 15 && <= 20:
            element.result ? newBarInfo.successCountMonth[3]++ : newBarInfo.unsuccessCountMonth[3]++;
            break;
          case >= 20 && <= 25:
            element.result ? newBarInfo.successCountMonth[4]++ : newBarInfo.unsuccessCountMonth[4]++;
            break;
          case >= 25 && <= 31:
            element.result ? newBarInfo.successCountMonth[5]++ : newBarInfo.unsuccessCountMonth[5]++;
            break;
        }
      });

      var barGroup1 = makeGroupData(0, newBarInfo.successCountDay[0], newBarInfo.unsuccessCountDay[0]);
      var barGroup2 = makeGroupData(1, newBarInfo.successCountDay[1], newBarInfo.unsuccessCountDay[1]);
      var barGroup3 = makeGroupData(2, newBarInfo.successCountDay[2], newBarInfo.unsuccessCountDay[2]);
      var barGroup4 = makeGroupData(3, newBarInfo.successCountDay[3], newBarInfo.unsuccessCountDay[3]);
      var barGroup5 = makeGroupData(4, newBarInfo.successCountDay[4], newBarInfo.unsuccessCountDay[4]);
      var barGroup6 = makeGroupData(5, newBarInfo.successCountDay[5], newBarInfo.unsuccessCountDay[5]);
      var barGroup7 = makeGroupData(6, newBarInfo.successCountDay[6], newBarInfo.unsuccessCountDay[6]);
      var showingBarGroups = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5, barGroup6, barGroup7];// success and unsuccess Month Count
        emit(state.copyWith(barInfo: newBarInfo, showingBarGroups: showingBarGroups, type: 0));
    });
    on<_Update>((event, emit) {
      BarInfo barInfo = state.barInfo;
      List<BarChartGroupData> showingBarGroups;
      switch (event.type){
        case 0://day
          var barGroup1 = makeGroupData(0, barInfo.successCountDay[0], barInfo.unsuccessCountDay[0]);
          var barGroup2 = makeGroupData(1, barInfo.successCountDay[1], barInfo.unsuccessCountDay[1]);
          var barGroup3 = makeGroupData(2, barInfo.successCountDay[2], barInfo.unsuccessCountDay[2]);
          var barGroup4 = makeGroupData(3, barInfo.successCountDay[3], barInfo.unsuccessCountDay[3]);
          var barGroup5 = makeGroupData(4, barInfo.successCountDay[4], barInfo.unsuccessCountDay[4]);
          var barGroup6 = makeGroupData(5, barInfo.successCountDay[5], barInfo.unsuccessCountDay[5]);
          var barGroup7 = makeGroupData(6, barInfo.successCountDay[6], barInfo.unsuccessCountDay[6]);
          showingBarGroups = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5, barGroup6, barGroup7];
          print(showingBarGroups.length);
          emit(state.copyWith(showingBarGroups: showingBarGroups, type: event.type));
          break;
        case 1://week
          var barGroup1 = makeGroupData(0, barInfo.successCountWeek[0], barInfo.unsuccessCountWeek[0]);
          var barGroup2 = makeGroupData(1, barInfo.successCountWeek[1], barInfo.unsuccessCountWeek[1]);
          var barGroup3 = makeGroupData(2, barInfo.successCountWeek[2], barInfo.unsuccessCountWeek[2]);
          var barGroup4 = makeGroupData(3, barInfo.successCountWeek[3], barInfo.unsuccessCountWeek[3]);
          var barGroup5 = makeGroupData(4, barInfo.successCountWeek[4], barInfo.unsuccessCountWeek[4]);
          var barGroup6 = makeGroupData(5, barInfo.successCountWeek[5], barInfo.unsuccessCountWeek[5]);
          var barGroup7 = makeGroupData(6, barInfo.successCountWeek[6], barInfo.unsuccessCountWeek[6]);
          showingBarGroups = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5, barGroup6, barGroup7];
          print(showingBarGroups.length);
          emit(state.copyWith(showingBarGroups: showingBarGroups, type: event.type));
          break;
        case 2://month
          var barGroup1 = makeGroupData(0, barInfo.successCountMonth[0],barInfo.unsuccessCountMonth[0]);
          var barGroup2 = makeGroupData(1, barInfo.successCountMonth[1],barInfo.unsuccessCountMonth[1]);
          var barGroup3 = makeGroupData(2, barInfo.successCountMonth[2],barInfo.unsuccessCountMonth[2]);
          var barGroup4 = makeGroupData(3, barInfo.successCountMonth[3],barInfo.unsuccessCountMonth[3]);
          var barGroup5 = makeGroupData(4, barInfo.successCountMonth[4],barInfo.unsuccessCountMonth[4]);
          var barGroup6 = makeGroupData(5, barInfo.successCountMonth[5],barInfo.unsuccessCountMonth[5]);
          showingBarGroups = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5, barGroup6, ];
          print(showingBarGroups.length);
          emit(state.copyWith(showingBarGroups: showingBarGroups, type: event.type));
          break;
      }
      
    });
  }
  // TODO: check that work
  @override
  StatisticState? fromJson(Map<String, dynamic> json) => json['state'] as StatisticState;
  @override
  Map<String, dynamic>? toJson(StatisticState state) => { 'state': state.toJson() };
}

BarChartGroupData makeGroupData(int x, double y1, double y2) {
  return BarChartGroupData(
    barsSpace: 4,
    x: x,
    barRods: [
      BarChartRodData(
        toY: y1,
        color: const Color.fromRGBO(60, 142, 21, 1),
        width: 7,
      ),
      BarChartRodData(
        toY: y2,
        color: const Color.fromRGBO(188, 39, 39, 1),
        width: 7,
      ),
    ],
  );
}