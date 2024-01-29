import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:smart_trade_journal/models/trade_note.dart';
import 'package:smart_trade_journal/res/butt_styles.dart';
import 'package:smart_trade_journal/res/select_unselected_text_style.dart';
import 'package:smart_trade_journal/res/theme.dart';


// Screen where user can create note
// it returns null when user don't create note
// else it returns TradeNote note

class AddNoteForm extends StatefulWidget{
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final theme = darkTheme;
  var _dateVar = DateTime.now().copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
  var _timeVar = TimeOfDay.now();
  DateTime tempDate = DateFormat("hh:mm").parse("${TimeOfDay.now().hour.toString().padLeft(2, '0')}:${TimeOfDay.now().minute.toString().padLeft(2, '0')}");
  final dateFormat = DateFormat("h:mm a");
  final List<bool> _isSelected = [true, false]; // list for toggle switch
  var _butSize = 100.0; // Пусть будет 100
  late bool _isDisabled;
  String _strategy = '';
  bool _result = false;
  double _totalAmount = 0;
  bool _totalAmountSet = false;
  String _note = '';
  late TradeNote item; // returning class

  @override
  void initState() {
    super.initState();
    _isDisabled = true;
    _result = _isSelected[0];
  }
  void _checkFields(){
    if (_strategy.isNotEmpty && _totalAmountSet){
      setState(() {
        _isDisabled = false;
      });
    }else{
      setState(() {
        _isDisabled = true;
      });
    }
  }
  void _setTradeNote(){
    item = TradeNote(
      _strategy,
      _dateVar.add(Duration(hours: _timeVar.hour, minutes: _timeVar.minute)),
      _result,
      _totalAmount,
      _note,
    );
  }
  void _sentNote(){
    _setTradeNote();
    Get.back(result: item);
    // Navigator.of(context).pop(item);
  }


  Widget DateCuppertino(DateTime startDate) {
    var date = startDate;
    return Column(
      children: [
        Row(
        children:[
          TextButton(
            child: const Text("Cancel", style: TextStyle(fontFamily:"Sarala", color: Colors.grey),),
            onPressed: () {
              Get.back();
            },
          ),
          const Spacer(),
          TextButton(
            child: const Text("Reset", style: TextStyle(fontFamily:"Sarala", color: Color(0xFF5a69ed),
            ),),
            onPressed: () {
              setState(() {
                _dateVar = DateTime.now();
                date = startDate;
                Get.back();
                Get.bottomSheet(DateCuppertino(_dateVar),
                    backgroundColor: const Color.fromRGBO(33, 39, 56, 1)
                );
              });
            },
          ),
          ]
        ),
        Expanded(
            child: CupertinoTheme(
              data: const CupertinoThemeData(
                textTheme: CupertinoTextThemeData(
                  dateTimePickerTextStyle: TextStyle(color: Colors.white, fontSize: 20,
                      fontFamily:"Sarala"),
                ),
              ),
              child: SafeArea(
                child: CupertinoDatePicker(
                  initialDateTime: date,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (newDate) {
                    setState(() {
                      date = newDate;
                    });
                  },
                ),
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: ElevatedButton(
              onPressed: (){
                setState(() {
                  _dateVar = date;
                  Get.back();
                });
              },
              style: butStyle,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  gradient: butGradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Select date", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                  ],
                ),
              )
          ),
        ),
      ],
    );
}

