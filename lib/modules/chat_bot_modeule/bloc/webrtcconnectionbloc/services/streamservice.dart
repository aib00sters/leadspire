import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> makePostRequest({required String imageurl}) async {
  final url = Uri.parse('https://api.d-id.com/talks/streams');
  final headers = {
    'Authorization': 'Basic ZGV2LndlbGxiZWluZy5hcHBAZ21haWwuY29t:5vMUfK_CBuT7qXqgvPqLy',
    'Content-Type': 'application/json',
  };
  final body = jsonEncode({
    'source_url':
        //imageurl,
        'https://trimtask.com/wp-content/uploads/2023/04/sage_realistic_face_digital_portrait_of_an_exotic_woman_face_an_f4887f01-ad43-4a69-9cdd-82bb00093df0.png',
    "stream_warmup": "True",
    "compatibility_mode": "on",
  });

  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      // Request was successful
      print('Response data: ${response.body}');
      final Map<String, dynamic> decoded = jsonDecode(response.body);
      return decoded;
    } else {
      print('Failed with status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      return {'error': 'Failed with status code: ${response.statusCode}'};
    }
  } catch (e) {
    print('Exception: $e');
    return {'error': 'Failed with status code: $e'};
  }
}
