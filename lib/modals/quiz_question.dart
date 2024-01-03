class QuizQuestion {
  final String question;
  final List<String> answer;
  List<String> getShuffedAnswer() {
    final List<String> shuffedAnswer = List.of(answer);
    shuffedAnswer.shuffle();
    return shuffedAnswer;
  }

  QuizQuestion(this.question, this.answer);
}
