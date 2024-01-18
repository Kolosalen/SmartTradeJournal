
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_trade_journal/bloc/note_list/note_list_bloc.dart';
import 'package:smart_trade_journal/bloc/statistic/statistic_bloc.dart';
import 'package:smart_trade_journal/res/theme.dart';

import '../res/butt_styles.dart';
import '../res/select_unselected_text_style.dart';

class StatisticWidget extends StatefulWidget {
  const StatisticWidget({super.key});
  final Color leftBarColor = const Color.fromRGBO(60, 142, 21, 1);
  final Color rightBarColor = const Color.fromRGBO(188, 39, 39, 1);


  @override
  State<StatisticWidget> createState() => _StatisticWidgetState();

}
class _StatisticWidgetState extends State<StatisticWidget> {
  ThemeData theme = darkTheme;
  final List<bool> _isSelected = [true, false, false]; // list for toggle switch
  var _butSize = 100.0;
  final double width = 7;
  // DateTime now = DateTime.now();
  // late Box<TradeNote> box;
  // late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;
  // late List<TradeNote> raw;
  int type = 0; // 0 for day, 1 for week, 2 for month
  // List<double> successCountDay = [0, 0, 0, 0, 0, 0, 0];
  // List<double> unsuccessCountDay = [0, 0, 0, 0, 0, 0, 0];
  // List<double> successCountWeek = [0, 0, 0, 0, 0, 0, 0];
  // List<double> unsuccessCountWeek = [0, 0, 0, 0, 0, 0, 0];
  // List<double> successCountMonth = [0, 0, 0, 0, 0, 0];
  // List<double> unsuccessCountMonth = [0, 0, 0, 0, 0, 0];
  // late BarChartGroupData barGroup1;
  // late BarChartGroupData barGroup2;
  // late BarChartGroupData barGroup3;
  // late BarChartGroupData barGroup4;
  // late BarChartGroupData barGroup5;
  // late BarChartGroupData barGroup6;
  // late BarChartGroupData barGroup7;

  // late List<BarChartGroupData> DayBarGroups;
  // late List<BarChartGroupData> WeekBarGroups;
  // late List<BarChartGroupData> MonthBarGroups;

  @override
  initState() {
    super.initState();
    var tmpNoteList = context.read<NoteListBloc>().state.noteList;
    context.read<StatisticBloc>().add(StatisticEvent.init(0, tmpNoteList));
  }

  Widget leftTitles(double value, TitleMeta meta){
    final Widget text = Text(
      value.toInt().toString(),
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    var titles;
    final titlesDay = <String>['00:00', '04:00', '08:00', '12:00', '16:00', '20:00', '23:59'];
    final titlesWeek = <String>['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    final titlesMonth = <String>['1-5', '5-10', '10-15', '15-20', '20-25', '25-30'];
    if (_isSelected[0]) {titles = titlesDay;}
    if (_isSelected[1]) {titles = titlesWeek;}
    if (_isSelected[2]) {titles = titlesMonth;}
    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Statistic',
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
          ),
          centerTitle: true,
          backgroundColor: theme.scaffoldBackgroundColor,
        ),
        body:
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child:
          Column(
            children: [
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.circle, color: Color.fromRGBO(60, 142, 21, 1), size: 8),
                  SizedBox(width: 8,),
                  Text(
                    'Successful',
                    style: TextStyle(color: Color.fromRGBO(60, 142, 21, 1), fontSize: 15),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.circle, color:Color.fromRGBO(188, 39, 39, 1), size: 8),
                  SizedBox(width: 8,),
                  Text(
                    'Unsuccessful',
                    style: TextStyle(color: Color.fromRGBO(188, 39, 39, 1), fontSize: 15),
                  ),
                ],
              ),
              BlocBuilder<StatisticBloc, StatisticState>(
                builder: (context, state) {
                  print(state.showingBarGroups);
                  print(state.type);
                  return Expanded(
                    child: BarChart(
                    BarChartData(
                      minY: 0,
                      alignment: BarChartAlignment.center,
                      barTouchData: BarTouchData(enabled: false),
                      titlesData: FlTitlesData(
                        show: true,
                        leftTitles:  AxisTitles(sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            reservedSize: 30,
                            getTitlesWidget: leftTitles
                        )),
                        topTitles: const AxisTitles(sideTitles: SideTitles(
                          showTitles: false),),
                        rightTitles: const AxisTitles(sideTitles: SideTitles(
                            showTitles: false),),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                            getTitlesWidget:bottomTitles,
                          ),
                        ),
                      ),
                      gridData: FlGridData(
                        show: true,
                        horizontalInterval: 1,
                        getDrawingHorizontalLine: (value) {
                            return const FlLine(
                              color: Color.fromRGBO(255, 255, 255, 0.1),
                              strokeWidth: 3,
                            );
                        },
                        drawVerticalLine: false,
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups:
                      state.type == 2 ? state.showingBarGroups!.take(6).toList() : state.showingBarGroups,
                    ),
                  ),
                );
                },
              ),
              const SizedBox(height:10),
              BlocBuilder<StatisticBloc, StatisticState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 30,
                    child: ToggleButtons(
                      constraints: BoxConstraints(minWidth: _butSize = (MediaQuery.of(context).size.width - 60) / 3,
                        minHeight: 30
                      ),
                      borderRadius: BorderRadius.circular(7),
                      isSelected: _isSelected,
                      onPressed: (int newIndex) {
                        setState(() {
                          // looping through the list of booleans values
                          for (int index = 0; index < _isSelected.length; index++) {
                            // checking for the index value
                            if (index == newIndex) {
                              // one button is always set to true
                              _isSelected[index] = true;
                              context.read<StatisticBloc>().add(StatisticEvent.update(index));
                            } else {
                              // other two will be set to false and not selected
                              _isSelected[index] = false;
                            }
                          }
                          // _result = _isSelected[0];
                        });
                      },
                      children: [
                        Ink(
                          decoration: _isSelected[0] ? const BoxDecoration(
                            gradient: butGradient,
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          ) : null,
                          child: SizedBox(
                              width: _butSize,
                              child: Text('Day',
                                style: _isSelected[0]? selected : unselected,
                                textAlign: TextAlign.center,
                              )
                          ),
                        ),
                        Ink(
                          decoration: _isSelected[1] ? const BoxDecoration(
                            gradient: butGradient,
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          ): null,
                          child: SizedBox(
                              width: _butSize,
                              child: Text('Week',
                                style: _isSelected[1]? selected : unselected,
                                textAlign: TextAlign.center,
                              )
                          ),
                        ),
                        Ink(
                          decoration: _isSelected[2] ? const BoxDecoration(
                            gradient: butGradient,
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          ) : null,
                          child: SizedBox(
                              width: _butSize,
                              child: Text('Month',
                                style: _isSelected[2]? selected : unselected,
                                textAlign: TextAlign.center,
                              )
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ), // end of toggle buttons
            ],
          ),
        ),
      );
  }
}
