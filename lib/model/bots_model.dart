class Bots {
  String? userName;
  String? percentage;
  String? madeBy;
  String? type;

  Bots({this.userName, this.percentage, this.madeBy, this.type});

  Bots.fromJson(Map<String, dynamic> jsonData) {
    userName = jsonData['userName'];
    percentage = jsonData['percentage'];
    madeBy = jsonData['madeBy'];
    type = jsonData['type'];
  }
}
