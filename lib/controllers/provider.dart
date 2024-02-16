// Flutter imports:
import 'package:flutter/material.dart';

import 'package:inshortui/view/discovery/discovery.page.dart';

class FeedProvider extends ChangeNotifier {
  String? _appBarTitle;
  int _activeCategory = 1;

  String? get getAppBarTitle => _appBarTitle;

  final PageController _feedPageController = PageController();
  final PageController _screenController = PageController();
  final List<Widget> _baseScreen = [
    DiscoverScreen(),
  ];

  int get getActiveCategory => _activeCategory;

  PageController get getfeedPageController => _feedPageController;

  PageController get getScreenController => _screenController;

  ///
  void setAppBarTitle(String appBarTitle) {
    _appBarTitle = appBarTitle;
    notifyListeners();
  }

  void setActiveCategory(int activeCategory) {
    _activeCategory = activeCategory;
    notifyListeners();
  }
}
