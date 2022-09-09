import 'package:equatable/equatable.dart';

class QuestionRequest extends Equatable {
  final int amount;
  final int category;
  final String type;
  const QuestionRequest({
    required this.amount,
    required this.category,
    required this.type,
  });

  @override
  List<Object?> get props => [
        amount,
        category,
        type,
      ];

  Map<String, dynamic> toMap() {
    final queryParam = {
      "amount": "$amount",
      "type": type,
      "category": "$category",
    };
    return queryParam;
  }
}
