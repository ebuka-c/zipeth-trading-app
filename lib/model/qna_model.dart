class QNA {
  String? question;
  String? answer;

  QNA({this.answer, this.question});

  QNA.fromJson(Map<String, dynamic> jsonData) {
    question = jsonData['question'];
    answer = jsonData['answer'];
  }
}
