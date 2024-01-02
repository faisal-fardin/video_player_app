import 'package:flutter/material.dart';

import '../custom_widget/custom_widget.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({super.key});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderSection(),
              Padding(
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
          ),
        ),
      ),
    );
  }
}


