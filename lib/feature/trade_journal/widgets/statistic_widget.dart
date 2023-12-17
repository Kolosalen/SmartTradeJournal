
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:smart_trade_journal/theme/theme.dart';
import 'package:smart_trade_journal/feature/trade_journal/trade_journal.dart';

import '../../../theme/butt_styles.dart';
import '../../../theme/select_unselected_text_style.dart';

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
  DateTime now = DateTime.now();
  late Box<TradeNote> box;
  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;
  late List<TradeNote> raw;
  int type = 0; // 0 for day, 1 for week, 2 for month
  List<double> successCountDay = [0, 0, 0, 0, 0, 0, 0];
  List<double> unsuccessCountDay = [0, 0, 0, 0, 0, 0, 0];
  List<double> successCountWeek = [0, 0, 0, 0, 0, 0, 0];
  List<double> unsuccessCountWeek = [0, 0, 0, 0, 0, 0, 0];
  List<double> successCountMonth = [0, 0, 0, 0, 0, 0];
  List<double> unsuccessCountMonth = [0, 0, 0, 0, 0, 0];
  late BarChartGroupData barGroup1;
  late BarChartGroupData barGroup2;
  late BarChartGroupData barGroup3;
  late BarChartGroupData barGroup4;
  late BarChartGroupData barGroup5;
  late BarChartGroupData barGroup6;
  late BarChartGroupData barGroup7;

  // late List<BarChartGroupData> DayBarGroups;
  // late List<BarChartGroupData> WeekBarGroups;
  // late List<BarChartGroupData> MonthBarGroups;

  @override
  initState() {
    super.initState();
    Box<TradeNote> box =  Hive.box<TradeNote>('trade_note');
    box.values.where((val) => val.dateTime.compareTo(DateTime(now.year, now.month, now.day) // success and unsuccess Day Count
        .subtract(const Duration(days: 1))) >= 0).forEach((element) {
          switch (TimeOfDay.fromDateTime(element.dateTime).hour) {
            case <= 2:
              element.result ? successCountDay[0]++ : unsuccessCountDay[0]++;
              break;
            case > 2 && < 4:
              element.result ? successCountDay[1]++ : unsuccessCountDay[1]++;
              break;
            case >= 4 && < 8:
              element.result ? successCountDay[2]++ : unsuccessCountDay[2]++;
              break;
            case >= 8 && < 12:
              element.result ? successCountDay[3]++ : unsuccessCountDay[3]++;
              break;
            case >= 12 && < 16:
              element.result ? successCountDay[4]++ : unsuccessCountDay[4]++;
              break;
            case >= 16 && < 20:
              element.result ? successCountDay[5]++ : unsuccessCountDay[5]++;
              break;
            case >= 20 && <= 23:
              element.result ? successCountDay[6]++ : unsuccessCountDay[6]++;
              break;
          }
        });
    box.values.where((val) => val.dateTime.compareTo(DateTime(now.year, now.month, now.day)// success and unsuccess week Count
        .subtract(const Duration(days: 7))) >= 0).forEach((element) {
          element.result ?
          successCountWeek[element.dateTime.weekday-1] += 1 :
          unsuccessCountWeek[element.dateTime.weekday-1] += 1;
        });
    box.values.where((val) => val.dateTime.compareTo(DateTime(now.year, now.month-1)) >= 0).forEach((element) {
      switch (element.dateTime.day) {
        case <= 5:
          element.result ? successCountMonth[0]++ : unsuccessCountMonth[0]++;
          break;
        case >= 5 && <= 10:
          element.result ? successCountMonth[1]++ : unsuccessCountMonth[1]++;
          break;
        case >= 10 && <= 15:
          element.result ? successCountMonth[1]++ : unsuccessCountMonth[1]++;
          break;
        case >= 15 && <= 20:
          element.result ? successCountMonth[1]++ : unsuccessCountMonth[1]++;
          break;
        case >= 20 && <= 25:
          element.result ? successCountMonth[1]++ : unsuccessCountMonth[1]++;
          break;
        case >= 25 && <= 31:
          element.result ? successCountMonth[5]++ : unsuccessCountMonth[5]++;
          break;
      }
    });// success and unsuccess Month Count

    final barGroup1 = makeGroupData(0, successCountDay[0], unsuccessCountDay[0]);
    final barGroup2 = makeGroupData(1, successCountDay[1], unsuccessCountDay[1]);
    final barGroup3 = makeGroupData(2, successCountDay[2], unsuccessCountDay[2]);
    final barGroup4 = makeGroupData(3, successCountDay[3], unsuccessCountDay[3]);
    final barGroup5 = makeGroupData(4, successCountDay[4], unsuccessCountDay[4]);
    final barGroup6 = makeGroupData(5, successCountDay[5], unsuccessCountDay[5]);
    final barGroup7 = makeGroupData(6, successCountDay[6], unsuccessCountDay[6]);
    // barGroup1 = makeGroupData(0, 1, 8);
    // barGroup2 = makeGroupData(1, 2, 9);
    // barGroup3 = makeGroupData(2, 3, 10);
    // barGroup4 = makeGroupData(3, 4, 11);
    // barGroup5 = makeGroupData(4, 5, 12);
    // barGroup6 = makeGroupData(5, 6, 13);
    // barGroup7 = makeGroupData(6, 7, 14);
    var items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }


  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width,
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width,
        ),
      ],
    );
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
            Expanded(
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
                  barGroups: showingBarGroups,
                ),
              ),
            ),
            const SizedBox(height:10),
            SizedBox(
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
                        switch(index){
                          case 0:

                            barGroup1 = makeGroupData(0, successCountDay[0], unsuccessCountDay[0]);
                            barGroup2 = makeGroupData(1, successCountDay[1], unsuccessCountDay[1]);
                            barGroup3 = makeGroupData(2, successCountDay[2], unsuccessCountDay[2]);
                            barGroup4 = makeGroupData(3, successCountDay[3], unsuccessCountDay[3]);
                            barGroup5 = makeGroupData(4, successCountDay[4], unsuccessCountDay[4]);
                            barGroup6 = makeGroupData(5, successCountDay[5], unsuccessCountDay[5]);
                            barGroup7 = makeGroupData(6, successCountDay[6], unsuccessCountDay[6]);
                            showingBarGroups = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5, barGroup6, barGroup7];
                            break;
                          case 1:
                            barGroup1 = makeGroupData(0, successCountWeek[0], unsuccessCountWeek[0]);
                            barGroup2 = makeGroupData(1, successCountWeek[1], unsuccessCountWeek[1]);
                            barGroup3 = makeGroupData(2, successCountWeek[2], unsuccessCountWeek[2]);
                            barGroup4 = makeGroupData(3, successCountWeek[3], unsuccessCountWeek[3]);
                            barGroup5 = makeGroupData(4, successCountWeek[4], unsuccessCountWeek[4]);
                            barGroup6 = makeGroupData(5, successCountWeek[5], unsuccessCountWeek[5]);
                            barGroup7 = makeGroupData(6, successCountWeek[6], unsuccessCountWeek[6]);
                            showingBarGroups = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5, barGroup6, barGroup7];
                            break;
                          case 2:
                            barGroup1 = makeGroupData(0, successCountMonth[0], unsuccessCountMonth[0]);
                            barGroup2 = makeGroupData(1, successCountMonth[1], unsuccessCountMonth[1]);
                            barGroup3 = makeGroupData(2, successCountMonth[2], unsuccessCountMonth[2]);
                            barGroup4 = makeGroupData(3, successCountMonth[3], unsuccessCountMonth[3]);
                            barGroup5 = makeGroupData(4, successCountMonth[4], unsuccessCountMonth[4]);
                            barGroup6 = makeGroupData(5, successCountMonth[5], unsuccessCountMonth[5]);
                            showingBarGroups = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5, barGroup6];
                            break;
                        }
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
            ), // end of toggle buttons
          ],
        ),
      ),
    );
  }
}
