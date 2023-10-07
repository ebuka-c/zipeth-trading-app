class Tokens {
  String? title;
  String? subtitle1;
  String? subtitle2;
  String? balance;

  Tokens({this.balance, this.subtitle1, this.subtitle2, this.title});

  Tokens.fromJson(Map<String, dynamic> tokenJsonData) {
    title = tokenJsonData['title'];
    subtitle1 = tokenJsonData['subtitle1'];
    subtitle2 = tokenJsonData['subtitle2'];
    balance = tokenJsonData['balance'];
  }
}








/**
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String balance; */


/**
class TokenJsonService {
  Future<List<Bots>> getData() async {
    final data = await rootBundle.loadString('json/bots_info.json');

    var jsonData = json.decode(data) as List;

    return jsonData.map((e) => Bots.fromJson(e)).toList();
  }
}
 */