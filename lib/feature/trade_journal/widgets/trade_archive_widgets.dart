
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:smart_trade_journal/feature/trade_journal/trade_journal.dart';
import 'package:smart_trade_journal/theme/butt_styles.dart';
import 'package:smart_trade_journal/theme/theme.dart';
import 'package:smart_trade_journal/theme/success_unsuccess_text_style.dart';


class TradeArchiveWidget extends StatefulWidget{
  const TradeArchiveWidget(this.tradeNoteBox, {super.key});
  final Box<TradeNote> tradeNoteBox;
  @override
  State<TradeArchiveWidget> createState() => _TradeArchiveWidget();

}
class _TradeArchiveWidget extends State<TradeArchiveWidget>{
  final _items = <TradeNote>[TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('12', DateTime.now(), true, 1, 'notes'),
    TradeNote('13', DateTime.now(), true, 1, 'notes'),
    TradeNote('14', DateTime.now(), true, 1, 'notes'),
    TradeNote('15', DateTime.now(), true, 1, 'notes'),
    TradeNote('16', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), true, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),
    TradeNote('1', DateTime.now(), false, 1, 'notes'),

  ];
  ThemeData theme = darkTheme;

  TextStyle _successStyle(bool success){
    if (success) {
      return successStyle;//successful
    }
    return unsuccessStyle;//unsuccessful style
  }
  void _awaitResultFromAddNoteForm (BuildContext context) async {
    final resultNote = await Navigator.of(context).pushNamed('/addNote',
        arguments: MaterialPageRoute(
          builder: (context) => const AddNoteForm(),
        )
    );
    setState(() {
      if (resultNote != null) {
        _items.add(resultNote as TradeNote);
      }
    });
  }
  void _awaitResultFromEditNoteForm (BuildContext context, int index) async {
    final resultNote = await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EditNoteForm(_items[index]),
        )
    );
    setState(() {
      if (resultNote != null) {
        _items[index] = resultNote as TradeNote;
      }
      else{
        _items.removeAt(index);
      }
    });
  }
  Widget _body(){
    if (_items.isEmpty){ return const Center(
      child: Text("No Notes yet\nClick \"Add\" to create one", textAlign: TextAlign.center,)
    );}
    else {
      return ListView.separated(
          itemCount: _items.length,
          padding: const EdgeInsets.only(bottom: 80),
          itemBuilder: (context, index) => ListTile(
            tileColor: theme.listTileTheme.tileColor,
            shape: theme.listTileTheme.shape,
            title:Container(
              child: Text(_items[index].strategy,
                style: _successStyle(_items[index].result),
              ),
            ),
            subtitle: Text(DateFormat().add_yMMMMd().add_jm().format(_items[index].dateTime).toString()),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
              _awaitResultFromEditNoteForm(context, index);
            },
          ),
        separatorBuilder: (context, index) =>  Divider(
          height: 16,
          color: theme.dividerColor,
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trade Archive",
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium,
        ),
        centerTitle: true,
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Stack(

          children:  [_body(),
            Positioned(
              bottom: 8,
              left: 0,
              right:0,
              child: ElevatedButton(
                onPressed: () { _awaitResultFromAddNoteForm(context);
                  },
                  style: butStyle,
                  child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        gradient: butGradient
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.add_circle, color: Colors.white,),
                          Text("Add", textAlign: TextAlign.center, style: theme.textTheme.bodyMedium,),
                        ],
                    ),
                  )
                ),
              )
            ]
        ),
      )
    );
  }

}