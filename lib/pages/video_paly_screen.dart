import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_playe_app/custom_widget/action_section.dart';
import 'package:video_playe_app/custom_widget/header_section.dart';
import 'package:video_playe_app/models/video_player_models.dart';

import '../custom_widget/comment_section.dart';
import '../custom_widget/subscribe_section.dart';
import '../provider/apidata_provider.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({super.key});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {

  @override
  void didChangeDependencies() {
    Provider.of<ApiDataProvider>(context, listen: false).getRequestVideo();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ApiDataProvider>(
        builder: (context, provider, child) {
          return provider.hasDataLoaded
              ? ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        HeaderSection(results: provider.videoPlayerModels!.results![index]),
                        actionSection(),
                        SubscribeSection(provider, index),
                        commentSection(),
                      ],
                    );
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }

}
