//here we will write the traders model class
class TradersModel {
  String name;
  String copyingFee;
  String followers;
  String daysNum;

  TradersModel(
      {required this.copyingFee,
      required this.daysNum,
      required this.followers,
      required this.name});

  // TradersModel.fromJson(Map<String, dynamic> )
}
