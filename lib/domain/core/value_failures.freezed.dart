// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidCategory,
    required TResult Function(String failedValue) invalidType,
    required TResult Function() emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(InvalidCategory<T> value) invalidCategory,
    required TResult Function(InvalidType<T> value) invalidType,
    required TResult Function(EmptyString<T> value) emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidCategory,
    required TResult Function(String failedValue) invalidType,
    required TResult Function() emptyString,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(InvalidCategory<T> value) invalidCategory,
    required TResult Function(InvalidType<T> value) invalidType,
    required TResult Function(EmptyString<T> value) emptyString,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final String failedValue}) =
      _$InvalidEmail<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPasswordCopyWith<T, $Res> {
  factory _$$InvalidPasswordCopyWith(_$InvalidPassword<T> value,
          $Res Function(_$InvalidPassword<T>) then) =
      __$$InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidPasswordCopyWith<T, $Res> {
  __$$InvalidPasswordCopyWithImpl(
      _$InvalidPassword<T> _value, $Res Function(_$InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidPassword<T>));

  @override
  _$InvalidPassword<T> get _value => super._value as _$InvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      __$$InvalidPasswordCopyWithImpl<T, _$InvalidPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidCategory,
    required TResult Function(String failedValue) invalidType,
    required TResult Function() emptyString,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
  }) {
    return invalidPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(InvalidCategory<T> value) invalidCategory,
    required TResult Function(InvalidType<T> value) invalidType,
    required TResult Function(EmptyString<T> value) emptyString,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({required final String failedValue}) =
      _$InvalidPassword<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidAmountCopyWith<T, $Res> {
  factory _$$InvalidAmountCopyWith(
          _$InvalidAmount<T> value, $Res Function(_$InvalidAmount<T>) then) =
      __$$InvalidAmountCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidAmountCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidAmountCopyWith<T, $Res> {
  __$$InvalidAmountCopyWithImpl(
      _$InvalidAmount<T> _value, $Res Function(_$InvalidAmount<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidAmount<T>));

  @override
  _$InvalidAmount<T> get _value => super._value as _$InvalidAmount<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidAmount<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidAmount<T> implements InvalidAmount<T> {
  const _$InvalidAmount({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidAmount(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidAmount<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidAmountCopyWith<T, _$InvalidAmount<T>> get copyWith =>
      __$$InvalidAmountCopyWithImpl<T, _$InvalidAmount<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidCategory,
    required TResult Function(String failedValue) invalidType,
    required TResult Function() emptyString,
  }) {
    return invalidAmount(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
  }) {
    return invalidAmount?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(InvalidCategory<T> value) invalidCategory,
    required TResult Function(InvalidType<T> value) invalidType,
    required TResult Function(EmptyString<T> value) emptyString,
  }) {
    return invalidAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
  }) {
    return invalidAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(this);
    }
    return orElse();
  }
}

abstract class InvalidAmount<T> implements ValueFailure<T> {
  const factory InvalidAmount({required final String failedValue}) =
      _$InvalidAmount<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidAmountCopyWith<T, _$InvalidAmount<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidCategoryCopyWith<T, $Res> {
  factory _$$InvalidCategoryCopyWith(_$InvalidCategory<T> value,
          $Res Function(_$InvalidCategory<T>) then) =
      __$$InvalidCategoryCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidCategoryCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidCategoryCopyWith<T, $Res> {
  __$$InvalidCategoryCopyWithImpl(
      _$InvalidCategory<T> _value, $Res Function(_$InvalidCategory<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidCategory<T>));

  @override
  _$InvalidCategory<T> get _value => super._value as _$InvalidCategory<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidCategory<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidCategory<T> implements InvalidCategory<T> {
  const _$InvalidCategory({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCategory(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidCategory<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidCategoryCopyWith<T, _$InvalidCategory<T>> get copyWith =>
      __$$InvalidCategoryCopyWithImpl<T, _$InvalidCategory<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidCategory,
    required TResult Function(String failedValue) invalidType,
    required TResult Function() emptyString,
  }) {
    return invalidCategory(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
  }) {
    return invalidCategory?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
    required TResult orElse(),
  }) {
    if (invalidCategory != null) {
      return invalidCategory(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(InvalidCategory<T> value) invalidCategory,
    required TResult Function(InvalidType<T> value) invalidType,
    required TResult Function(EmptyString<T> value) emptyString,
  }) {
    return invalidCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
  }) {
    return invalidCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (invalidCategory != null) {
      return invalidCategory(this);
    }
    return orElse();
  }
}

abstract class InvalidCategory<T> implements ValueFailure<T> {
  const factory InvalidCategory({required final String failedValue}) =
      _$InvalidCategory<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidCategoryCopyWith<T, _$InvalidCategory<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidTypeCopyWith<T, $Res> {
  factory _$$InvalidTypeCopyWith(
          _$InvalidType<T> value, $Res Function(_$InvalidType<T>) then) =
      __$$InvalidTypeCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidTypeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidTypeCopyWith<T, $Res> {
  __$$InvalidTypeCopyWithImpl(
      _$InvalidType<T> _value, $Res Function(_$InvalidType<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidType<T>));

  @override
  _$InvalidType<T> get _value => super._value as _$InvalidType<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidType<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidType<T> implements InvalidType<T> {
  const _$InvalidType({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidType(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidType<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidTypeCopyWith<T, _$InvalidType<T>> get copyWith =>
      __$$InvalidTypeCopyWithImpl<T, _$InvalidType<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidCategory,
    required TResult Function(String failedValue) invalidType,
    required TResult Function() emptyString,
  }) {
    return invalidType(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
  }) {
    return invalidType?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
    required TResult orElse(),
  }) {
    if (invalidType != null) {
      return invalidType(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(InvalidCategory<T> value) invalidCategory,
    required TResult Function(InvalidType<T> value) invalidType,
    required TResult Function(EmptyString<T> value) emptyString,
  }) {
    return invalidType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
  }) {
    return invalidType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (invalidType != null) {
      return invalidType(this);
    }
    return orElse();
  }
}

abstract class InvalidType<T> implements ValueFailure<T> {
  const factory InvalidType({required final String failedValue}) =
      _$InvalidType<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidTypeCopyWith<T, _$InvalidType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStringCopyWith<T, $Res> {
  factory _$$EmptyStringCopyWith(
          _$EmptyString<T> value, $Res Function(_$EmptyString<T>) then) =
      __$$EmptyStringCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyStringCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyStringCopyWith<T, $Res> {
  __$$EmptyStringCopyWithImpl(
      _$EmptyString<T> _value, $Res Function(_$EmptyString<T>) _then)
      : super(_value, (v) => _then(v as _$EmptyString<T>));

  @override
  _$EmptyString<T> get _value => super._value as _$EmptyString<T>;
}

/// @nodoc

class _$EmptyString<T> implements EmptyString<T> {
  const _$EmptyString();

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyString<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) invalidPassword,
    required TResult Function(String failedValue) invalidAmount,
    required TResult Function(String failedValue) invalidCategory,
    required TResult Function(String failedValue) invalidType,
    required TResult Function() emptyString,
  }) {
    return emptyString();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
  }) {
    return emptyString?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? invalidPassword,
    TResult Function(String failedValue)? invalidAmount,
    TResult Function(String failedValue)? invalidCategory,
    TResult Function(String failedValue)? invalidType,
    TResult Function()? emptyString,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
    required TResult Function(InvalidCategory<T> value) invalidCategory,
    required TResult Function(InvalidType<T> value) invalidType,
    required TResult Function(EmptyString<T> value) emptyString,
  }) {
    return emptyString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
  }) {
    return emptyString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    TResult Function(InvalidCategory<T> value)? invalidCategory,
    TResult Function(InvalidType<T> value)? invalidType,
    TResult Function(EmptyString<T> value)? emptyString,
    required TResult orElse(),
  }) {
    if (emptyString != null) {
      return emptyString(this);
    }
    return orElse();
  }
}

abstract class EmptyString<T> implements ValueFailure<T> {
  const factory EmptyString() = _$EmptyString<T>;
}
