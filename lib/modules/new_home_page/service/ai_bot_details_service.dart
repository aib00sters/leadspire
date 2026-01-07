import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:wellbeings/constants/app_urls.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/respocemodel.dart';
import 'package:wellbeings/modules/new_home_page/models/aibotdetails_model.dart';

Future<Aibotdetailsmodel> getaibotdetails() async {
  // Map map = {"prompt": text1};
  const String url = Urls.loginUrl;
  final loginid = await IsarServices().getLoginId();
  final name = await IsarServices().getName();
  // const loginid = "9500556768";
  // const name = "Joe";

  Map<String, String> data = {
    'name': name,
    'id': loginid.toString(),
    'key': 'lo7ye0eenfza-5897lzube4ffi859liu-8ohuzguleuipo9'
    // '5jtye0eenfza-qbopzube4ffi8vt19r-ogluzgulead123',
  };
  // Map<String, dynamic> data = {
  //   'name': loginid,
  //   'id': name,
  //   'key': '5jtye0eenfza-qbopzube4ffi8vt19r-ogluzgu',
  // };

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: data,
    );
    final Map<String, dynamic> decoded = jsonDecode(response.body);
    print(response.body);
    if (response.statusCode == 201) {
      //return resp.body;
      final response = Aibotdetailsmodel.fromJson(decoded);
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
