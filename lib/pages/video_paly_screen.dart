import 'package:flutter/material.dart';
import '../custom_widget/action_section.dart';
import '../custom_widget/comment_section.dart';
import '../custom_widget/header_section.dart';
import '../custom_widget/subscribe_section.dart';
import '../models/video_player_models.dart';
import '../services/network_caller.dart';
import '../services/network_response.dart';
import '../utlis/urls.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({super.key});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  VideoPlayerModels _videoPlayerModels = VideoPlayerModels();
  bool _getNewTaskInProgress = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getVideoDetails();
    });
  }

  Future<void> getVideoDetails() async {
    _getNewTaskInProgress = true;
    if (mounted) {
      setState(() {});
    }
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.baseUrl);

    if (response.isSuccess) {
      _videoPlayerModels = VideoPlayerModels.fromJson(response.body!);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Get Video Details')));
      }
    }
    _getNewTaskInProgress = false;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          Column(
            children: [
              HeaderSection(
                results: _videoPlayerModels.results![index],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    ActionSection(),
                    SizedBox(
                      height: 10,
                    ),
                    SubscribeSection(),
                    Divider(),
                    CommentSection(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
