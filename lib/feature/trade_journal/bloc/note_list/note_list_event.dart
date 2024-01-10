part of 'note_list_bloc.dart';


@Freezed(makeCollectionsUnmodifiable: false)
class NoteListEvent with _$NoteListEvent {
  const NoteListEvent._();
  const factory NoteListEvent({TradeNote? tradeNote}) = _NoteListEvent;
  const factory NoteListEvent.initialize() = _Initialize;
  const factory NoteListEvent.newNote() = _NewNote;
  const factory NoteListEvent.editNote(TradeNote tradeNote) = _EditNote;
  const factory NoteListEvent.deleteNote(TradeNote tradeNote) = _DeleteNote;
}
