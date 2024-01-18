// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote) $default, {
    required TResult Function() initialize,
    required TResult Function() newNote,
    required TResult Function(TradeNote tradeNote) editNote,
    required TResult Function(TradeNote tradeNote) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TradeNote? tradeNote)? $default, {
    TResult? Function()? initialize,
    TResult? Function()? newNote,
    TResult? Function(TradeNote tradeNote)? editNote,
    TResult? Function(TradeNote tradeNote)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote)? $default, {
    TResult Function()? initialize,
    TResult Function()? newNote,
    TResult Function(TradeNote tradeNote)? editNote,
    TResult Function(TradeNote tradeNote)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListEvent value) $default, {
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NewNote value) newNote,
    required TResult Function(_EditNote value) editNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListEvent value)? $default, {
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NewNote value)? newNote,
    TResult? Function(_EditNote value)? editNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListEvent value)? $default, {
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NewNote value)? newNote,
    TResult Function(_EditNote value)? editNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListEventCopyWith<$Res> {
  factory $NoteListEventCopyWith(
          NoteListEvent value, $Res Function(NoteListEvent) then) =
      _$NoteListEventCopyWithImpl<$Res, NoteListEvent>;
}

/// @nodoc
class _$NoteListEventCopyWithImpl<$Res, $Val extends NoteListEvent>
    implements $NoteListEventCopyWith<$Res> {
  _$NoteListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoteListEventImplCopyWith<$Res> {
  factory _$$NoteListEventImplCopyWith(
          _$NoteListEventImpl value, $Res Function(_$NoteListEventImpl) then) =
      __$$NoteListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TradeNote? tradeNote});
}

/// @nodoc
class __$$NoteListEventImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$NoteListEventImpl>
    implements _$$NoteListEventImplCopyWith<$Res> {
  __$$NoteListEventImplCopyWithImpl(
      _$NoteListEventImpl _value, $Res Function(_$NoteListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeNote = freezed,
  }) {
    return _then(_$NoteListEventImpl(
      tradeNote: freezed == tradeNote
          ? _value.tradeNote
          : tradeNote // ignore: cast_nullable_to_non_nullable
              as TradeNote?,
    ));
  }
}

/// @nodoc

class _$NoteListEventImpl extends _NoteListEvent {
  const _$NoteListEventImpl({this.tradeNote}) : super._();

  @override
  final TradeNote? tradeNote;

  @override
  String toString() {
    return 'NoteListEvent(tradeNote: $tradeNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListEventImpl &&
            (identical(other.tradeNote, tradeNote) ||
                other.tradeNote == tradeNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tradeNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListEventImplCopyWith<_$NoteListEventImpl> get copyWith =>
      __$$NoteListEventImplCopyWithImpl<_$NoteListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote) $default, {
    required TResult Function() initialize,
    required TResult Function() newNote,
    required TResult Function(TradeNote tradeNote) editNote,
    required TResult Function(TradeNote tradeNote) deleteNote,
  }) {
    return $default(tradeNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TradeNote? tradeNote)? $default, {
    TResult? Function()? initialize,
    TResult? Function()? newNote,
    TResult? Function(TradeNote tradeNote)? editNote,
    TResult? Function(TradeNote tradeNote)? deleteNote,
  }) {
    return $default?.call(tradeNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote)? $default, {
    TResult Function()? initialize,
    TResult Function()? newNote,
    TResult Function(TradeNote tradeNote)? editNote,
    TResult Function(TradeNote tradeNote)? deleteNote,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tradeNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListEvent value) $default, {
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NewNote value) newNote,
    required TResult Function(_EditNote value) editNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListEvent value)? $default, {
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NewNote value)? newNote,
    TResult? Function(_EditNote value)? editNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListEvent value)? $default, {
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NewNote value)? newNote,
    TResult Function(_EditNote value)? editNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NoteListEvent extends NoteListEvent {
  const factory _NoteListEvent({final TradeNote? tradeNote}) =
      _$NoteListEventImpl;
  const _NoteListEvent._() : super._();

  TradeNote? get tradeNote;
  @JsonKey(ignore: true)
  _$$NoteListEventImplCopyWith<_$NoteListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl extends _Initialize {
  const _$InitializeImpl() : super._();

  @override
  String toString() {
    return 'NoteListEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote) $default, {
    required TResult Function() initialize,
    required TResult Function() newNote,
    required TResult Function(TradeNote tradeNote) editNote,
    required TResult Function(TradeNote tradeNote) deleteNote,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TradeNote? tradeNote)? $default, {
    TResult? Function()? initialize,
    TResult? Function()? newNote,
    TResult? Function(TradeNote tradeNote)? editNote,
    TResult? Function(TradeNote tradeNote)? deleteNote,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote)? $default, {
    TResult Function()? initialize,
    TResult Function()? newNote,
    TResult Function(TradeNote tradeNote)? editNote,
    TResult Function(TradeNote tradeNote)? deleteNote,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListEvent value) $default, {
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NewNote value) newNote,
    required TResult Function(_EditNote value) editNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListEvent value)? $default, {
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NewNote value)? newNote,
    TResult? Function(_EditNote value)? editNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListEvent value)? $default, {
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NewNote value)? newNote,
    TResult Function(_EditNote value)? editNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize extends NoteListEvent {
  const factory _Initialize() = _$InitializeImpl;
  const _Initialize._() : super._();
}

