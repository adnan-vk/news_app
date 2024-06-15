//

import 'package:flutter/material.dart';
import 'package:newsapp_api/model/category_model.dart';
import 'package:newsapp_api/model/headline_model.dart';
import 'package:newsapp_api/service/news_serivice.dart';

class NewsProvider extends ChangeNotifier {
  final Service service = Service();

  Future<NewsChannelsHeadlinesModel> newsChannelHeadlinesApi(
      String channelName) async {
    try {
      return await service.newsChannelHeadlinesApi(channelName);
    } catch (e) {
      throw Exception('Error fetching news channel headlines');
    }
  }

  Future<CategoriesNewsModel> categoriesNewsApi(String category) async {
    try {
      return await service.categoriesNewsApi(category);
    } catch (e) {
      throw Exception('Error fetching category news');
    }
  }
}
