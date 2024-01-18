import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:smart_trade_journal/bloc/note_list/note_list_bloc.dart';
import 'package:smart_trade_journal/models/trade_note.dart';
import 'package:smart_trade_journal/res/success_unsuccess_text_style.dart';
import 'package:smart_trade_journal/res/theme.dart';



class NoteListItem extends StatelessWidget {
  NoteListItem(this.tradenote,{super.key});
  final theme = darkTheme;
  final TradeNote tradenote;
  TextStyle _successStyle(bool success){
    if (success) {
      return successStyle;//successful
    }
    return unsuccessStyle;//unsuccessful style
  }
  // void _awaitResultFromEditNoteForm (BuildContext context, TradeNote tradenote) async {
  //   // final resultNote = await Navigator.of(context).push(MaterialPageRoute(
  //   //   builder: (context) => EditNoteForm(tradenote),));
  //   final resultNote = await Get.to(EditNoteForm(tradenote));
  //   if (resultNote != null) {
  //     // _items[index] = resultNote as TradeNote;
  //     // box.add(resultNote);
  //
  //   }
  //   else{
  //     // _items.removeAt(index);
  //     // box.deleteAt(index);
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: theme.listTileTheme.tileColor,
      shape: theme.listTileTheme.shape,
      title:Container(
        child: Text(tradenote.strategy,
          style: _successStyle(tradenote.result),
        ),
      ),
      subtitle: Text(DateFormat().add_yMMMMd().add_jm().format(tradenote.dateTime).toString()),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: (){
        context.read<NoteListBloc>().add(NoteListEvent.editNote(tradenote));
      },
    );
  }
}
