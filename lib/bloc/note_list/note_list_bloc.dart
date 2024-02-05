import 'package:get/get.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/trade_note.dart';
import '../../pages/add_note_form.dart';
import '../../pages/edit_note_form.dart';

part 'note_list_event.dart';
part 'note_list_bloc.g.dart';

// part 'note_list_event.g.dart';
part 'note_list_state.dart';
// part 'note_list_state.g.dart';
part 'note_list_bloc.freezed.dart';

class NoteListBloc extends HydratedBloc<NoteListEvent, NoteListState> {
  NoteListBloc() : super(const NoteListState.initial()) {
    on<_Initialize>((event, emit) {
      emit(state);
    });
    on<_NewNote>((event, emit) async{
      final resultNote = await Get.to(() => const AddNoteForm());
      // state.noteList.add(resultNote);
      var noteListNew = <TradeNote>[];
      noteListNew.addAll(state.noteList);
      if (resultNote != null) {
        noteListNew.add(resultNote);
      }
      noteListNew.sort((a, b) => (b.dateTime.compareTo(a.dateTime)));//Сортировка по времени в порядке не возрастания
      emit(state.copyWith(noteList: noteListNew));
    });

    on<_EditNote>((event, emit) async {
      var noteListNew = <TradeNote>[];
      noteListNew.addAll(state.noteList);
      final TradeNote originalNote = event.tradeNote;
      final TradeNote? resultNote = await Get.to(() => EditNoteForm(originalNote));
      if (resultNote == null) {
        noteListNew.remove(originalNote);
        noteListNew.sort((a, b) => b.dateTime.compareTo(a.dateTime)); //Сортировка по времени в порядке не возрастания
        emit(state.copyWith(noteList: noteListNew));
      }
      else{
        if(resultNote != originalNote){
          noteListNew.remove(originalNote);
          noteListNew.add(resultNote);
          noteListNew.sort((a, b) => b.dateTime.compareTo(a.dateTime)); //Сортировка по времени в порядке не возрастания
          emit(state.copyWith(noteList: noteListNew));
        }
      }
    });

    on<_DeleteNote>((event, emit) {
      state.noteList.remove(event.tradeNote);
      emit(state);
    });
  }

  //сделай эту хуйню пж
  @override
  NoteListState? fromJson(Map<String, dynamic> json) => NoteListState.fromJson(json);

 // надеюсь это будет работать
  @override
  Map<String, dynamic>? toJson(NoteListState state) => state.toJson();

}
