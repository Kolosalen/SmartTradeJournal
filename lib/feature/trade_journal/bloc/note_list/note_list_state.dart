part of 'note_list_bloc.dart';


@freezed
class NoteListState with _$NoteListState {
  const factory NoteListState({required List<TradeNote> noteList}) = _NoteListState;
  factory NoteListState.initial() => const NoteListState(noteList: []);
  const factory NoteListState.loading(List<TradeNote> noteList) = _Loading;
  const factory NoteListState.loaded(List<TradeNote> noteList) = _Loaded;
  const factory NoteListState.failure(String massage, List<TradeNote> noteList) = _Failure;

  factory NoteListState.fromJson(Map<String, dynamic> json) => _$NoteListStateFromJson(json);

}


