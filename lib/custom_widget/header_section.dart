import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_playe_app/models/video_player_models.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({
    super.key,
    required this.results,
  });

  final Results results;

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  late VideoPlayerController _videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;

  @override
  void initState() {
    _videoPlayerController =
    VideoPlayerController.network('${widget.results.manifest}')
      ..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context,
        videoPlayerController: _videoPlayerController,
        customVideoPlayerSettings: const CustomVideoPlayerSettings(
            placeholderWidget: Center(
              child: CircularProgressIndicator(),
            )
        )
    );
    super.initState();
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CustomVideoPlayer(customVideoPlayerController: _customVideoPlayerController),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            title: SizedBox(
              width: 250,
              height: 30,
              child: Text(
                '${widget.results.title}',
                style: const TextStyle(
                  color: Color(0xFF1A202C),
                  fontSize: 12,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                children: [
                  Text(
                    '${widget.results.viewers}',
                    style: const TextStyle(
                      color: Color(0xFF718096),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    '${widget.results.createdAt}',
                    style: const TextStyle(
                      color: Color(0xFF718096),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
