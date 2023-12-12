import 'package:flutter/material.dart';
import 'package:news_api/helpers/api.dart';
import 'package:news_api/models/topNewsModel.dart';
import 'package:news_api/utils/const.dart';

class NewsProvider with ChangeNotifier {
  bool isLoading = true;
  TopNewsModel? resNews;
  String url = baseUrl;

  Future<void> getTopNews() async {
    try {
      final res = await api('$baseUrl/top-headlines?country=us&apiKey=$apikey');

      if (res.statusCode == 200) {
        // Gunakan operator penugasan =
        resNews = TopNewsModel.fromJson(res.data);
      } else {
        resNews = TopNewsModel();
      }
    } catch (error) {
      print('Error fetching top news: $error');
      resNews = TopNewsModel();
    }

    isLoading = false;
    notifyListeners();
  }
}
