import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_trade_journal/theme/butt_styles.dart';
import 'package:smart_trade_journal/theme/select_unselected_text_style.dart';
import 'package:smart_trade_journal/theme/theme.dart';
import 'package:smart_trade_journal/feature/trade_journal/trade_journal.dart';
import 'package:smart_trade_journal/theme/dialog_style.dart';



class EditNoteForm extends StatefulWidget{

  final TradeNote notes;
  const EditNoteForm( this.notes, {super.key});

  @override
  State<EditNoteForm> createState() => _EditNoteFormState();
}

class _EditNoteFormState extends State<EditNoteForm> {
  final theme = darkTheme;
  late DateTime _dateVar;
  late TimeOfDay _timeVar;
  DateTime tempDate = DateFormat("hh:mm").parse("${TimeOfDay.now().hour.toString().padLeft(2, '0')}:${TimeOfDay.now().minute.toString().padLeft(2, '0')}");
  final dateFormat = DateFormat("h:mm a");
  final List<bool> _isSelected = [true, false]; // list for toggle switch
  var _butSize = 100.0; // Пусть будет 100
  late bool _isDisabled;
  String _strategy = '';
  bool _result = false;
  double _totalAmount = 0;
  bool _totalAmountSet = true;
  String _note = '';
  late TradeNote item; // getting and returning class
  bool _isEdited = false;


  @override
  void initState() {
    super.initState();
    _isDisabled = true;
    _totalAmountSet = true;
    _result = _isSelected[0];
    item = widget.notes;
    _strategy = item.strategy;
    _result = item.result;
    _isSelected[0] = item.result;
    _isSelected[1] = !item.result;
    _totalAmount = item.totalAmount;
    _dateVar = item.dateTime.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
    _timeVar = TimeOfDay.fromDateTime(item.dateTime);
    _note = item.notes;
    tempDate = DateFormat("hh:mm").parse("${_timeVar.hour.toString().padLeft(2, '0')}:${_timeVar.minute.toString().padLeft(2, '0')}");
  }

  void _checkFields(){
    if (_strategy.isNotEmpty && _totalAmountSet && _isEdited){
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
    Navigator.of(context).pop(item);
  }

  void delete(){
    Navigator.of(context).pop(null);
  }


  Future<void> _saveChangesDialogBuilder(BuildContext context){
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(// set up the AlertDialog
          title: const Text("Save changes?"),
          content: const Text("If you leave now, changes will not be saved"),
          actions: [
            TextButton(
              child: const Text("Cancel", style: noTextStyle,),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Save", style: yesTextStyle,),
              onPressed: () {
                Navigator.of(context).pop();
                _sentNote();
              },
            ),

          ],
        );
      },
    );
  }

  Future<void> _deleteDialogBuilder(BuildContext context){
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(// set up the AlertDialog
          title: const Text("Delete?"),
          content: const Text("Are you sure you want to delete this note?"),
          actions: [
            TextButton(
              child: const Text("Cancel", style: noTextStyle,),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Delete", style: deleteTextStyle),
              onPressed: () {
                Navigator.of(context).pop();
                delete();
              },
            ),

          ],
        );
      },
    );
  }

  var strategyController = TextEditingController();
  var amountController = TextEditingController();
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
                _isEdited ? _saveChangesDialogBuilder(context) : _sentNote();
              },
              child: const Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text("Archive",
                        style: TextStyle(//Не даёт достать стиль labelSmall из theme.dart ебал рот
                            color: Color.fromRGBO(10, 132, 255, 1), //python_is_trash references
                            fontSize: 17,fontFamily:"Sarala")
                    ),
                  ]
              )
          ),
          actions: [
            Opacity(
              opacity: _isDisabled ? 0.5 : 1.0,
              child: TextButton(
                  onPressed: _isDisabled? null : _sentNote,
                  child: Text("Save", style: theme.textTheme.labelSmall)),
            )
          ],
          centerTitle: true,
          backgroundColor: theme.scaffoldBackgroundColor,
          title: Text(item.strategy, textAlign: TextAlign.center, style: theme.textTheme.titleMedium),
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
                      controller: strategyController..text=_strategy
                        ..selection = TextSelection.collapsed(offset: strategyController.text.length),
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
                      // onChanged: (val){
                      //   setState(() {
                      //     _strategy = val;
                      //     _checkFields();
                      //   });
                      // },
                      onSubmitted: (val){
                        setState(() {
                          _strategy = val;
                          _isEdited = true;
                          _checkFields();
                        });
                      },
                    ),
                  ),
                ),//Strategy field
                Text('Date and time', style: theme.textTheme.bodySmall,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                  child: SizedBox(
                    height: 48,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 20,
                          child: TextField(//Date picker
                            style: theme.textTheme.titleMedium,
                            controller: TextEditingController(text: DateFormat.yMMMMd().format(_dateVar).toString()),
                            canRequestFocus: false,
                            onTap: (){
                              showDatePicker(
                                context: context,
                                initialDate: _dateVar,
                                firstDate: DateTime(2015),
                                lastDate: DateTime(2101),
                              ).then((date) {
                                if (date!= null) {
                                  setState(() {
                                    _dateVar = date;
                                    _isEdited = true;
                                    _checkFields();
                                  });
                                }
                              });
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
                            style: theme.textTheme.titleMedium,
                            controller: TextEditingController(text: dateFormat.format(tempDate)),
                            canRequestFocus: false,
                            onTap: (){
                              showTimePicker(
                                  context: context,
                                  initialTime: _timeVar,
                                  builder: (BuildContext context, Widget? child) {
                                    return MediaQuery(
                                      data: MediaQuery.of(context).copyWith(
                                          alwaysUse24HourFormat: false),
                                      child: child!,
                                    );
                                  }
                              ).then((time) {
                                if (time!= null) {
                                  setState(() {
                                    _timeVar = time;
                                    tempDate = DateFormat("hh:mm").parse("${_timeVar.hour.toString().padLeft(2, '0')}:${_timeVar.minute.toString().padLeft(2, '0')}");
                                    _isEdited = true;
                                    _checkFields();
                                  });
                                }
                              });
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
                ),//Date and time fields
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
                          _isEdited = true;
                          _checkFields();
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
                ),//Result toggle buttons
                Text('Total amount', style: theme.textTheme.bodySmall,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
                  child: SizedBox(
                    height: 48,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        style: theme.textTheme.bodyMedium,
                        controller: amountController..text=_totalAmount.toString()
                          ..selection = TextSelection.collapsed(offset: amountController.text.length),
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
                        onSubmitted: (val){
                          setState(() {
                            if (val.isNotEmpty && double.parse(val) != _totalAmount){
                              _totalAmountSet = true;
                              _totalAmount = double.parse(val);
                            }else{
                              _totalAmountSet = false;
                              _totalAmount = 0;
                            }
                            _isEdited = true;
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
                          _isEdited = true;
                          _checkFields();
                        });
                      }
                  ),
                ),
                ElevatedButton(
                    onPressed: () => _deleteDialogBuilder(context),
                    style: butStyle,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Color(0xffb81b1b),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.delete, color: Colors.white,),
                          Text("Delete", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}