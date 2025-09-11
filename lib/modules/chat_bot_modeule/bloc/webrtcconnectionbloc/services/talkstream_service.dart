import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>> createTalkStream({
  required String? streamId,
  required String? sessionId,
  required String? talk,
}) async {
  final url = Uri.parse('https://api.d-id.com/talks/streams/$streamId');

  final headers = {
    'Authorization': 'Basic YWxsYWlzcGFjZTI3OUBnbWFpbC5jb20:EFXcX5FAbuZoTajJMDH00',
    'Content-Type': 'application/json',
  };

  final payload = {
    "script": {
      "type": "text",
      "provider": {"type": "microsoft", "voice_id": "en-US-JennyNeural"},
      "ssml": "false",
      "input": talk
    },
    "config": {
      "fluent": "false",
      "pad_audio": "0.0",
      "result_format": "mp4",
      "stitch": "True"
    },
    "audio_optimization": "2",
    "name": "video1",
    "session_id": sessionId
  };

  try {
    final response =
        await http.post(url, headers: headers, body: jsonEncode(payload));

    if (response.statusCode == 200) {
      print('Talk stream created successfully');
      return jsonDecode(response.body);
    } else {
      print(
          'Failed to create talk stream. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      throw Exception('Failed to create talk stream');
    }
  } catch (e) {
    print('Exception occurred while creating talk stream: $e');
    rethrow;
  }
}
