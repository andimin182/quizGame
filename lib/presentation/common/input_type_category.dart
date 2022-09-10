class Category {
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
}

class Type {
  static const type = [
    'Multiple Choice',
    'True/False',
  ];

  static Map<String, String> getMap() {
    final map = <String, String>{
      "Multiple Choice": "multiple",
      "True/False": "boolean",
    };
    return map;
  }
}
