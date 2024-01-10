import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_trade_journal/feature/trade_journal/bloc/note_list/note_list_bloc.dart';
import 'package:smart_trade_journal/theme/butt_styles.dart';
import 'package:smart_trade_journal/theme/theme.dart';

class AddNoteButton extends StatelessWidget {
  AddNoteButton({super.key});
  final theme = darkTheme;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () { context.read<NoteListBloc>().add(const NoteListEvent.newNote());},
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
    );
  }
}
