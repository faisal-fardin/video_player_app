import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_playe_app/models/video_player_models.dart';
import 'package:video_playe_app/pages/video_paly_screen.dart';
import 'package:video_playe_app/utlis/urls.dart';

import '../custom_widget/video_scroll.dart';
import '../services/network_caller.dart';
import '../services/network_response.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Videos'),
      ),
      body: ListView.builder(
        itemCount: _videoPlayerModels.results?.length ?? 0,
        itemBuilder: (context, index) {

          return VideoPlayDetails(
            results: _videoPlayerModels.results![index],
          );
        },
      ),
    );
  }
}
