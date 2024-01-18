// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StatisticEvent {
  int get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, List<TradeNote> noteList) init,
    required TResult Function(int type) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int type, List<TradeNote> noteList)? init,
    TResult? Function(int type)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, List<TradeNote> noteList)? init,
    TResult Function(int type)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticEventCopyWith<StatisticEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticEventCopyWith<$Res> {
  factory $StatisticEventCopyWith(
          StatisticEvent value, $Res Function(StatisticEvent) then) =
      _$StatisticEventCopyWithImpl<$Res, StatisticEvent>;
  @useResult
  $Res call({int type});
}

/// @nodoc
class _$StatisticEventCopyWithImpl<$Res, $Val extends StatisticEvent>
    implements $StatisticEventCopyWith<$Res> {
  _$StatisticEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res>
    implements $StatisticEventCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type, List<TradeNote> noteList});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$StatisticEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? noteList = null,
  }) {
    return _then(_$InitImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      null == noteList
          ? _value._noteList
          : noteList // ignore: cast_nullable_to_non_nullable
              as List<TradeNote>,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.type, final List<TradeNote> noteList)
      : _noteList = noteList;

  @override
  final int type;
  final List<TradeNote> _noteList;
  @override
  List<TradeNote> get noteList {
    if (_noteList is EqualUnmodifiableListView) return _noteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noteList);
  }

  @override
  String toString() {
    return 'StatisticEvent.init(type: $type, noteList: $noteList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._noteList, _noteList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_noteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, List<TradeNote> noteList) init,
    required TResult Function(int type) update,
  }) {
    return init(type, noteList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int type, List<TradeNote> noteList)? init,
    TResult? Function(int type)? update,
  }) {
    return init?.call(type, noteList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, List<TradeNote> noteList)? init,
    TResult Function(int type)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(type, noteList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Update value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Update value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements StatisticEvent {
  const factory _Init(final int type, final List<TradeNote> noteList) =
      _$InitImpl;

  @override
  int get type;
  List<TradeNote> get noteList;
  @override
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res>
    implements $StatisticEventCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int type});
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$StatisticEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$UpdateImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl(this.type);

  @override
  final int type;

  @override
  String toString() {
    return 'StatisticEvent.update(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      __$$UpdateImplCopyWithImpl<_$UpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int type, List<TradeNote> noteList) init,
    required TResult Function(int type) update,
  }) {
    return update(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int type, List<TradeNote> noteList)? init,
    TResult? Function(int type)? update,
  }) {
    return update?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int type, List<TradeNote> noteList)? init,
    TResult Function(int type)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements StatisticEvent {
  const factory _Update(final int type) = _$UpdateImpl;

  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$UpdateImplCopyWith<_$UpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticState _$StatisticStateFromJson(Map<String, dynamic> json) {
  return _StatisticState.fromJson(json);
}

/// @nodoc
mixin _$StatisticState {
  BarInfo get barInfo => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<BarChartGroupData>? get showingBarGroups =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticStateCopyWith<StatisticState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticStateCopyWith<$Res> {
  factory $StatisticStateCopyWith(
          StatisticState value, $Res Function(StatisticState) then) =
      _$StatisticStateCopyWithImpl<$Res, StatisticState>;
  @useResult
  $Res call(
      {BarInfo barInfo,
      int type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<BarChartGroupData>? showingBarGroups});
}

/// @nodoc
class _$StatisticStateCopyWithImpl<$Res, $Val extends StatisticState>
    implements $StatisticStateCopyWith<$Res> {
  _$StatisticStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barInfo = null,
    Object? type = null,
    Object? showingBarGroups = freezed,
  }) {
    return _then(_value.copyWith(
      barInfo: null == barInfo
          ? _value.barInfo
          : barInfo // ignore: cast_nullable_to_non_nullable
              as BarInfo,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      showingBarGroups: freezed == showingBarGroups
          ? _value.showingBarGroups
          : showingBarGroups // ignore: cast_nullable_to_non_nullable
              as List<BarChartGroupData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticStateImplCopyWith<$Res>
    implements $StatisticStateCopyWith<$Res> {
  factory _$$StatisticStateImplCopyWith(_$StatisticStateImpl value,
          $Res Function(_$StatisticStateImpl) then) =
      __$$StatisticStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BarInfo barInfo,
      int type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<BarChartGroupData>? showingBarGroups});
}

/// @nodoc
class __$$StatisticStateImplCopyWithImpl<$Res>
    extends _$StatisticStateCopyWithImpl<$Res, _$StatisticStateImpl>
    implements _$$StatisticStateImplCopyWith<$Res> {
  __$$StatisticStateImplCopyWithImpl(
      _$StatisticStateImpl _value, $Res Function(_$StatisticStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barInfo = null,
    Object? type = null,
    Object? showingBarGroups = freezed,
  }) {
    return _then(_$StatisticStateImpl(
      barInfo: null == barInfo
          ? _value.barInfo
          : barInfo // ignore: cast_nullable_to_non_nullable
              as BarInfo,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      showingBarGroups: freezed == showingBarGroups
          ? _value.showingBarGroups
          : showingBarGroups // ignore: cast_nullable_to_non_nullable
              as List<BarChartGroupData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticStateImpl implements _StatisticState {
  const _$StatisticStateImpl(
      {required this.barInfo,
      required this.type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.showingBarGroups});

  factory _$StatisticStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticStateImplFromJson(json);

  @override
  final BarInfo barInfo;
  @override
  final int type;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final List<BarChartGroupData>? showingBarGroups;

  @override
  String toString() {
    return 'StatisticState(barInfo: $barInfo, type: $type, showingBarGroups: $showingBarGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticStateImpl &&
            (identical(other.barInfo, barInfo) || other.barInfo == barInfo) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.showingBarGroups, showingBarGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, barInfo, type,
      const DeepCollectionEquality().hash(showingBarGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticStateImplCopyWith<_$StatisticStateImpl> get copyWith =>
      __$$StatisticStateImplCopyWithImpl<_$StatisticStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticStateImplToJson(
      this,
    );
  }
}

abstract class _StatisticState implements StatisticState {
  const factory _StatisticState(
      {required final BarInfo barInfo,
      required final int type,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<BarChartGroupData>? showingBarGroups}) = _$StatisticStateImpl;

  factory _StatisticState.fromJson(Map<String, dynamic> json) =
      _$StatisticStateImpl.fromJson;

  @override
  BarInfo get barInfo;
  @override
  int get type;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<BarChartGroupData>? get showingBarGroups;
  @override
  @JsonKey(ignore: true)
  _$$StatisticStateImplCopyWith<_$StatisticStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
