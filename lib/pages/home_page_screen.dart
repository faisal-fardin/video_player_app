import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_playe_app/pages/video_paly_screen.dart';

import '../custom_widget/video_scroll.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending Videos'),
      ),
      body:  ListView.builder(
        itemCount:5 ,
        itemBuilder: (context, index) {
          return const VideoPlayDetails();
        },

      ),
    );
  }
}