/// @nodoc
abstract class _$$NewNoteImplCopyWith<$Res> {
  factory _$$NewNoteImplCopyWith(
          _$NewNoteImpl value, $Res Function(_$NewNoteImpl) then) =
      __$$NewNoteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewNoteImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$NewNoteImpl>
    implements _$$NewNoteImplCopyWith<$Res> {
  __$$NewNoteImplCopyWithImpl(
      _$NewNoteImpl _value, $Res Function(_$NewNoteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewNoteImpl extends _NewNote {
  const _$NewNoteImpl() : super._();

  @override
  String toString() {
    return 'NoteListEvent.newNote()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewNoteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote) $default, {
    required TResult Function() initialize,
    required TResult Function() newNote,
    required TResult Function(TradeNote tradeNote) editNote,
    required TResult Function(TradeNote tradeNote) deleteNote,
  }) {
    return newNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TradeNote? tradeNote)? $default, {
    TResult? Function()? initialize,
    TResult? Function()? newNote,
    TResult? Function(TradeNote tradeNote)? editNote,
    TResult? Function(TradeNote tradeNote)? deleteNote,
  }) {
    return newNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote)? $default, {
    TResult Function()? initialize,
    TResult Function()? newNote,
    TResult Function(TradeNote tradeNote)? editNote,
    TResult Function(TradeNote tradeNote)? deleteNote,
    required TResult orElse(),
  }) {
    if (newNote != null) {
      return newNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListEvent value) $default, {
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NewNote value) newNote,
    required TResult Function(_EditNote value) editNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return newNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListEvent value)? $default, {
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NewNote value)? newNote,
    TResult? Function(_EditNote value)? editNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return newNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListEvent value)? $default, {
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NewNote value)? newNote,
    TResult Function(_EditNote value)? editNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (newNote != null) {
      return newNote(this);
    }
    return orElse();
  }
}

abstract class _NewNote extends NoteListEvent {
  const factory _NewNote() = _$NewNoteImpl;
  const _NewNote._() : super._();
}

/// @nodoc
abstract class _$$EditNoteImplCopyWith<$Res> {
  factory _$$EditNoteImplCopyWith(
          _$EditNoteImpl value, $Res Function(_$EditNoteImpl) then) =
      __$$EditNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TradeNote tradeNote});
}

/// @nodoc
class __$$EditNoteImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$EditNoteImpl>
    implements _$$EditNoteImplCopyWith<$Res> {
  __$$EditNoteImplCopyWithImpl(
      _$EditNoteImpl _value, $Res Function(_$EditNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeNote = null,
  }) {
    return _then(_$EditNoteImpl(
      null == tradeNote
          ? _value.tradeNote
          : tradeNote // ignore: cast_nullable_to_non_nullable
              as TradeNote,
    ));
  }
}

/// @nodoc

class _$EditNoteImpl extends _EditNote {
  const _$EditNoteImpl(this.tradeNote) : super._();

  @override
  final TradeNote tradeNote;

