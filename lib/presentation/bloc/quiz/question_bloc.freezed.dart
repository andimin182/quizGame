// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)
        submitAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() showResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitAnswer value) submitAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(ShowResults value) showResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  final QuestionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionEvent) _then;
}

/// @nodoc
abstract class _$$SubmitAnswerCopyWith<$Res> {
  factory _$$SubmitAnswerCopyWith(
          _$SubmitAnswer value, $Res Function(_$SubmitAnswer) then) =
      __$$SubmitAnswerCopyWithImpl<$Res>;
  $Res call(
      {String submittedAnswer,
      String correctAnswer,
      int numberQuestions,
      int currentQuestion});
}

/// @nodoc
class __$$SubmitAnswerCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$SubmitAnswerCopyWith<$Res> {
  __$$SubmitAnswerCopyWithImpl(
      _$SubmitAnswer _value, $Res Function(_$SubmitAnswer) _then)
      : super(_value, (v) => _then(v as _$SubmitAnswer));

  @override
  _$SubmitAnswer get _value => super._value as _$SubmitAnswer;

  @override
  $Res call({
    Object? submittedAnswer = freezed,
    Object? correctAnswer = freezed,
    Object? numberQuestions = freezed,
    Object? currentQuestion = freezed,
  }) {
    return _then(_$SubmitAnswer(
      submittedAnswer: submittedAnswer == freezed
          ? _value.submittedAnswer
          : submittedAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: correctAnswer == freezed
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      numberQuestions: numberQuestions == freezed
          ? _value.numberQuestions
          : numberQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuestion: currentQuestion == freezed
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SubmitAnswer implements SubmitAnswer {
  const _$SubmitAnswer(
      {required this.submittedAnswer,
      required this.correctAnswer,
      required this.numberQuestions,
      required this.currentQuestion});

  @override
  final String submittedAnswer;
  @override
  final String correctAnswer;
  @override
  final int numberQuestions;
  @override
  final int currentQuestion;

  @override
  String toString() {
    return 'QuestionEvent.submitAnswer(submittedAnswer: $submittedAnswer, correctAnswer: $correctAnswer, numberQuestions: $numberQuestions, currentQuestion: $currentQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitAnswer &&
            const DeepCollectionEquality()
                .equals(other.submittedAnswer, submittedAnswer) &&
            const DeepCollectionEquality()
                .equals(other.correctAnswer, correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other.numberQuestions, numberQuestions) &&
            const DeepCollectionEquality()
                .equals(other.currentQuestion, currentQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(submittedAnswer),
      const DeepCollectionEquality().hash(correctAnswer),
      const DeepCollectionEquality().hash(numberQuestions),
      const DeepCollectionEquality().hash(currentQuestion));

  @JsonKey(ignore: true)
  @override
  _$$SubmitAnswerCopyWith<_$SubmitAnswer> get copyWith =>
      __$$SubmitAnswerCopyWithImpl<_$SubmitAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)
        submitAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() showResults,
  }) {
    return submitAnswer(
        submittedAnswer, correctAnswer, numberQuestions, currentQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
  }) {
    return submitAnswer?.call(
        submittedAnswer, correctAnswer, numberQuestions, currentQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
    required TResult orElse(),
  }) {
    if (submitAnswer != null) {
      return submitAnswer(
          submittedAnswer, correctAnswer, numberQuestions, currentQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitAnswer value) submitAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(ShowResults value) showResults,
  }) {
    return submitAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
  }) {
    return submitAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
    required TResult orElse(),
  }) {
    if (submitAnswer != null) {
      return submitAnswer(this);
    }
    return orElse();
  }
}

abstract class SubmitAnswer implements QuestionEvent {
  const factory SubmitAnswer(
      {required final String submittedAnswer,
      required final String correctAnswer,
      required final int numberQuestions,
      required final int currentQuestion}) = _$SubmitAnswer;

  String get submittedAnswer;
  String get correctAnswer;
  int get numberQuestions;
  int get currentQuestion;
  @JsonKey(ignore: true)
  _$$SubmitAnswerCopyWith<_$SubmitAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextQuestionCopyWith<$Res> {
  factory _$$NextQuestionCopyWith(
          _$NextQuestion value, $Res Function(_$NextQuestion) then) =
      __$$NextQuestionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextQuestionCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$NextQuestionCopyWith<$Res> {
  __$$NextQuestionCopyWithImpl(
      _$NextQuestion _value, $Res Function(_$NextQuestion) _then)
      : super(_value, (v) => _then(v as _$NextQuestion));

  @override
  _$NextQuestion get _value => super._value as _$NextQuestion;
}

/// @nodoc

class _$NextQuestion implements NextQuestion {
  const _$NextQuestion();

  @override
  String toString() {
    return 'QuestionEvent.nextQuestion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextQuestion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)
        submitAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() showResults,
  }) {
    return nextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
  }) {
    return nextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitAnswer value) submitAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(ShowResults value) showResults,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(this);
    }
    return orElse();
  }
}

