

import 'package:flutter/foundation.dart';

class HomeGroupProvider with ChangeNotifier {
  int selectedIndex = 0;

  int get sIndex => selectedIndex;

  homeGroupProvider(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}