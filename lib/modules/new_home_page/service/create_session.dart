import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:timeago/timeago.dart';
import 'package:wellbeings/constants/app_urls.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/respocemodel.dart';
import 'package:wellbeings/modules/new_home_page/models/newsession_model/newsession_model.dart';
import 'package:wellbeings/modules/new_home_page/service/ai_bot_details_service.dart';

Future<Newsessionmodel> createsession({ String? asstid}) async {
  const String url = Urls.createSessionUrl;
  Map<String, dynamic> d = {
    'aid': asstid,
    'sid': '',
  };

  Future<http.Response> makePostRequest(String token) async {
    return await http.post(
      Uri.parse(url),
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
      body: jsonEncode(d),
    );
  }

  try {
    String token = await IsarServices().getToken();
    var response = await makePostRequest(token);

    if (response.statusCode == 403) {
      await getaibotdetails();
      token = await IsarServices().getToken();
      response = await makePostRequest(token);
    }

    if (response.statusCode == 200) {
      print(response.body);
      final List<dynamic> decodedList = jsonDecode(response.body);
      final Map<String, dynamic> decoded = decodedList[0];
      final newsessionModel = Newsessionmodel.fromJson(decoded);
      print(newsessionModel);
      print(decoded);
      return newsessionModel;
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
