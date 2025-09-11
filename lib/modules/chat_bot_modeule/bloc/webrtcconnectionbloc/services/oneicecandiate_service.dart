import 'dart:collection';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> setIceCandidateHandler({
  required RTCPeerConnection peerConnection,
  required String? streamId,
  required String? sessionId,
  required String apiKey,
  required Queue<RTCIceCandidate> iceCandidates,
}) async {
  // Send existing ICE candidates
  // for (var candidate in iceCandidates) {
  //   await _sendIceCandidate(candidate, streamId, sessionId, apiKey);
  // }

  // Set up listener for future ICE candidates
  // peerConnection.onIceCandidate = (RTCIceCandidate? candidate) async {
  //   if (candidate == null) {
  //     print("No more candidates");
  //     return;
  //   }
  //   await _sendIceCandidate(candidate, streamId, sessionId, apiKey);
  // };
  while (iceCandidates.isNotEmpty) {
    await _sendIceCandidate(
        iceCandidates.removeFirst(), streamId, sessionId, apiKey);
  }
  peerConnection.onIceCandidate = (RTCIceCandidate? candidate) async {
    if (candidate == null) {
      print("No more candidates");
      return;
    }
    await _sendIceCandidate(candidate, streamId, sessionId, apiKey);
  };
}

Future<void> _sendIceCandidate(RTCIceCandidate candidate, String? streamId,
    String? sessionId, String apiKey) async {
  print('Sending ICE candidate: ${candidate.candidate}');

  final url = Uri.parse('https://api.d-id.com/talks/streams/$streamId/ice');
  final headers = {
    'Authorization': 'Basic ZGV2LndlbGxiZWluZy5hcHBAZ21haWwuY29t:5vMUfK_CBuT7qXqgvPqLy',
    'Content-Type': 'application/json',
  };
  final body = jsonEncode({
    'candidate': candidate.candidate,
    'sdpMid': candidate.sdpMid,
    'sdpMLineIndex': candidate.sdpMLineIndex,
    'session_id': sessionId,
  });

  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      print('ICE candidate sent successfully');
    } else {
      print(
          'Failed to send ICE candidate. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  } catch (e) {
    print('Exception occurred while sending ICE candidate: $e');
  }
}
