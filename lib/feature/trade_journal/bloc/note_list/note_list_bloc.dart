import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_trade_journal/feature/trade_journal/item/item.dart';
import 'package:smart_trade_journal/feature/trade_journal/trade_journal.dart';

part 'note_list_event.dart';
// part 'note_list_event.g.dart';
part 'note_list_state.dart';
// part 'note_list_state.g.dart';
part 'note_list_bloc.freezed.dart';

class NoteListBloc extends HydratedBloc<NoteListEvent, NoteListState> {
  NoteListBloc() : super(NoteListState.initial()) {
    on<_Initialize>((event, emit) {
      emit(state);
    });
    on<_NewNote>((event, emit) async{
      // final resultNote = await Get.to(AddNoteForm());
      // state.noteList.add(resultNote);
      state.noteList.add(TradeNote("11", DateTime.now(), true, 228.332, ''));
      emit(state);
    });
    on<_EditNote>((event, emit) async {
      final originalNote = event.tradeNote;
      final resultNote = await Get.to(EditNoteForm(originalNote));
      if (resultNote == null) {
        state.noteList.remove(originalNote);
      }
      else{
        if(resultNote != originalNote){
          state.noteList.remove(originalNote);
          state.noteList.add(resultNote as TradeNote);
        }
      }
      emit(state);
    });
    on<_DeleteNote>((event, emit) {
      state.noteList.remove(event.tradeNote);
      emit(state);
    });
  }
  // _newNote(NoteListEvent event, Emitter<NoteListState> emit){
  //
  //   state.noteList.add(TradeNote("11", DateTime.now(), true, 228.332, ''));
  //   emit(state);
  // }
  // _editNote(NoteListEvent event, Emitter<NoteListState> emit) async{
  //   final originalNote = state.noteList[event.index];
  //   final resultNote = await Get.to(EditNoteForm(originalNote));
  //   if (resultNote == null) {
  //     state.noteList.remove(originalNote);
  //   }
  //   else{
  //     if(resultNote != originalNote){
  //       state.noteList.remove(originalNote);
  //       state.noteList.add(resultNote as TradeNote);
  //     }
  //   }
  //   emit(state);
  // }
  // _deleteNote(NoteListEvent event, Emitter<NoteListState> emit){
  //   state.noteList.remove(state.noteList[event.index]);
  //   emit(state);
  // }
  //сделай эту хуйню пж
  @override
  NoteListState? fromJson(Map<String, dynamic> json) => json['state'] as NoteListState;

 // надеюсь это будет работать
  @override
  Map<String, dynamic>? toJson(NoteListState state) => {'state': state};

}
