import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/bots_model.dart';
import '../model/qna_model.dart';
import '../model/tokens_model.dart';

class JsonService {
  Future<List<QNA>> getQuestions() async {
    final data = await rootBundle.loadString('json/info.json');

    var jsonData = json.decode(data) as List;

    return jsonData.map((e) => QNA.fromJson(e)).toList();
  }
}

class BotsJsonService {
  Future<List<Bots>> getData() async {
    final data = await rootBundle.loadString('json/bots_info.json');

    var jsonData = json.decode(data) as List;

    return jsonData.map((e) => Bots.fromJson(e)).toList();
  }
}

class TokenJsonService {
  Future<List<Tokens>> getTokens() async {
    final data = await rootBundle.loadString('json/bots_info.json');

    var tokenJsonData = json.decode(data) as List;

    return tokenJsonData.map((e) => Tokens.fromJson(e)).toList();
  }
}