  @override
  String toString() {
    return 'NoteListEvent.editNote(tradeNote: $tradeNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditNoteImpl &&
            (identical(other.tradeNote, tradeNote) ||
                other.tradeNote == tradeNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tradeNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditNoteImplCopyWith<_$EditNoteImpl> get copyWith =>
      __$$EditNoteImplCopyWithImpl<_$EditNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote) $default, {
    required TResult Function() initialize,
    required TResult Function() newNote,
    required TResult Function(TradeNote tradeNote) editNote,
    required TResult Function(TradeNote tradeNote) deleteNote,
  }) {
    return editNote(tradeNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TradeNote? tradeNote)? $default, {
    TResult? Function()? initialize,
    TResult? Function()? newNote,
    TResult? Function(TradeNote tradeNote)? editNote,
    TResult? Function(TradeNote tradeNote)? deleteNote,
  }) {
    return editNote?.call(tradeNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote)? $default, {
    TResult Function()? initialize,
    TResult Function()? newNote,
    TResult Function(TradeNote tradeNote)? editNote,
    TResult Function(TradeNote tradeNote)? deleteNote,
    required TResult orElse(),
  }) {
    if (editNote != null) {
      return editNote(tradeNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListEvent value) $default, {
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NewNote value) newNote,
    required TResult Function(_EditNote value) editNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return editNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListEvent value)? $default, {
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NewNote value)? newNote,
    TResult? Function(_EditNote value)? editNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return editNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListEvent value)? $default, {
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NewNote value)? newNote,
    TResult Function(_EditNote value)? editNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (editNote != null) {
      return editNote(this);
    }
    return orElse();
  }
}

abstract class _EditNote extends NoteListEvent {
  const factory _EditNote(final TradeNote tradeNote) = _$EditNoteImpl;
  const _EditNote._() : super._();

  TradeNote get tradeNote;
  @JsonKey(ignore: true)
  _$$EditNoteImplCopyWith<_$EditNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNoteImplCopyWith<$Res> {
  factory _$$DeleteNoteImplCopyWith(
          _$DeleteNoteImpl value, $Res Function(_$DeleteNoteImpl) then) =
      __$$DeleteNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TradeNote tradeNote});
}

/// @nodoc
class __$$DeleteNoteImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$DeleteNoteImpl>
    implements _$$DeleteNoteImplCopyWith<$Res> {
  __$$DeleteNoteImplCopyWithImpl(
      _$DeleteNoteImpl _value, $Res Function(_$DeleteNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeNote = null,
  }) {
    return _then(_$DeleteNoteImpl(
      null == tradeNote
          ? _value.tradeNote
          : tradeNote // ignore: cast_nullable_to_non_nullable
              as TradeNote,
    ));
  }
}

/// @nodoc

class _$DeleteNoteImpl extends _DeleteNote {
  const _$DeleteNoteImpl(this.tradeNote) : super._();

  @override
  final TradeNote tradeNote;

