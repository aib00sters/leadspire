import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:timeago/timeago.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/history_model.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/respocemodel.dart';


Future<Historymodel> gethistory(
    {required String? asstid, required String? sessionid}) async {
  // Map map = {"prompt": text1};
  const String url = 'https://myndboosters.com/api/v1/m/session';
  Map<String, dynamic> d = {
    'aid': asstid,
    'sid': sessionid,
  };
  final token = await IsarServices().getToken();
  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
      body: jsonEncode(d),
    );
    final Map<String, dynamic> decoded = jsonDecode(response.body);
    if (response.statusCode == 200) {
      //return resp.body;
      final response = Historymodel.fromJson(decoded);
      print(response);
      print(decoded);
      return response;
    } else {
      throw Exception('Failed to load response');
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
