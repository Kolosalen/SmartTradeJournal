part of 'note_list_bloc.dart';


@Freezed(makeCollectionsUnmodifiable: false)
class NoteListState with _$NoteListState {

  const factory NoteListState({required List<TradeNote> noteList}) = _NoteListState;
  const factory NoteListState.initial({@Default(<TradeNote>[])  List<TradeNote> noteList}) = _Initial;
  //   const factory NoteListState.loading(List<TradeNote> noteList) = _Loading;
  // const factory NoteListState.loaded(List<TradeNote> noteList) = _Loaded;
  // const factory NoteListState.failure(String massage, List<TradeNote> noteList) = _Failure;

  /// Connect the generated [_$NoteListStateFromJson] function to the `fromJson`
  /// factory.
  factory NoteListState.fromJson(Map<String, dynamic> json) => _$NoteListStateFromJson(json);

}


