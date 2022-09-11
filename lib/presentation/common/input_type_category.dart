class CategoryData {
  static const Map<String, String> categories = {
    'General Knowledge': '9',
    'Entertainment: Books': '10',
    'Entertainment: Film': '11',
    'Entertainment: Music': '12',
    'Entertainment: Video Games': '15',
    'Mythology': '20',
    'Sports': '21',
    'Geography': '22',
    'History': '23',
  };

  static String initStateKey() => categories.keys.toList()[0];

  static String initStateValue() => categories[0] ?? '9';
}

class TypeData {
  static const Map<String, String> type = {
    "Multiple Choice": "multiple",
    "True/False": "boolean",
  };

  static String initStateKey() => type.keys.toList()[0];

  static String initStateValue() => type[0] ?? 'multiple';
}
