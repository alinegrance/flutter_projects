import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Are you a canza?', a: true),
    Question(q: 'Are you a smart canza?', a: false),
    Question(q: 'Does the doggo stinks?', a: true),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished(){
    if(_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].getQuestionText();
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].getQuestionAnswer();
  }
}

