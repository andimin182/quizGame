import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:quiz/core/util/input_converter.dart';
import 'package:quiz/data/models/request/quiz_request.dart';
import 'package:quiz/domain/entities/quiz_entity.dart';
import 'package:quiz/domain/usecases/quiz_usecase.dart' as question;
import 'package:quiz/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz/core/util/input_converter.dart' as conv;
import 'quiz_bloc_test.mocks.dart';

@GenerateMocks([conv.InputConverter, question.GetQuestions])
void main() {
  late QuizBloc bloc;
  late MockGetQuestions mockGetQuestions;
  late MockInputConverter mockInputConverter;

  setUp(() {
    mockGetQuestions = MockGetQuestions();
    mockInputConverter = MockInputConverter();
    bloc = QuizBloc(
      getQuestions: mockGetQuestions,
      inputConverter: mockInputConverter,
    );
  });

  test('initial QuizState should be QuizEmptyState', () {
    //assert
    expect(bloc.state, QuizEmptyState());
  });

  group('GetQuestions', () {
    const tNumberStringCategory = '1';
    const tNumberStringAmount = '2';
    const tNumberStringType = 'multiple';
    const tNumberParsedCategory = 1;
    const tNumberParsedAmount = 1;
    const tQuestions = [
      Question(
          question: 'question', correctAnswer: 'correctAnswer', answers: []),
      Question(
          question: 'question2', correctAnswer: 'correctAnswer2', answers: []),
    ];
    const request = QuestionRequest(
      amount: tNumberParsedAmount,
      category: tNumberParsedCategory,
      type: tNumberStringType,
    );

    test(
      'should call the InputConverter to validate and convert the string to an unsigned integer',
      () async {
        //arrange
        when(mockInputConverter.stringToUnsignedInteger(
          any,
        )).thenReturn(const Right(
          tNumberParsedCategory,
        ));
        when(mockInputConverter.checkString(
          any,
        )).thenReturn(const Right(
          tNumberStringType,
        ));
        when(mockGetQuestions.execute(request: request)).thenAnswer(
          (_) async => const Right(tQuestions),
        );
        //act
        bloc.add(GetQuizEvent(
          category: tNumberStringCategory,
          amount: tNumberStringAmount,
          type: tNumberStringType,
        ));
        await untilCalled(mockInputConverter.stringToUnsignedInteger(
          any,
        ));
        //assert
        verify(mockInputConverter.stringToUnsignedInteger(
          tNumberStringCategory,
        ));
      },
    );

    test(
      'should emit a QuizErrorState if category input is not valid',
      () async {
        //arrange
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(Left(InvalidInputFailure()));
        when(mockInputConverter.checkString(any))
            .thenReturn(Left(InvalidInputFailure()));

        //act
        bloc.add(GetQuizEvent(
          category: tNumberStringCategory,
          amount: tNumberStringAmount,
          type: tNumberStringType,
        ));
        await untilCalled(mockInputConverter.stringToUnsignedInteger(any));
        //assert later (in order to not miss states)
        expect(bloc.state, const QuizErrorState(INVALID_INPUT_MESSAGE_FAILURE));
      },
    );

    test(
      'should emit a QuizErrorState if category input valid but amount is not valid',
      () async {
        //arrange
        when(mockInputConverter.stringToUnsignedInteger('1'))
            .thenReturn(const Right(1));
        when(mockInputConverter.stringToUnsignedInteger('2'))
            .thenReturn(Left(InvalidInputFailure()));
        when(mockInputConverter.checkString(any))
            .thenReturn(Left(InvalidInputFailure()));

        //act
        bloc.add(GetQuizEvent(
          category: '1',
          amount: '2',
          type: tNumberStringType,
        ));
        await untilCalled(mockInputConverter.stringToUnsignedInteger(any));
        //assert
        expect(bloc.state, const QuizErrorState(INVALID_INPUT_MESSAGE_FAILURE));
      },
    );
    test(
      'should emit a QuizErrorState if category input is valid, amount input is valid but type input is not',
      () async {
        //arrange
        when(mockInputConverter.stringToUnsignedInteger('1'))
            .thenReturn(const Right(1));
        when(mockInputConverter.stringToUnsignedInteger('2'))
            .thenReturn(const Right(2));
        when(mockInputConverter.checkString(any))
            .thenReturn(Left(InvalidInputFailure()));

        //act
        bloc.add(GetQuizEvent(
          category: '1',
          amount: '2',
          type: tNumberStringType,
        ));
        await untilCalled(mockInputConverter.stringToUnsignedInteger(any));
        await untilCalled(mockInputConverter.checkString(any));
        //assert
        expect(bloc.state, const QuizErrorState(INVALID_INPUT_MESSAGE_FAILURE));
      },
    );

    test(
      'should get data from usercase if inputs are valid',
      () async {
        //arrange
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(const Right(1));
        when(mockInputConverter.checkString(any))
            .thenReturn(const Right(tNumberStringType));
        when(mockGetQuestions.execute(request: request)).thenAnswer(
          (_) async => const Right(tQuestions),
        );

        //act
        bloc.add(GetQuizEvent(
          category: '1',
          amount: '1',
          type: tNumberStringType,
        ));
        await untilCalled(mockGetQuestions.execute(request: request));
        await untilCalled(mockInputConverter.stringToUnsignedInteger(any));
        await untilCalled(mockInputConverter.checkString(any));
        //assert
        verify(mockGetQuestions.execute(request: request));
      },
    );

    test(
      'should emit QuizLoadedState if inputs are valid and getQuestions ok',
      () async {
        //arrange
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(const Right(1));
        when(mockInputConverter.checkString(any))
            .thenReturn(const Right(tNumberStringType));
        when(mockGetQuestions.execute(request: request)).thenAnswer(
          (_) async => const Right(tQuestions),
        );

        //act
        bloc.add(GetQuizEvent(
          category: '1',
          amount: '1',
          type: tNumberStringType,
        ));
        await untilCalled(mockGetQuestions.execute(request: request));
        await untilCalled(mockInputConverter.stringToUnsignedInteger(any));
        await untilCalled(mockInputConverter.checkString(any));
        //assert
        expect(bloc.state, const QuizLoadedState(questions: tQuestions));
      },
    );
  });
}
