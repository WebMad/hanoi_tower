// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hanoi_tower_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HanoiTowerState {
  int get numDisks => throw _privateConstructorUsedError;
  List<List<int>> get initialPegs => throw _privateConstructorUsedError;
  List<List<int>> get currentPegs => throw _privateConstructorUsedError;
  List<List<int>> get currentMoves => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numDisks, List<List<int>> initialPegs,
            List<List<int>> currentPegs, List<List<int>> currentMoves)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numDisks, List<List<int>> initialPegs,
            List<List<int>> currentPegs, List<List<int>> currentMoves)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numDisks, List<List<int>> initialPegs,
            List<List<int>> currentPegs, List<List<int>> currentMoves)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HanoiTowerStateCopyWith<HanoiTowerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HanoiTowerStateCopyWith<$Res> {
  factory $HanoiTowerStateCopyWith(
          HanoiTowerState value, $Res Function(HanoiTowerState) then) =
      _$HanoiTowerStateCopyWithImpl<$Res, HanoiTowerState>;
  @useResult
  $Res call(
      {int numDisks,
      List<List<int>> initialPegs,
      List<List<int>> currentPegs,
      List<List<int>> currentMoves});
}

/// @nodoc
class _$HanoiTowerStateCopyWithImpl<$Res, $Val extends HanoiTowerState>
    implements $HanoiTowerStateCopyWith<$Res> {
  _$HanoiTowerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numDisks = null,
    Object? initialPegs = null,
    Object? currentPegs = null,
    Object? currentMoves = null,
  }) {
    return _then(_value.copyWith(
      numDisks: null == numDisks
          ? _value.numDisks
          : numDisks // ignore: cast_nullable_to_non_nullable
              as int,
      initialPegs: null == initialPegs
          ? _value.initialPegs
          : initialPegs // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      currentPegs: null == currentPegs
          ? _value.currentPegs
          : currentPegs // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      currentMoves: null == currentMoves
          ? _value.currentMoves
          : currentMoves // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HanoiTowerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numDisks,
      List<List<int>> initialPegs,
      List<List<int>> currentPegs,
      List<List<int>> currentMoves});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HanoiTowerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numDisks = null,
    Object? initialPegs = null,
    Object? currentPegs = null,
    Object? currentMoves = null,
  }) {
    return _then(_$InitialImpl(
      numDisks: null == numDisks
          ? _value.numDisks
          : numDisks // ignore: cast_nullable_to_non_nullable
              as int,
      initialPegs: null == initialPegs
          ? _value._initialPegs
          : initialPegs // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      currentPegs: null == currentPegs
          ? _value._currentPegs
          : currentPegs // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      currentMoves: null == currentMoves
          ? _value._currentMoves
          : currentMoves // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.numDisks,
      required final List<List<int>> initialPegs,
      required final List<List<int>> currentPegs,
      required final List<List<int>> currentMoves})
      : _initialPegs = initialPegs,
        _currentPegs = currentPegs,
        _currentMoves = currentMoves;

  @override
  final int numDisks;
  final List<List<int>> _initialPegs;
  @override
  List<List<int>> get initialPegs {
    if (_initialPegs is EqualUnmodifiableListView) return _initialPegs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialPegs);
  }

  final List<List<int>> _currentPegs;
  @override
  List<List<int>> get currentPegs {
    if (_currentPegs is EqualUnmodifiableListView) return _currentPegs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentPegs);
  }

  final List<List<int>> _currentMoves;
  @override
  List<List<int>> get currentMoves {
    if (_currentMoves is EqualUnmodifiableListView) return _currentMoves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentMoves);
  }

  @override
  String toString() {
    return 'HanoiTowerState.initial(numDisks: $numDisks, initialPegs: $initialPegs, currentPegs: $currentPegs, currentMoves: $currentMoves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.numDisks, numDisks) ||
                other.numDisks == numDisks) &&
            const DeepCollectionEquality()
                .equals(other._initialPegs, _initialPegs) &&
            const DeepCollectionEquality()
                .equals(other._currentPegs, _currentPegs) &&
            const DeepCollectionEquality()
                .equals(other._currentMoves, _currentMoves));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      numDisks,
      const DeepCollectionEquality().hash(_initialPegs),
      const DeepCollectionEquality().hash(_currentPegs),
      const DeepCollectionEquality().hash(_currentMoves));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int numDisks, List<List<int>> initialPegs,
            List<List<int>> currentPegs, List<List<int>> currentMoves)
        initial,
  }) {
    return initial(numDisks, initialPegs, currentPegs, currentMoves);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int numDisks, List<List<int>> initialPegs,
            List<List<int>> currentPegs, List<List<int>> currentMoves)?
        initial,
  }) {
    return initial?.call(numDisks, initialPegs, currentPegs, currentMoves);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int numDisks, List<List<int>> initialPegs,
            List<List<int>> currentPegs, List<List<int>> currentMoves)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(numDisks, initialPegs, currentPegs, currentMoves);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HanoiTowerState {
  const factory _Initial(
      {required final int numDisks,
      required final List<List<int>> initialPegs,
      required final List<List<int>> currentPegs,
      required final List<List<int>> currentMoves}) = _$InitialImpl;

  @override
  int get numDisks;
  @override
  List<List<int>> get initialPegs;
  @override
  List<List<int>> get currentPegs;
  @override
  List<List<int>> get currentMoves;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