  @override
  String toString() {
    return 'NoteListEvent.deleteNote(tradeNote: $tradeNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteImpl &&
            (identical(other.tradeNote, tradeNote) ||
                other.tradeNote == tradeNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tradeNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      __$$DeleteNoteImplCopyWithImpl<_$DeleteNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote) $default, {
    required TResult Function() initialize,
    required TResult Function() newNote,
    required TResult Function(TradeNote tradeNote) editNote,
    required TResult Function(TradeNote tradeNote) deleteNote,
  }) {
    return deleteNote(tradeNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TradeNote? tradeNote)? $default, {
    TResult? Function()? initialize,
    TResult? Function()? newNote,
    TResult? Function(TradeNote tradeNote)? editNote,
    TResult? Function(TradeNote tradeNote)? deleteNote,
  }) {
    return deleteNote?.call(tradeNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TradeNote? tradeNote)? $default, {
    TResult Function()? initialize,
    TResult Function()? newNote,
    TResult Function(TradeNote tradeNote)? editNote,
    TResult Function(TradeNote tradeNote)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(tradeNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListEvent value) $default, {
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_NewNote value) newNote,
    required TResult Function(_EditNote value) editNote,
    required TResult Function(_DeleteNote value) deleteNote,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListEvent value)? $default, {
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_NewNote value)? newNote,
    TResult? Function(_EditNote value)? editNote,
    TResult? Function(_DeleteNote value)? deleteNote,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListEvent value)? $default, {
    TResult Function(_Initialize value)? initialize,
    TResult Function(_NewNote value)? newNote,
    TResult Function(_EditNote value)? editNote,
    TResult Function(_DeleteNote value)? deleteNote,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNote extends NoteListEvent {
  const factory _DeleteNote(final TradeNote tradeNote) = _$DeleteNoteImpl;
  const _DeleteNote._() : super._();

  TradeNote get tradeNote;
  @JsonKey(ignore: true)
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NoteListState _$NoteListStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _NoteListState.fromJson(json);
    case 'initial':
      return _Initial.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NoteListState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NoteListState {
  List<TradeNote> get noteList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TradeNote> noteList) $default, {
    required TResult Function(List<TradeNote> noteList) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<TradeNote> noteList)? $default, {
    TResult? Function(List<TradeNote> noteList)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TradeNote> noteList)? $default, {
    TResult Function(List<TradeNote> noteList)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListState value) $default, {
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListState value)? $default, {
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteListStateCopyWith<NoteListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListStateCopyWith<$Res> {
  factory $NoteListStateCopyWith(
          NoteListState value, $Res Function(NoteListState) then) =
      _$NoteListStateCopyWithImpl<$Res, NoteListState>;
  @useResult
  $Res call({List<TradeNote> noteList});
}

/// @nodoc
class _$NoteListStateCopyWithImpl<$Res, $Val extends NoteListState>
    implements $NoteListStateCopyWith<$Res> {
  _$NoteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteList = null,
  }) {
    return _then(_value.copyWith(
      noteList: null == noteList
          ? _value.noteList
          : noteList // ignore: cast_nullable_to_non_nullable
              as List<TradeNote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteListStateImplCopyWith<$Res>
    implements $NoteListStateCopyWith<$Res> {
  factory _$$NoteListStateImplCopyWith(
          _$NoteListStateImpl value, $Res Function(_$NoteListStateImpl) then) =
      __$$NoteListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TradeNote> noteList});
}

/// @nodoc
class __$$NoteListStateImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateImpl>
    implements _$$NoteListStateImplCopyWith<$Res> {
  __$$NoteListStateImplCopyWithImpl(
      _$NoteListStateImpl _value, $Res Function(_$NoteListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteList = null,
  }) {
    return _then(_$NoteListStateImpl(
      noteList: null == noteList
          ? _value.noteList
          : noteList // ignore: cast_nullable_to_non_nullable
              as List<TradeNote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteListStateImpl implements _NoteListState {
  const _$NoteListStateImpl({required this.noteList, final String? $type})
      : $type = $type ?? 'default';

  factory _$NoteListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteListStateImplFromJson(json);

  @override
  final List<TradeNote> noteList;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NoteListState(noteList: $noteList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateImpl &&
            const DeepCollectionEquality().equals(other.noteList, noteList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(noteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListStateImplCopyWith<_$NoteListStateImpl> get copyWith =>
      __$$NoteListStateImplCopyWithImpl<_$NoteListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TradeNote> noteList) $default, {
    required TResult Function(List<TradeNote> noteList) initial,
  }) {
    return $default(noteList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<TradeNote> noteList)? $default, {
    TResult? Function(List<TradeNote> noteList)? initial,
  }) {
    return $default?.call(noteList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TradeNote> noteList)? $default, {
    TResult Function(List<TradeNote> noteList)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(noteList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListState value)? $default, {
    TResult? Function(_Initial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteListStateImplToJson(
      this,
    );
  }
}

abstract class _NoteListState implements NoteListState {
  const factory _NoteListState({required final List<TradeNote> noteList}) =
      _$NoteListStateImpl;

  factory _NoteListState.fromJson(Map<String, dynamic> json) =
      _$NoteListStateImpl.fromJson;

  @override
  List<TradeNote> get noteList;
  @override
  @JsonKey(ignore: true)
  _$$NoteListStateImplCopyWith<_$NoteListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NoteListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TradeNote> noteList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteList = null,
  }) {
    return _then(_$InitialImpl(
      noteList: null == noteList
          ? _value.noteList
          : noteList // ignore: cast_nullable_to_non_nullable
              as List<TradeNote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.noteList = const <TradeNote>[], final String? $type})
      : $type = $type ?? 'initial';

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @override
  @JsonKey()
  final List<TradeNote> noteList;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NoteListState.initial(noteList: $noteList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other.noteList, noteList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(noteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TradeNote> noteList) $default, {
    required TResult Function(List<TradeNote> noteList) initial,
  }) {
    return initial(noteList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<TradeNote> noteList)? $default, {
    TResult? Function(List<TradeNote> noteList)? initial,
  }) {
    return initial?.call(noteList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TradeNote> noteList)? $default, {
    TResult Function(List<TradeNote> noteList)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(noteList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoteListState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NoteListState value)? $default, {
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NoteListState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class _Initial implements NoteListState {
  const factory _Initial({final List<TradeNote> noteList}) = _$InitialImpl;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;

  @override
  List<TradeNote> get noteList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
