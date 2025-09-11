import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/models/newservicemodel.dart';

class ConnectionResult {
  final RTCPeerConnection peerConnection;
  final RTCSessionDescription sessionClientAnswer;
  final  Queue<RTCIceCandidate> iceCandidates;
  final List<MediaStream> streams;
  ConnectionResult(this.peerConnection, this.sessionClientAnswer,
      this.iceCandidates, this.streams);
}

Future<ConnectionResult> createConnection(
    Offer? offer, List<IceServer>? iceServers) async {
  RTCPeerConnection? peerConnection;
  try {
   // List<RTCIceCandidate> iceCandidates = [];
   Queue<RTCIceCandidate> iceCandidates = Queue<RTCIceCandidate>();
    List<MediaStream> streams = [];
    final List<Map<String, dynamic>> data = iceServers!.map((e) {
      return {
        'urls': e.urls,
        if (e.username != null) 'username': e.username,
        if (e.credential != null) 'credential': e.credential,
      };
    }).toList();
    print(data);
    final Map<String, dynamic> configuration = {
      'iceServers': data,
    };

    peerConnection = await createPeerConnection(configuration);

    // Add event listeners
    peerConnection.onIceGatheringState = (event) {
      print(
          'Ice gathering state changed: ${peerConnection!.iceGatheringState}');
    };

    peerConnection.onIceCandidate = (event) async {
      if (event.candidate != null) {
        await Future.microtask(() => iceCandidates.add(event));
        print('New ICE candidate: ${event.candidate}');
        // iceCandidates.add(event);
      }
    };

    peerConnection.onIceConnectionState = (event) {
      print(
          'ICE connection state changed: ${peerConnection!.iceConnectionState}');
    };

    peerConnection.onConnectionState = (event) {
      print('Connection state changed: ${peerConnection!.connectionState}');
    };

    peerConnection.onSignalingState = (event) {
      print('Signaling state changed: ${peerConnection!.signalingState}');
    };

    peerConnection.onAddStream = (MediaStream stream) {
      print('Add stream: ${stream.id}');
      print('Video tracks: ${stream.getVideoTracks().length}');
      print('Audio tracks: ${stream.getAudioTracks().length}');

      // Handle added stream
    };

    peerConnection.onTrack = (RTCTrackEvent event) async {
      print('Track added: ${event.track.kind}');
      if (event.track.kind == "video") {
        print('Video track received. Enabled: ${event.track.enabled}');
        print('Video track settings: ${event.track.getSettings()}');
        event.track.onEnded = () => print('Video track ended');

        event.track.onMute = () => print('Video track muted');
        event.track.onUnMute = () => print('Video track unmuted');
        print('Track added: ${event.streams[0]}');
        await Future.microtask(() => streams.add(event.streams[0]));
      }

      // Handle added track
    };

    peerConnection.onRemoveStream = (MediaStream stream) {
      print('Remove stream: ${stream.id}');
      // Handle removed stream
    };

    await peerConnection
        .setRemoteDescription(RTCSessionDescription(offer!.sdp, offer.type));
    RTCSessionDescription sessionClientAnswer =
        await peerConnection.createAnswer();
    await peerConnection.setLocalDescription(sessionClientAnswer);

    return ConnectionResult(
        peerConnection, sessionClientAnswer, iceCandidates, streams);
  } catch (e) {
    print(e);
    rethrow;
  }
}

Future<Map<String, dynamic>> sendSDPToServer(
    RTCSessionDescription sessionClientAnswer,
    String? streamId,
    String? sessionId,
    String apiKey) async {
  final url = 'https://api.d-id.com/talks/streams/$streamId/sdp';

  final response = await http.post(
    Uri.parse(url),
    headers: {
      'Authorization': 'Basic ZGV2LndlbGxiZWluZy5hcHBAZ21haWwuY29t:5vMUfK_CBuT7qXqgvPqLy',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'answer': {
        'sdp': sessionClientAnswer.sdp,
        'type': sessionClientAnswer.type,
      },
      'session_id': sessionId,
    }),
  );

  if (response.statusCode == 200) {
    print('SDP sent successfully');
    print(response.body);
    final Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  } else {
    print('Failed to send SDP: ${response.body}');
    return {'error': 'Failed with status code:'};
  }
}
