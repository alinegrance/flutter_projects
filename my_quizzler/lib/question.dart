class Question {

  late String _questionText;
  late bool _questionAnswer;

  Question({required String q, required bool a}) {
    _questionText = q;
    _questionAnswer = a;
  }

  String getQuestionText(){
    return _questionText;
  }

  bool getQuestionAnswer(){
    return _questionAnswer;
  }

}
