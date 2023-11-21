
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_trade_journal/theme/butt_style.dart';
import 'package:smart_trade_journal/theme/theme.dart';

import '../Item/trade__note.dart';

class TradeArchiveWidget extends StatefulWidget{
  const TradeArchiveWidget({super.key});

  @override
  State<TradeArchiveWidget> createState() => _TradeArchiveWidget();

}
class _TradeArchiveWidget extends State<TradeArchiveWidget>{
  List<TradeNote>? _items;
  ThemeData theme = darkTheme;

  TextStyle _successStyle(bool success){
    if (success) return const TextStyle(color: Color.fromRGBO(60, 142, 21, 1));
    return const TextStyle(color: Color.fromRGBO(188, 39, 39, 1));
  }

  Widget _body(){
    if (_items == null){ return const Center(
      child: Text("No Notes yet\nClick \"Add\" to create one", textAlign: TextAlign.center,)
    );}
    else {
      return ListView.builder(
          itemCount: _items!.length,
          itemBuilder: (context, index) => ListTile(
            title:Container(
              child: Text(_items![index].strategy,
                style: _successStyle(_items![index].result),
              ),
            ),
            subtitle: Text(_items![index].dateTime.toString()),
          )
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
      body: Stack(

        children:  [_body(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed('/addNote',
              arguments: _items);},
                style: butStyle,
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromRGBO(90, 105, 237, 1),
                          Color.fromRGBO(52, 129, 163, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    ),
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
      )
    );
  }

}