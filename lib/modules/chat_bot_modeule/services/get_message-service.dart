import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:timeago/timeago.dart';
import 'package:wellbeings/constants/app_urls.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/history_model.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/messahe_model.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/respocemodel.dart';


Future<MessagedataModel> getmessage({
  required String? asstid,
  required String? sessionid,
  required String? question, required String? imagepath,
}) async {
  final token = await IsarServices().getToken();
  const String url = Urls.messageUrl;
  Map<String, dynamic> d = {
    'sid': sessionid,
    'question': question,
  };

  try {
    final response = await _makePostRequest(url, token, d);
    final Map<String, dynamic> decoded = jsonDecode(response.body);
    
    if (response.statusCode == 200) {
      final messageData = MessagedataModel.fromJson(decoded);
      print(messageData);
      print(decoded);
      return messageData;
    } else if (response.statusCode == 403) {
      final newToken = await IsarServices().getToken();
      final retryResponse = await _makePostRequest(url, newToken, d);

      if (retryResponse.statusCode == 200) {
        final retryDecoded = jsonDecode(retryResponse.body);
        final messageData = MessagedataModel.fromJson(retryDecoded);
        print(messageData);
        print(retryDecoded);
        return messageData;
      } else {
        throw Exception('Failed to load response after token refresh');
      }
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

Future<http.Response> _makePostRequest(
    String url, String token, Map<String, dynamic> body) async {
  return await http.post(
    Uri.parse(url),
    headers: {
      'accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    },
    body: jsonEncode(body),
  );
}
