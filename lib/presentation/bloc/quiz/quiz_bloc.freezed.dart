// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function() getQuizPressed,
    required TResult Function() newQuizPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(GetQuizPressed value) getQuizPressed,
    required TResult Function(NewQuizPressed value) newQuizPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res> implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  final QuizEvent _value;
  // ignore: unused_field
  final $Res Function(QuizEvent) _then;
}

/// @nodoc
abstract class _$$CategoryChangedCopyWith<$Res> {
  factory _$$CategoryChangedCopyWith(
          _$CategoryChanged value, $Res Function(_$CategoryChanged) then) =
      __$$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String categoryStr});
}

/// @nodoc
class __$$CategoryChangedCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$$CategoryChangedCopyWith<$Res> {
  __$$CategoryChangedCopyWithImpl(
      _$CategoryChanged _value, $Res Function(_$CategoryChanged) _then)
      : super(_value, (v) => _then(v as _$CategoryChanged));

  @override
  _$CategoryChanged get _value => super._value as _$CategoryChanged;

  @override
  $Res call({
    Object? categoryStr = freezed,
  }) {
    return _then(_$CategoryChanged(
      categoryStr == freezed
          ? _value.categoryStr
          : categoryStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryChanged implements CategoryChanged {
  const _$CategoryChanged(this.categoryStr);

  @override
  final String categoryStr;

  @override
  String toString() {
    return 'QuizEvent.categoryChanged(categoryStr: $categoryStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChanged &&
            const DeepCollectionEquality()
                .equals(other.categoryStr, categoryStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(categoryStr));

  @JsonKey(ignore: true)
  @override
  _$$CategoryChangedCopyWith<_$CategoryChanged> get copyWith =>
      __$$CategoryChangedCopyWithImpl<_$CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function() getQuizPressed,
    required TResult Function() newQuizPressed,
  }) {
    return categoryChanged(categoryStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
  }) {
    return categoryChanged?.call(categoryStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(categoryStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(GetQuizPressed value) getQuizPressed,
    required TResult Function(NewQuizPressed value) newQuizPressed,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements QuizEvent {
  const factory CategoryChanged(final String categoryStr) = _$CategoryChanged;

  String get categoryStr;
  @JsonKey(ignore: true)
  _$$CategoryChangedCopyWith<_$CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedCopyWith<$Res> {
  factory _$$AmountChangedCopyWith(
          _$AmountChanged value, $Res Function(_$AmountChanged) then) =
      __$$AmountChangedCopyWithImpl<$Res>;
  $Res call({String amountStr});
}

/// @nodoc
class __$$AmountChangedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$$AmountChangedCopyWith<$Res> {
  __$$AmountChangedCopyWithImpl(
      _$AmountChanged _value, $Res Function(_$AmountChanged) _then)
      : super(_value, (v) => _then(v as _$AmountChanged));

  @override
  _$AmountChanged get _value => super._value as _$AmountChanged;

  @override
  $Res call({
    Object? amountStr = freezed,
  }) {
    return _then(_$AmountChanged(
      amountStr == freezed
          ? _value.amountStr
          : amountStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amountStr);

  @override
  final String amountStr;

  @override
  String toString() {
    return 'QuizEvent.amountChanged(amountStr: $amountStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountChanged &&
            const DeepCollectionEquality().equals(other.amountStr, amountStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amountStr));

  @JsonKey(ignore: true)
  @override
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      __$$AmountChangedCopyWithImpl<_$AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function() getQuizPressed,
    required TResult Function() newQuizPressed,
  }) {
    return amountChanged(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
  }) {
    return amountChanged?.call(amountStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amountStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(GetQuizPressed value) getQuizPressed,
    required TResult Function(NewQuizPressed value) newQuizPressed,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements QuizEvent {
  const factory AmountChanged(final String amountStr) = _$AmountChanged;

  String get amountStr;
  @JsonKey(ignore: true)
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeChangedCopyWith<$Res> {
  factory _$$TypeChangedCopyWith(
          _$TypeChanged value, $Res Function(_$TypeChanged) then) =
      __$$TypeChangedCopyWithImpl<$Res>;
  $Res call({String typeStr});
}

/// @nodoc
class __$$TypeChangedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$$TypeChangedCopyWith<$Res> {
  __$$TypeChangedCopyWithImpl(
      _$TypeChanged _value, $Res Function(_$TypeChanged) _then)
      : super(_value, (v) => _then(v as _$TypeChanged));

  @override
  _$TypeChanged get _value => super._value as _$TypeChanged;

  @override
  $Res call({
    Object? typeStr = freezed,
  }) {
    return _then(_$TypeChanged(
      typeStr == freezed
          ? _value.typeStr
          : typeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypeChanged implements TypeChanged {
  const _$TypeChanged(this.typeStr);

  @override
  final String typeStr;

  @override
  String toString() {
    return 'QuizEvent.typeChanged(typeStr: $typeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeChanged &&
            const DeepCollectionEquality().equals(other.typeStr, typeStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(typeStr));

  @JsonKey(ignore: true)
  @override
  _$$TypeChangedCopyWith<_$TypeChanged> get copyWith =>
      __$$TypeChangedCopyWithImpl<_$TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function() getQuizPressed,
    required TResult Function() newQuizPressed,
  }) {
    return typeChanged(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
  }) {
    return typeChanged?.call(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(typeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(GetQuizPressed value) getQuizPressed,
    required TResult Function(NewQuizPressed value) newQuizPressed,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class TypeChanged implements QuizEvent {
  const factory TypeChanged(final String typeStr) = _$TypeChanged;

  String get typeStr;
  @JsonKey(ignore: true)
  _$$TypeChangedCopyWith<_$TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetQuizPressedCopyWith<$Res> {
  factory _$$GetQuizPressedCopyWith(
          _$GetQuizPressed value, $Res Function(_$GetQuizPressed) then) =
      __$$GetQuizPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetQuizPressedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$$GetQuizPressedCopyWith<$Res> {
  __$$GetQuizPressedCopyWithImpl(
      _$GetQuizPressed _value, $Res Function(_$GetQuizPressed) _then)
      : super(_value, (v) => _then(v as _$GetQuizPressed));

  @override
  _$GetQuizPressed get _value => super._value as _$GetQuizPressed;
}

/// @nodoc

class _$GetQuizPressed implements GetQuizPressed {
  const _$GetQuizPressed();

  @override
  String toString() {
    return 'QuizEvent.getQuizPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetQuizPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function() getQuizPressed,
    required TResult Function() newQuizPressed,
  }) {
    return getQuizPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
  }) {
    return getQuizPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
    required TResult orElse(),
  }) {
    if (getQuizPressed != null) {
      return getQuizPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(GetQuizPressed value) getQuizPressed,
    required TResult Function(NewQuizPressed value) newQuizPressed,
  }) {
    return getQuizPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
  }) {
    return getQuizPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
    required TResult orElse(),
  }) {
    if (getQuizPressed != null) {
      return getQuizPressed(this);
    }
    return orElse();
  }
}

abstract class GetQuizPressed implements QuizEvent {
  const factory GetQuizPressed() = _$GetQuizPressed;
}

/// @nodoc
abstract class _$$NewQuizPressedCopyWith<$Res> {
  factory _$$NewQuizPressedCopyWith(
          _$NewQuizPressed value, $Res Function(_$NewQuizPressed) then) =
      __$$NewQuizPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewQuizPressedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$$NewQuizPressedCopyWith<$Res> {
  __$$NewQuizPressedCopyWithImpl(
      _$NewQuizPressed _value, $Res Function(_$NewQuizPressed) _then)
      : super(_value, (v) => _then(v as _$NewQuizPressed));

  @override
  _$NewQuizPressed get _value => super._value as _$NewQuizPressed;
}

/// @nodoc

class _$NewQuizPressed implements NewQuizPressed {
  const _$NewQuizPressed();

  @override
  String toString() {
    return 'QuizEvent.newQuizPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewQuizPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryStr) categoryChanged,
    required TResult Function(String amountStr) amountChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function() getQuizPressed,
    required TResult Function() newQuizPressed,
  }) {
    return newQuizPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
  }) {
    return newQuizPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryStr)? categoryChanged,
    TResult Function(String amountStr)? amountChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function()? getQuizPressed,
    TResult Function()? newQuizPressed,
    required TResult orElse(),
  }) {
    if (newQuizPressed != null) {
      return newQuizPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(GetQuizPressed value) getQuizPressed,
    required TResult Function(NewQuizPressed value) newQuizPressed,
  }) {
    return newQuizPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
  }) {
    return newQuizPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(GetQuizPressed value)? getQuizPressed,
    TResult Function(NewQuizPressed value)? newQuizPressed,
    required TResult orElse(),
  }) {
    if (newQuizPressed != null) {
      return newQuizPressed(this);
    }
    return orElse();
  }
}

abstract class NewQuizPressed implements QuizEvent {
  const factory NewQuizPressed() = _$NewQuizPressed;
}

/// @nodoc
mixin _$QuizState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  List<Question> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoaded,
      bool isSubmitting,
      bool showError,
      String category,
      String type,
      String amount,
      List<Question> results});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res> implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  final QuizState _value;
  // ignore: unused_field
  final $Res Function(QuizState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoaded = freezed,
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$$_QuizStateCopyWith(
          _$_QuizState value, $Res Function(_$_QuizState) then) =
      __$$_QuizStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoaded,
      bool isSubmitting,
      bool showError,
      String category,
      String type,
      String amount,
      List<Question> results});
}

/// @nodoc
class __$$_QuizStateCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$$_QuizStateCopyWith<$Res> {
  __$$_QuizStateCopyWithImpl(
      _$_QuizState _value, $Res Function(_$_QuizState) _then)
      : super(_value, (v) => _then(v as _$_QuizState));

  @override
  _$_QuizState get _value => super._value as _$_QuizState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isLoaded = freezed,
    Object? isSubmitting = freezed,
    Object? showError = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_QuizState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_QuizState implements _QuizState {
  const _$_QuizState(
      {required this.isLoading,
      required this.isLoaded,
      required this.isSubmitting,
      required this.showError,
      required this.category,
      required this.type,
      required this.amount,
      required final List<Question> results})
      : _results = results;

  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final bool isSubmitting;
  @override
  final bool showError;
  @override
  final String category;
  @override
  final String type;
  @override
  final String amount;
  final List<Question> _results;
  @override
  List<Question> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'QuizState(isLoading: $isLoading, isLoaded: $isLoaded, isSubmitting: $isSubmitting, showError: $showError, category: $category, type: $type, amount: $amount, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isLoaded, isLoaded) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.showError, showError) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoaded),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showError),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      __$$_QuizStateCopyWithImpl<_$_QuizState>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {required final bool isLoading,
      required final bool isLoaded,
      required final bool isSubmitting,
      required final bool showError,
      required final String category,
      required final String type,
      required final String amount,
      required final List<Question> results}) = _$_QuizState;

  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  bool get isSubmitting;
  @override
  bool get showError;
  @override
  String get category;
  @override
  String get type;
  @override
  String get amount;
  @override
  List<Question> get results;
  @override
  @JsonKey(ignore: true)
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}
