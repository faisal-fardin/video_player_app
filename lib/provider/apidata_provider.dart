import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import '../models/video_player_models.dart';

class ApiDataProvider extends ChangeNotifier{

  VideoPlayerModels? videoPlayerModels;
  final String baseUrl = 'https://test-ximit.mahfil.net/api/trending-video/1?page=1';
  final String baseUrl2 = 'https://test-ximit.mahfil.net/api/trending-video/1?page=2';
  bool get hasDataLoaded => videoPlayerModels != null;



  Future<void> getRequest() async {
    final url = Uri.parse(baseUrl);
    try {
      final response = await get(url);
      final json = jsonDecode(response.body);
      log(response.statusCode.toString());
      log(response.body);
      if (response.statusCode == 200) {
        videoPlayerModels = VideoPlayerModels.fromJson(json);
        notifyListeners();
      }else {
        print(json['message']);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getRequestVideo() async {
    final url = Uri.parse(baseUrl2);
    try {
      final response = await get(url);
      final json = jsonDecode(response.body);
      log(response.statusCode.toString());
      log(response.body);
      if (response.statusCode == 200) {
        videoPlayerModels = VideoPlayerModels.fromJson(json);
        notifyListeners();
      }else {
        print(json['message']);
      }
    } catch (e) {
      log(e.toString());
    }
  }




}