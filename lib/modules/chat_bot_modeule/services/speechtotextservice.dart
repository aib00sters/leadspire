import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/respocemodel.dart';

Future<String> speechtotext(
    {required String text1,
    required String assistantid,
    required String threadid,
    String? baseurl}) async {
  // Map map = {"prompt": text1};
  final loginid = await IsarServices().getLoginId();
  Map<String, String> requestBody = <String, String>{
    "question": text1,
    "assistant_id": assistantid,
    "thread_id": threadid,
    "usid": loginid ?? "",
  };
  // String jsonEncodedBody =;
  // print(jsonEncodedBody);

  // var uri = Uri.parse("$baseurl/ask");
  var uri = Uri.parse("$baseurl");
  try {
    // var request = http.MultipartRequest('POST', uri)
    //   //if u have headers, basic auth, token bearer... Else remove line
    //   ..fields.addAll(requestBody);
    // var response = await request.send();
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      //final respStr = await response.stream.bytesToString();
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      String modelResponse = jsonResponse["answer"];
      print(jsonResponse["answer"]);
      return modelResponse;
    } else {
      return "error";
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
