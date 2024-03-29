
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_trade_journal/bloc/note_list/note_list_bloc.dart';
import 'package:smart_trade_journal/res/theme.dart';
import 'package:smart_trade_journal/widgets/add_note_button.dart';
import 'package:smart_trade_journal/widgets/note_list_item.dart';


class TradeArchiveWidget extends StatefulWidget{
  const TradeArchiveWidget({super.key});
  @override
  State<TradeArchiveWidget> createState() => _TradeArchiveWidget();

}
class _TradeArchiveWidget extends State<TradeArchiveWidget>{

  // late Box box;
  @override
  void initState() {
    super.initState();
    // box = Hive.box<TradeNote>('trade_note');
  }

  // final _items = <TradeNote>[TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('12', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('13', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('14', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('15', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('16', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), true, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //   TradeNote('1', DateTime.now(), false, 1, 'notes'),
  //
  // ];
  ThemeData theme = darkTheme;

  // TextStyle _successStyle(bool success){
  //   if (success) {
  //     return successStyle;//successful
  //   }
  //   return unsuccessStyle;//unsuccessful style
  // }
  // void _awaitResultFromAddNoteForm (BuildContext context) async {
  //   final resultNote = await Navigator.of(context).pushNamed('/addNote',
  //       arguments: MaterialPageRoute(
  //         builder: (context) => const AddNoteForm(),
  //       )
  //   );
  //   setState(() {
  //     if (resultNote != null) {
  //       // _items.add(resultNote as TradeNote);
  //       box.add(resultNote as TradeNote);
  //     }
  //   });
  // }

  // void _awaitResultFromEditNoteForm (BuildContext context, int index) async {
  //   final resultNote = await Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => EditNoteForm(box.getAt(index)!),
  //       )
  //   );
  //   setState(() {
  //     if (resultNote != null) {
  //       // _items[index] = resultNote as TradeNote;
  //       box.add(resultNote);
  //     }
  //     else{
  //       // _items.removeAt(index);
  //       box.deleteAt(index);
  //     }
  //   });
  // }
  
  Widget _bbody(){
    return BlocBuilder<NoteListBloc, NoteListState>(
      builder: (context, state) {
        context.watch<NoteListBloc>().add(const NoteListEvent.initialize());
        if (state.noteList.isEmpty) {
          return const Center(
              child: Text("No Notes yet\nClick \"Add\" to create one", textAlign: TextAlign.center,)
          );
        }else{
          return ListView.separated(
            itemCount: state.noteList.length,
            padding: const EdgeInsets.only(bottom: 80),
            itemBuilder: (context, index) {
              return NoteListItem(state.noteList[index]);
            },
            separatorBuilder: (context, index) =>  Divider(
              height: 16,
              color: theme.dividerColor,
            ),
          );
        }
      },
    );
  }
  
  // Widget _body() {
  //   return ValueListenableBuilder(
  //       valueListenable: Hive.box<TradeNote>('trade_note').listenable(),
  //       builder: (context, Box<TradeNote> box, _) {
  //         if (box.values.isEmpty) {
  //           return const Center(
  //               child: Text("No Notes yet\nClick \"Add\" to create one", textAlign: TextAlign.center,)
  //           );
  //         }else{
  //           return ListView.separated(
  //             itemCount: box.values.length,
  //             padding: const EdgeInsets.only(bottom: 80),
  //             itemBuilder: (context, index) {
  //               TradeNote? res = box.getAt(index);
  //               return ListTile(
  //                 tileColor: theme.listTileTheme.tileColor,
  //                 shape: theme.listTileTheme.shape,
  //                 title:Container(
  //                   child: Text(res!.strategy,
  //                     style: _successStyle(res.result),
  //                   ),
  //                 ),
  //                 subtitle: Text(DateFormat().add_yMMMMd().add_jm().format(res.dateTime).toString()),
  //                 trailing: const Icon(Icons.arrow_forward_ios),
  //                 onTap: (){
  //                   _awaitResultFromEditNoteForm(context, index);
  //                 },
  //               );
  //             },
  //             separatorBuilder: (context, index) =>  Divider(
  //               height: 16,
  //               color: theme.dividerColor,
  //             ),
  //           );
  //         }
  //       }
  //   );
  // }

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
          children:  [_bbody(),
            Positioned(
              bottom: 8,
              left: 0,
              right:0,
              child: AddNoteButton()
            )
            ]
        ),
      )
    );
  }

}