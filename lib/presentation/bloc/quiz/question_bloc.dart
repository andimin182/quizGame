import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc() : super(QuestionState.initial()) {
    on<SubmitAnswer>(
      (event, emit) {
        if (state.answered) return;

        if (event.correctAnswer == event.submittedAnswer) {
          if (event.currentQuestion == event.numberQuestions) {
            emit(QuestionState(
                numberCorrectAnswers: state.cacheCorrectAnswers + 1,
                showButtonResults: true,
                status: QuizStatus.correct));
          } else {
            emit(QuestionState(
                numberCorrectAnswers: state.cacheCorrectAnswers + 1,
                showButtonResults: false,
                status: QuizStatus.correct));
          }
        } else {
          if (event.currentQuestion == event.numberQuestions) {
            emit(QuestionState(
              numberCorrectAnswers: state.cacheCorrectAnswers,
              showButtonResults: true,
              status: QuizStatus.incorrect,
            ));
          } else {
            emit(QuestionState(
              numberCorrectAnswers: state.cacheCorrectAnswers,
              showButtonResults: false,
              status: QuizStatus.incorrect,
            ));
          }
        }
      },
    );
    on<NextQuestion>(
      (event, emit) {
        emit(QuestionState(
            numberCorrectAnswers: state.cacheCorrectAnswers,
            showButtonResults: false,
            status: QuizStatus.initial));
      },
    );
    on<ShowResults>(
      (event, emit) {
        emit(QuestionState(
            numberCorrectAnswers: state.cacheCorrectAnswers,
            showButtonResults: false,
            status: QuizStatus.completed));
      },
    );
  }
}
