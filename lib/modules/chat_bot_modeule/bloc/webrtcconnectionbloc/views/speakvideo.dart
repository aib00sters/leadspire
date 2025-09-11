// import 'package:flutter/material.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/webrtcspeak_bloc.dart';

// class WebRTCVideoPlayer extends StatefulWidget {
//   const WebRTCVideoPlayer({super.key});

//   @override
//   _WebRTCVideoPlayerState createState() => _WebRTCVideoPlayerState();
// }

// class _WebRTCVideoPlayerState extends State<WebRTCVideoPlayer> {
//   final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();

//   @override
//   void initState() {
//     super.initState();
//     _initializeWebRTC();
//   }

//   final bool _isVideoInitialized = false;
//   Future<void> _initializeWebRTC() async {
//     await _remoteRenderer.initialize();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("videoplayer"),
//       ),
//       body: BlocBuilder<WebrtcspeakBloc, WebrtcspeakState>(
//         builder: (context, state) {
//           return state.when(sucessnewStream: (peerConnection) {
//             _remoteRenderer.srcObject = peerConnection[0];

//             // peerConnection.onAddStream = (MediaStream stream) {
//             //   print("Stream added: ${stream.id}");
//             //   print("Video tracks: ${stream.getVideoTracks().length}");
//             //   print("Audio tracks: ${stream.getAudioTracks().length}");
//             // };
//             // peerConnection.onAddStream = (MediaStream stream) {
//             //   if (stream.getVideoTracks().isNotEmpty) {
//             //     print('Video tracks: ${stream.getVideoTracks().length}');
//             //     setState(() {
//             //       _remoteRenderer.srcObject = stream;
//             //     });
//             //   } else {
//             //     print('Received stream has no video tracks');
//             //   }

//             //   // _remoteRenderer.srcObject = stream;
//             // };
//             return SizedBox(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height,
//                 child: RTCVideoView(
//                     objectFit:
//                         RTCVideoViewObjectFit.RTCVideoViewObjectFitContain,
//                     mirror: false,
//                     _remoteRenderer));
//           }, initial: () {
//             return const Center(
//               child: Text("inital"),
//             );
//           });
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _remoteRenderer.dispose();
//     super.dispose();
//   }
// }
