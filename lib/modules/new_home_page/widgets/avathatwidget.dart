import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wellbeings/utilities/size_config.dart';

class AvatarWidget extends StatefulWidget {
  final String name;
  final String imgUrl;
  final String? avatarVideo;

  const AvatarWidget({
    required this.name,
    required this.imgUrl,
    this.avatarVideo,
    super.key,
  });

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  VideoPlayerController? _videoController;

  @override
  void initState() {
    super.initState();
    if (widget.avatarVideo != null && widget.avatarVideo!.isNotEmpty) {
      _videoController = VideoPlayerController.network(widget.avatarVideo!)
        ..initialize().then((_) {
          setState(() {}); // Rebuild to show initialized video
        })
        ..setLooping(true)
        ..play(); // Start video playback automatically
    }
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: widget.avatarVideo != null && widget.avatarVideo!.isNotEmpty
          ? (_videoController != null && _videoController!.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _videoController!.value.aspectRatio,
                  child: VideoPlayer(_videoController!),
                )
              : const CircularProgressIndicator()) // Show a loading indicator until video is ready
          : widget.name == "William"
              ? Image.asset(
                  "assets/images/william.jpg", // Asset image for William
                  width: SizeConfig.sizeMultiplier * 40,
                  height: SizeConfig.sizeMultiplier * 40,
                  fit: BoxFit.cover,
                )
              : Image.network(
                  "https://myndboosters.com///${widget.imgUrl}", // Network image for others
                  width: SizeConfig.sizeMultiplier * 40,
                  height: SizeConfig.sizeMultiplier * 40,
                  fit: BoxFit.cover,
                ),
    );
  }
}