  Widget TimeCuppertino(DateTime startTime) {
    var time = startTime;
    return Column(
      children: [
        Row(
            children:[
              TextButton(
                child: const Text("Cancel", style: TextStyle(fontFamily:"Sarala", color: Colors.grey),),
                onPressed: () {
                  Get.back();
                },
              ),
              const Spacer(),
              TextButton(
                child: const Text("Reset", style: TextStyle(fontFamily:"Sarala", color: Color(0xFF5a69ed),
                ),),
                onPressed: () {
                  setState(() {
                    _timeVar = TimeOfDay.now();
                    time = startTime;
                    tempDate = DateFormat("hh:mm").parse("${_timeVar.hour.toString().padLeft(2, '0')}:${_timeVar.minute.toString().padLeft(2, '0')}");
                    Get.back();
                    Get.bottomSheet(TimeCuppertino(DateTime(1,0,0).add(Duration(hours: _timeVar.hour, minutes: _timeVar.minute))),
                        backgroundColor: const Color.fromRGBO(33, 39, 56, 1)
                    );
                  });
                },
              ),
            ]
        ),
        Expanded(
          child: CupertinoTheme(
            data: const CupertinoThemeData(
              textTheme: CupertinoTextThemeData(
                dateTimePickerTextStyle: TextStyle(color: Colors.white, fontSize: 20,
                    fontFamily:"Sarala"),
              ),
            ),
            child: SafeArea(
              child: CupertinoDatePicker(
                minimumYear: 0,
                initialDateTime: time,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (newDate) {
                  setState(() {
                    time = newDate;
                  });
                },
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: ElevatedButton(
              onPressed: (){
                setState(() {
                  _timeVar = TimeOfDay.fromDateTime(time);
                  tempDate = DateFormat("hh:mm").parse("${_timeVar.hour.toString().padLeft(2, '0')}:${_timeVar.minute.toString().padLeft(2, '0')}");
                  Get.back();
                });
              },
              style: butStyle,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  gradient: butGradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Select time", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                  ],
                ),
              )
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            height: 1,
            color: Colors.grey,
          ),
        ),
        leadingWidth: 106,
        leading: TextButton(
          style: ButtonStyle(
            iconColor: MaterialStateProperty.all(const Color(0xFF0A84FF))
          ),
          onPressed: () {
            Get.back();
            // Navigator.pop(context);
          },
          child: const Row(
            children: [
              Icon(Icons.arrow_back_ios),
              Text("Archive",
                  style: TextStyle(//Не даёт достать стиль labelSmall из theme.dart ебал рот
                      color: Color.fromRGBO(10, 132, 255, 1),
                      fontSize: 17,fontFamily:"Sarala")
              ),
            ]
          )
        ),
        centerTitle: true,
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text("Add Note", textAlign: TextAlign.center, style: theme.textTheme.titleMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Strategy', style: theme.textTheme.bodySmall,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                child: SizedBox(
                  height: 48,
                  child: TextField(
                    style: theme.textTheme.bodyMedium,
                    decoration: InputDecoration(
                      fillColor: const Color.fromRGBO(55, 60, 76, 1),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 16),
                      hintStyle: theme.textTheme.bodyMedium,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                      ),
                      hintText: 'Enter a search term',
                    ),
                    onChanged: (val){
                      setState(() {
                        _strategy = val;
                        _checkFields();
                      });
                    },
                  ),
                ),
              ),
              Text('Date and time', style: theme.textTheme.bodySmall,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                child: SizedBox(
                  height: 48,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 17,
                        child: TextField(//Date picker
                          readOnly: true,
                          style: theme.textTheme.titleMedium,
                          controller: TextEditingController(text: DateFormat.yMMMMd().format(_dateVar).toString()),
                          onTap: (){
                            Get.bottomSheet(DateCuppertino(_dateVar),
                                backgroundColor: const Color.fromRGBO(33, 39, 56, 1)
                            );
                          },
                          decoration: const InputDecoration(
                            fillColor: Color.fromRGBO(55, 60, 76, 1),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(vertical:10 ,horizontal: 16),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Flexible(
                        flex: 10,
                        child: TextField(//Time picker
                          readOnly: true,
                          style: theme.textTheme.titleMedium,
                          controller: TextEditingController(text: dateFormat.format(tempDate)),
                          onTap: (){
                            Get.bottomSheet(TimeCuppertino(DateTime(1,0,0).add(Duration(hours: _timeVar.hour, minutes: _timeVar.minute))),
                                backgroundColor: const Color.fromRGBO(33, 39, 56, 1)
                            );
                          },
                          decoration: const InputDecoration(
                            fillColor: Color.fromRGBO(55, 60, 76, 1),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(vertical:10 ,horizontal: 16),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0))
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text('Result', style: theme.textTheme.bodySmall,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                child: SizedBox(
                  height: 28,
                  child: ToggleButtons(
                    constraints: BoxConstraints(minWidth: _butSize = (MediaQuery.of(context).size.width - 55) / 2),
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
                          } else {
                            // other two will be set to false and not selected
                            _isSelected[index] = false;
                          }
                        }
                        _result = _isSelected[0];
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
                            child: Text('Successful',
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
                            child: Text('Unsuccessful',
                              style: _isSelected[1]? selected : unselected,
                              textAlign: TextAlign.center,
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text('Total amount', style: theme.textTheme.bodySmall,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                child: SizedBox(
                height: 48,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: theme.textTheme.bodyMedium,
                  decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(55, 60, 76, 1),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(vertical:10 ,horizontal: 16),
                    hintStyle: theme.textTheme.bodyMedium,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    hintText: 'Enter total amount',
                  ),
                  onChanged: (val){
                    setState(() {
                      if (val.isNotEmpty && double.parse(val) != _totalAmount){
                      _totalAmountSet = true;
                      _totalAmount = double.parse(val);
                      }else{
                        _totalAmountSet = false;
                        _totalAmount = 0;
                      }
                      _checkFields();
                    });
                  }
                ),
              ),
              ),
              Text('Notes (optional)', style: theme.textTheme.bodySmall,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.20,
                child: TextField(
                  minLines: null,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  style: theme.textTheme.bodyMedium,
                  decoration: InputDecoration(
                    fillColor: const Color.fromRGBO(55, 60, 76, 1),
                    filled: true,
                    contentPadding: const EdgeInsets.all(16),
                    hintStyle: theme.textTheme.bodyMedium,
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    hintText: 'Enter additional text',
                  ),
                  onChanged: (val){
                    setState(() {
                      _note = val;
                    });
                  }
                ),
              ),
              Opacity(
                opacity: _isDisabled ? 0.5 : 1.0,
                child: ElevatedButton(
                    onPressed: _isDisabled ? null : _sentNote,
                    style: butStyle,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          gradient: butGradient,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Submit", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                        ],
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
//
// class DateCupertinoPicker extends StatefulWidget {
//   const DateCupertinoPicker(this.startDate, {super.key});
//   final startDate;
//   @override
//   State<DateCupertinoPicker> createState() => _DateCupertinoPickerState(startDate);
// }
//
// class _DateCupertinoPickerState extends State<DateCupertinoPicker> {
//   _DateCupertinoPickerState(this.date);
//   var date;
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoDatePicker(
//       initialDateTime: date,
//       mode: CupertinoDatePickerMode.date,
//       onDateTimeChanged: (newDate) {
//         setState(() {
//           date = newDate;
//         });
//       },
//     );
//   }
//

// }
// class DateTimeNotifier extends ValueNotifier<DateTime>{
//   DateTimeNotifier(DateTime value) : super(value);
//
//   void changeDateTime()
// }