abstract class NextQuestion implements QuestionEvent {
  const factory NextQuestion() = _$NextQuestion;
}

/// @nodoc
abstract class _$$ShowResultsCopyWith<$Res> {
  factory _$$ShowResultsCopyWith(
          _$ShowResults value, $Res Function(_$ShowResults) then) =
      __$$ShowResultsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowResultsCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements _$$ShowResultsCopyWith<$Res> {
  __$$ShowResultsCopyWithImpl(
      _$ShowResults _value, $Res Function(_$ShowResults) _then)
      : super(_value, (v) => _then(v as _$ShowResults));

  @override
  _$ShowResults get _value => super._value as _$ShowResults;
}

/// @nodoc

class _$ShowResults implements ShowResults {
  const _$ShowResults();

  @override
  String toString() {
    return 'QuestionEvent.showResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)
        submitAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() showResults,
  }) {
    return showResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
  }) {
    return showResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String submittedAnswer, String correctAnswer,
            int numberQuestions, int currentQuestion)?
        submitAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? showResults,
    required TResult orElse(),
  }) {
    if (showResults != null) {
      return showResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitAnswer value) submitAnswer,
    required TResult Function(NextQuestion value) nextQuestion,
    required TResult Function(ShowResults value) showResults,
  }) {
    return showResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
  }) {
    return showResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitAnswer value)? submitAnswer,
    TResult Function(NextQuestion value)? nextQuestion,
    TResult Function(ShowResults value)? showResults,
    required TResult orElse(),
  }) {
    if (showResults != null) {
      return showResults(this);
    }
    return orElse();
  }
}

abstract class ShowResults implements QuestionEvent {
  const factory ShowResults() = _$ShowResults;
}

/// @nodoc
mixin _$QuestionState {
  int get numberCorrectAnswers => throw _privateConstructorUsedError;
  bool get showButtonResults => throw _privateConstructorUsedError;
  QuizStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
  $Res call(
      {int numberCorrectAnswers, bool showButtonResults, QuizStatus status});
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;

  @override
  $Res call({
    Object? numberCorrectAnswers = freezed,
    Object? showButtonResults = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      numberCorrectAnswers: numberCorrectAnswers == freezed
          ? _value.numberCorrectAnswers
          : numberCorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      showButtonResults: showButtonResults == freezed
          ? _value.showButtonResults
          : showButtonResults // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionStateCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$_QuestionStateCopyWith(
          _$_QuestionState value, $Res Function(_$_QuestionState) then) =
      __$$_QuestionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numberCorrectAnswers, bool showButtonResults, QuizStatus status});
}

/// @nodoc
class __$$_QuestionStateCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$$_QuestionStateCopyWith<$Res> {
  __$$_QuestionStateCopyWithImpl(
      _$_QuestionState _value, $Res Function(_$_QuestionState) _then)
      : super(_value, (v) => _then(v as _$_QuestionState));

  @override
  _$_QuestionState get _value => super._value as _$_QuestionState;

  @override
  $Res call({
    Object? numberCorrectAnswers = freezed,
    Object? showButtonResults = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_QuestionState(
      numberCorrectAnswers: numberCorrectAnswers == freezed
          ? _value.numberCorrectAnswers
          : numberCorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      showButtonResults: showButtonResults == freezed
          ? _value.showButtonResults
          : showButtonResults // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
    ));
  }
}

/// @nodoc

class _$_QuestionState extends _QuestionState {
  _$_QuestionState(
      {required this.numberCorrectAnswers,
      required this.showButtonResults,
      required this.status})
      : super._();

  @override
  final int numberCorrectAnswers;
  @override
  final bool showButtonResults;
  @override
  final QuizStatus status;

  @override
  String toString() {
    return 'QuestionState(numberCorrectAnswers: $numberCorrectAnswers, showButtonResults: $showButtonResults, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionState &&
            const DeepCollectionEquality()
                .equals(other.numberCorrectAnswers, numberCorrectAnswers) &&
            const DeepCollectionEquality()
                .equals(other.showButtonResults, showButtonResults) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numberCorrectAnswers),
      const DeepCollectionEquality().hash(showButtonResults),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionStateCopyWith<_$_QuestionState> get copyWith =>
      __$$_QuestionStateCopyWithImpl<_$_QuestionState>(this, _$identity);
}

abstract class _QuestionState extends QuestionState {
  factory _QuestionState(
      {required final int numberCorrectAnswers,
      required final bool showButtonResults,
      required final QuizStatus status}) = _$_QuestionState;
  _QuestionState._() : super._();

  @override
  int get numberCorrectAnswers;
  @override
  bool get showButtonResults;
  @override
  QuizStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionStateCopyWith<_$_QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}
